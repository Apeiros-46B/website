const EDGE_CACHE_CONTROL = "public, max-age=315360000";
const IMMUTABLE_CACHE_CONTROL = "public, max-age=31536000, immutable";
const NOT_FOUND_CACHE_CONTROL = "public, max-age=60";
const R2_MAX_KEY_BYTES = 1024;

function getKey(url: URL): string | null {
	let path: string;

	try {
		path = decodeURIComponent(url.pathname);
	} catch {
		return null;
	}

	if (path === "/" || /[\u0000-\u001f\u007f]/.test(path)) {
		return null;
	}

	const key = path.slice(1);
	const canonicalPath = `/${key.split("/").map(encodeURIComponent).join("/")}`;

	if (
		url.pathname !== canonicalPath ||
		new TextEncoder().encode(key).byteLength > R2_MAX_KEY_BYTES
	) {
		return null;
	}

	return key;
}

function notFound(): Response {
	return new Response("Not Found", {
		status: 404,
		headers: {
			"Cache-Control": NOT_FOUND_CACHE_CONTROL,
			"Cloudflare-CDN-Cache-Control": NOT_FOUND_CACHE_CONTROL,
		},
	});
}

export default {
	async fetch(request, env): Promise<Response> {
		if (request.method !== "GET" && request.method !== "HEAD") {
			return new Response("Method Not Allowed", {
				status: 405,
				headers: { Allow: "GET, HEAD", "Cache-Control": "no-store" },
			});
		}

		const url = new URL(request.url);
		if (url.search) {
			return new Response("Query parameters are not allowed", {
				status: 400,
				headers: { "Cache-Control": "no-store" },
			});
		}

		const key = getKey(url);
		if (key === null) {
			return notFound();
		}

		let obj: R2Object | R2ObjectBody | null;
		let body: R2ObjectBody["body"] | null = null;

		if (request.method === "HEAD") {
			obj = await env.WEBSITE.head(key);
		} else {
			const objectBody = await env.WEBSITE.get(key);
			obj = objectBody;
			body = objectBody?.body ?? null;
		}

		if (obj === null) {
			return notFound();
		}

		const hdrs = new Headers();
		obj.writeHttpMetadata(hdrs);
		hdrs.set("Cache-Control", IMMUTABLE_CACHE_CONTROL);
		hdrs.set("Cloudflare-CDN-Cache-Control", EDGE_CACHE_CONTROL);
		hdrs.set("Content-Length", obj.size.toString());
		if (!hdrs.has("Content-Type")) {
			hdrs.set("Content-Type", "application/octet-stream");
		}
		hdrs.set("ETag", obj.httpEtag);
		hdrs.set("X-Content-Type-Options", "nosniff");

		return new Response(body, { headers: hdrs });
	},
} satisfies ExportedHandler<Env>;
