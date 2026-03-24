return {
  {{"keyword.import", "use"}, {"", " "}, {"module", "std"}, {"punctuation.delimiter", "::"}, {"punctuation.bracket", "{"}, {"", "\
"}},
  {{"", "    "}, {"module", "any"}, {"punctuation.delimiter", "::"}, {"variable", "type_name"}, {"punctuation.delimiter", ","}, {"", "\
"}},
  {{"", "    "}, {"module", "cell"}, {"punctuation.delimiter", "::"}, {"type", "Cell"}, {"punctuation.delimiter", ","}, {"", "\
"}},
  {{"", "    "}, {"module", "sync"}, {"punctuation.delimiter", "::"}, {"punctuation.bracket", "{"}, {"type", "Arc"}, {"punctuation.delimiter", ","}, {"", " "}, {"type", "Condvar"}, {"punctuation.delimiter", ","}, {"", " "}, {"type", "Mutex"}, {"punctuation.delimiter", ","}, {"", " "}, {"module", "atomic"}, {"punctuation.delimiter", "::"}, {"punctuation.bracket", "{"}, {"type", "AtomicU8"}, {"punctuation.delimiter", ","}, {"", " "}, {"type", "Ordering"}, {"punctuation.bracket", "}}"}, {"punctuation.delimiter", ","}, {"", "\
"}},
  {{"", "    "}, {"module", "thread"}, {"punctuation.delimiter", "::"}, {"punctuation.bracket", "{"}, {"module", "self"}, {"punctuation.delimiter", ","}, {"", " "}, {"type", "JoinHandle"}, {"punctuation.bracket", "}"}, {"punctuation.delimiter", ","}, {"", "\
"}},
  {{"", "    "}, {"module", "time"}, {"punctuation.delimiter", "::"}, {"punctuation.bracket", "{"}, {"type", "Duration"}, {"punctuation.delimiter", ","}, {"", " "}, {"type", "Instant"}, {"punctuation.bracket", "}"}, {"punctuation.delimiter", ","}, {"", "\
"}},
  {{"punctuation.bracket", "}"}, {"punctuation.delimiter", ";"}, {"", "\
"}},
  {{"", "\
"}},
  {{"keyword.import", "use"}, {"", " "}, {"module", "crate"}, {"punctuation.delimiter", "::"}, {"module", "sync"}, {"punctuation.delimiter", "::"}, {"module", "chan"}, {"punctuation.delimiter", "::"}, {"punctuation.bracket", "{"}, {"type", "Rx"}, {"punctuation.delimiter", ","}, {"", " "}, {"type", "RxBlocking"}, {"punctuation.bracket", "}"}, {"punctuation.delimiter", ";"}, {"", "\
"}},
  {{"", "\
"}},
  {{"keyword.modifier", "pub"}, {"", " "}, {"keyword.type", "trait"}, {"", " "}, {"type", "MessageHandler"}, {"punctuation.bracket", "<"}, {"type", "T"}, {"punctuation.bracket", ">"}, {"", " "}, {"punctuation.bracket", "{"}, {"", "\
"}},
  {{"", "    "}, {"keyword.function", "fn"}, {"", " "}, {"function", "handle"}, {"punctuation.bracket", "("}, {"operator", "&"}, {"keyword.modifier", "mut"}, {"", " "}, {"variable.builtin", "self"}, {"punctuation.delimiter", ","}, {"", " "}, {"variable.parameter", "msg"}, {"punctuation.delimiter", ":"}, {"", " "}, {"type", "T"}, {"punctuation.bracket", ")"}, {"punctuation.delimiter", ";"}, {"", "\
"}},
  {{"punctuation.bracket", "}"}, {"", "\
"}},
  {{"", "\
"}},
  {{"keyword.modifier", "pub"}, {"", " "}, {"keyword.type", "trait"}, {"", " "}, {"type", "WorkerRx"}, {"punctuation.bracket", "<"}, {"type", "State"}, {"punctuation.bracket", ">"}, {"punctuation.delimiter", ":"}, {"", " "}, {"type", "Send"}, {"", " "}, {"operator", "+"}, {"", " "}, {"keyword.modifier", "'"}, {"attribute.builtin", "static"}, {"", " "}, {"punctuation.bracket", "{"}, {"", "\
"}},
  {{"", "    "}, {"keyword.type", "type"}, {"", " "}, {"type", "Msg"}, {"punctuation.delimiter", ":"}, {"", " "}, {"type", "Send"}, {"", " "}, {"operator", "+"}, {"", " "}, {"type", "Sync"}, {"", " "}, {"operator", "+"}, {"", " "}, {"keyword.modifier", "'"}, {"attribute.builtin", "static"}, {"punctuation.delimiter", ";"}, {"", "\
"}},
  {{"", "    "}, {"keyword.type", "type"}, {"", " "}, {"type", "PrimaryRx"}, {"punctuation.delimiter", ":"}, {"", " "}, {"type", "Rx"}, {"punctuation.bracket", "<"}, {"type", "Self"}, {"punctuation.delimiter", "::"}, {"constant", "Msg"}, {"punctuation.bracket", ">"}, {"punctuation.delimiter", ";"}, {"", "\
"}},
  {{"", "    "}, {"keyword.type", "type"}, {"", " "}, {"type", "PrimaryTx"}, {"punctuation.delimiter", ":"}, {"", " "}, {"type", "Send"}, {"", " "}, {"operator", "+"}, {"", " "}, {"keyword.modifier", "'"}, {"attribute.builtin", "static"}, {"punctuation.delimiter", ";"}, {"", "\
"}},
  {{"", "    "}, {"keyword.type", "type"}, {"", " "}, {"type", "TxBundle"}, {"punctuation.delimiter", ":"}, {"", " "}, {"type", "Send"}, {"", " "}, {"operator", "+"}, {"", " "}, {"keyword.modifier", "'"}, {"attribute.builtin", "static"}, {"punctuation.delimiter", ";"}, {"", " "}, {"comment", "// macro-generated TxBundle struct without primary"}, {"", "\
"}},
  {{"", "\
"}},
  {{"", "    "}, {"keyword.function", "fn"}, {"", " "}, {"function", "new"}, {"punctuation.bracket", "()"}, {"", " "}, {"punctuation.delimiter", "->"}, {"", " "}, {"punctuation.bracket", "("}, {"type", "Self"}, {"punctuation.delimiter", "::"}, {"constant", "PrimaryTx"}, {"punctuation.delimiter", ","}, {"", " "}, {"type", "Self"}, {"punctuation.delimiter", "::"}, {"constant", "TxBundle"}, {"punctuation.delimiter", ","}, {"", " "}, {"type", "Self"}, {"punctuation.bracket", ")"}, {"punctuation.delimiter", ";"}, {"", "\
"}},
  {{"", "\
"}},
  {{"", "    "}, {"comment", "// return the primary channel"}, {"", "\
"}},
  {{"", "    "}, {"keyword.function", "fn"}, {"", " "}, {"function", "primary"}, {"punctuation.bracket", "("}, {"operator", "&"}, {"keyword.modifier", "mut"}, {"", " "}, {"variable.builtin", "self"}, {"punctuation.bracket", ")"}, {"", " "}, {"punctuation.delimiter", "->"}, {"", " "}, {"operator", "&"}, {"keyword.modifier", "mut"}, {"", " "}, {"type", "Self"}, {"punctuation.delimiter", "::"}, {"constant", "PrimaryRx"}, {"punctuation.delimiter", ";"}, {"", "\
"}},
  {{"", "\
"}},
  {{"", "    "}, {"keyword.function", "fn"}, {"", " "}, {"function", "drain_primary"}, {"punctuation.bracket", "("}, {"operator", "&"}, {"keyword.modifier", "mut"}, {"", " "}, {"variable.builtin", "self"}, {"punctuation.delimiter", ","}, {"", " "}, {"variable.parameter", "state"}, {"punctuation.delimiter", ":"}, {"", " "}, {"operator", "&"}, {"keyword.modifier", "mut"}, {"", " "}, {"type", "State"}, {"punctuation.bracket", ")"}, {"", "\
"}},
  {{"", "    "}, {"keyword", "where"}, {"", " "}, {"type", "State"}, {"punctuation.delimiter", ":"}, {"", " "}, {"type", "MessageHandler"}, {"punctuation.bracket", "<"}, {"type", "Self"}, {"punctuation.delimiter", "::"}, {"constant", "Msg"}, {"punctuation.bracket", ">"}, {"punctuation.delimiter", ";"}, {"", "\
"}},
  {{"", "\
"}},
  {{"", "    "}, {"keyword.function", "fn"}, {"", " "}, {"function", "drain_aux"}, {"punctuation.bracket", "("}, {"operator", "&"}, {"keyword.modifier", "mut"}, {"", " "}, {"variable.builtin", "self"}, {"punctuation.delimiter", ","}, {"", " "}, {"variable.parameter", "state"}, {"punctuation.delimiter", ":"}, {"", " "}, {"operator", "&"}, {"keyword.modifier", "mut"}, {"", " "}, {"type", "State"}, {"punctuation.bracket", ")"}, {"punctuation.delimiter", ";"}, {"", "\
"}},
  {{"punctuation.bracket", "}"}, {"", "\
"}},
  {{"", "\
"}},
  {{"comment", "// {{{ worker control"}, {"", "\
"}},
  {{"keyword.modifier", "pub"}, {"", " "}, {"keyword.type", "struct"}, {"", " "}, {"type", "WorkerStatus"}, {"punctuation.delimiter", ";"}, {"", "\
"}},
  {{"", "\
"}},
  {{"keyword", "impl"}, {"", " "}, {"type", "WorkerStatus"}, {"", " "}, {"punctuation.bracket", "{"}, {"", "\
"}},
  {{"", "    "}, {"keyword.modifier", "pub"}, {"", " "}, {"keyword.modifier", "const"}, {"", " "}, {"constant", "DEAD"}, {"punctuation.delimiter", ":"}, {"", " "}, {"type.builtin", "u8"}, {"", " "}, {"operator", "="}, {"", " "}, {"number", "0"}, {"punctuation.delimiter", ";"}, {"", "\
"}},
  {{"", "    "}, {"keyword.modifier", "pub"}, {"", " "}, {"keyword.modifier", "const"}, {"", " "}, {"constant", "ALIVE"}, {"punctuation.delimiter", ":"}, {"", " "}, {"type.builtin", "u8"}, {"", " "}, {"operator", "="}, {"", " "}, {"number", "1"}, {"punctuation.delimiter", ";"}, {"", "\
"}},
  {{"", "    "}, {"keyword.modifier", "pub"}, {"", " "}, {"keyword.modifier", "const"}, {"", " "}, {"constant", "SUSPENDED"}, {"punctuation.delimiter", ":"}, {"", " "}, {"type.builtin", "u8"}, {"", " "}, {"operator", "="}, {"", " "}, {"number", "2"}, {"punctuation.delimiter", ";"}, {"", "\
"}},
  {{"punctuation.bracket", "}"}, {"", "\
"}},
  {{"", "\
"}},
  {{"keyword.modifier", "pub"}, {"", " "}, {"keyword.type", "struct"}, {"", " "}, {"type", "WorkerControl"}, {"punctuation.bracket", "<"}, {"type", "I"}, {"punctuation.bracket", ">"}, {"", " "}, {"punctuation.bracket", "{"}, {"", "\
"}},
  {{"", "    "}, {"variable.member", "status"}, {"punctuation.delimiter", ":"}, {"", " "}, {"type", "AtomicU8"}, {"punctuation.delimiter", ","}, {"", "\
"}},
  {{"", "    "}, {"variable.member", "init_payload"}, {"punctuation.delimiter", ":"}, {"", " "}, {"type", "Mutex"}, {"punctuation.bracket", "<"}, {"type", "Option"}, {"punctuation.bracket", "<"}, {"type", "I"}, {"punctuation.bracket", ">>"}, {"punctuation.delimiter", ","}, {"", "\
"}},
  {{"", "    "}, {"variable.member", "suspended_ack"}, {"punctuation.delimiter", ":"}, {"", " "}, {"type", "Condvar"}, {"punctuation.delimiter", ","}, {"", "\
"}},
  {{"", "    "}, {"variable.member", "suspended_flag"}, {"punctuation.delimiter", ":"}, {"", " "}, {"type", "Mutex"}, {"punctuation.bracket", "<"}, {"type.builtin", "bool"}, {"punctuation.bracket", ">"}, {"punctuation.delimiter", ","}, {"", "\
"}},
  {{"", "    "}, {"comment", "// TODO: fix potential edge case where WorkerHandle's unpark() call unparks the"}, {"", "\
"}},
  {{"", "    "}, {"comment", "// drain_deadline instead of the suspended park, causing the worker to deadlock"}, {"", "\
"}},
  {{"punctuation.bracket", "}"}, {"", "\
"}},
  {{"", "\
"}},
  {{"keyword", "impl"}, {"punctuation.bracket", "<"}, {"type", "I"}, {"punctuation.bracket", ">"}, {"", " "}, {"type", "WorkerControl"}, {"punctuation.bracket", "<"}, {"type", "I"}, {"punctuation.bracket", ">"}, {"", " "}, {"punctuation.bracket", "{"}, {"", "\
"}},
  {{"", "    "}, {"comment", "// called by control thread"}, {"", "\
"}},
  {{"", "    "}, {"keyword.function", "fn"}, {"", " "}, {"function", "resume"}, {"punctuation.bracket", "("}, {"operator", "&"}, {"variable.builtin", "self"}, {"punctuation.delimiter", ","}, {"", " "}, {"variable.parameter", "init"}, {"punctuation.delimiter", ":"}, {"", " "}, {"type", "I"}, {"punctuation.bracket", ")"}, {"", " "}, {"punctuation.bracket", "{"}, {"", "\
"}},
  {{"", "        "}, {"comment", "// reset ack flag before transitioning to ALIVE"}, {"", "\
"}},
  {{"", "        "}, {"operator", "*"}, {"variable.builtin", "self"}, {"punctuation.delimiter", "."}, {"variable.member", "suspended_flag"}, {"punctuation.delimiter", "."}, {"function.call", "lock"}, {"punctuation.bracket", "()"}, {"punctuation.delimiter", "."}, {"function.call", "unwrap"}, {"punctuation.bracket", "()"}, {"", " "}, {"operator", "="}, {"", " "}, {"boolean", "false"}, {"punctuation.delimiter", ";"}, {"", "\
"}},
  {{"", "\
"}},
  {{"", "        "}, {"comment", "// hold lock across ops so worker can't get ALIVE with no payload"}, {"", "\
"}},
  {{"", "        "}, {"keyword", "let"}, {"", " "}, {"keyword.modifier", "mut"}, {"", " "}, {"variable", "payload"}, {"", " "}, {"operator", "="}, {"", " "}, {"variable.builtin", "self"}, {"punctuation.delimiter", "."}, {"variable.member", "init_payload"}, {"punctuation.delimiter", "."}, {"function.call", "lock"}, {"punctuation.bracket", "()"}, {"punctuation.delimiter", "."}, {"function.call", "unwrap"}, {"punctuation.bracket", "()"}, {"punctuation.delimiter", ";"}, {"", "\
"}},
  {{"", "        "}, {"operator", "*"}, {"variable", "payload"}, {"", " "}, {"operator", "="}, {"", " "}, {"constant.builtin", "Some"}, {"punctuation.bracket", "("}, {"variable", "init"}, {"punctuation.bracket", ")"}, {"punctuation.delimiter", ";"}, {"", "\
"}},
  {{"", "        "}, {"variable.builtin", "self"}, {"punctuation.delimiter", "."}, {"variable.member", "status"}, {"punctuation.delimiter", "."}, {"function.call", "store"}, {"punctuation.bracket", "("}, {"type", "WorkerStatus"}, {"punctuation.delimiter", "::"}, {"constant", "ALIVE"}, {"punctuation.delimiter", ","}, {"", " "}, {"type", "Ordering"}, {"punctuation.delimiter", "::"}, {"constant", "Release"}, {"punctuation.bracket", ")"}, {"punctuation.delimiter", ";"}, {"", "\
"}},
  {{"", "    "}, {"punctuation.bracket", "}"}, {"", "\
"}},
  {{"", "\
"}},
  {{"", "    "}, {"comment", "// called by control thread"}, {"", "\
"}},
  {{"", "    "}, {"keyword.function", "fn"}, {"", " "}, {"function", "wait_until_suspend_done"}, {"punctuation.bracket", "("}, {"operator", "&"}, {"variable.builtin", "self"}, {"punctuation.bracket", ")"}, {"", " "}, {"punctuation.bracket", "{"}, {"", "\
"}},
  {{"", "        "}, {"keyword", "let"}, {"", " "}, {"variable", "flag"}, {"", " "}, {"operator", "="}, {"", " "}, {"variable.builtin", "self"}, {"punctuation.delimiter", "."}, {"variable.member", "suspended_flag"}, {"punctuation.delimiter", "."}, {"function.call", "lock"}, {"punctuation.bracket", "()"}, {"punctuation.delimiter", "."}, {"function.call", "unwrap"}, {"punctuation.bracket", "()"}, {"punctuation.delimiter", ";"}, {"", "\
"}},
  {{"", "        "}, {"function.call", "drop"}, {"punctuation.bracket", "("}, {"variable.builtin", "self"}, {"punctuation.delimiter", "."}, {"variable.member", "suspended_ack"}, {"punctuation.delimiter", "."}, {"function.call", "wait_while"}, {"punctuation.bracket", "("}, {"variable", "flag"}, {"punctuation.delimiter", ","}, {"", " "}, {"punctuation.bracket", "|"}, {"variable.parameter", "f"}, {"punctuation.bracket", "|"}, {"", " "}, {"operator", "!*"}, {"variable", "f"}, {"punctuation.bracket", ")"}, {"punctuation.delimiter", "."}, {"function.call", "unwrap"}, {"punctuation.bracket", "())"}, {"punctuation.delimiter", ";"}, {"", "\
"}},
  {{"", "    "}, {"punctuation.bracket", "}"}, {"", "\
"}},
  {{"", "\
"}},
  {{"", "    "}, {"comment", "// called by worker thread"}, {"", "\
"}},
  {{"", "    "}, {"keyword.function", "fn"}, {"", " "}, {"function", "notify_suspend"}, {"punctuation.bracket", "("}, {"operator", "&"}, {"variable.builtin", "self"}, {"punctuation.bracket", ")"}, {"", " "}, {"punctuation.bracket", "{"}, {"", "\
"}},
  {{"", "        "}, {"keyword", "let"}, {"", " "}, {"keyword.modifier", "mut"}, {"", " "}, {"variable", "flag"}, {"", " "}, {"operator", "="}, {"", " "}, {"variable.builtin", "self"}, {"punctuation.delimiter", "."}, {"variable.member", "suspended_flag"}, {"punctuation.delimiter", "."}, {"function.call", "lock"}, {"punctuation.bracket", "()"}, {"punctuation.delimiter", "."}, {"function.call", "unwrap"}, {"punctuation.bracket", "()"}, {"punctuation.delimiter", ";"}, {"", "\
"}},
  {{"", "        "}, {"operator", "*"}, {"variable", "flag"}, {"", " "}, {"operator", "="}, {"", " "}, {"boolean", "true"}, {"punctuation.delimiter", ";"}, {"", "\
"}},
  {{"", "        "}, {"variable.builtin", "self"}, {"punctuation.delimiter", "."}, {"variable.member", "suspended_ack"}, {"punctuation.delimiter", "."}, {"function.call", "notify_all"}, {"punctuation.bracket", "()"}, {"punctuation.delimiter", ";"}, {"", "\
"}},
  {{"", "    "}, {"punctuation.bracket", "}"}, {"", "\
"}},
  {{"punctuation.bracket", "}"}, {"", "\
"}},
  {{"comment", "// }}}"}, {"", "\
"}},
  {{"", "\
"}},
  {{"keyword.modifier", "pub"}, {"", " "}, {"keyword.type", "trait"}, {"", " "}, {"type", "Worker"}, {"punctuation.delimiter", ":"}, {"", " "}, {"type", "Sized"}, {"", " "}, {"operator", "+"}, {"", " "}, {"type", "Default"}, {"", " "}, {"punctuation.bracket", "{"}, {"", "\
"}},
  {{"", "    "}, {"keyword.type", "type"}, {"", " "}, {"type", "Init"}, {"punctuation.delimiter", ":"}, {"", " "}, {"type", "Send"}, {"", " "}, {"operator", "+"}, {"", " "}, {"keyword.modifier", "'"}, {"attribute.builtin", "static"}, {"punctuation.delimiter", ";"}, {"", "\
"}},
  {{"", "\
"}},
  {{"", "    "}, {"comment", "// internal state created on resume and dropped on suspend. Worker owns and"}, {"", "\
"}},
  {{"", "    "}, {"comment", "// maintains Option<State>, the implementor only ever touches the raw State"}, {"", "\
"}},
  {{"", "    "}, {"keyword.type", "type"}, {"", " "}, {"type", "State"}, {"punctuation.delimiter", ":"}, {"", " "}, {"type", "Send"}, {"", " "}, {"operator", "+"}, {"", " "}, {"keyword.modifier", "'"}, {"attribute.builtin", "static"}, {"", " "}, {"operator", "+"}, {"", " "}, {"type", "MessageHandler"}, {"punctuation.bracket", "<<"}, {"type", "Self"}, {"punctuation.delimiter", "::"}, {"constant", "Channels"}, {"", " "}, {"keyword.operator", "as"}, {"", " "}, {"type", "WorkerRx"}, {"punctuation.bracket", "<"}, {"type", "Self"}, {"punctuation.delimiter", "::"}, {"constant", "State"}, {"punctuation.bracket", ">>"}, {"punctuation.delimiter", "::"}, {"type", "Msg"}, {"punctuation.bracket", ">"}, {"punctuation.delimiter", ";"}, {"", "\
"}},
  {{"", "\
"}},
  {{"", "    "}, {"keyword.type", "type"}, {"", " "}, {"type", "Channels"}, {"punctuation.delimiter", ":"}, {"", " "}, {"type", "WorkerRx"}, {"punctuation.bracket", "<"}, {"type", "Self"}, {"punctuation.delimiter", "::"}, {"constant", "State"}, {"punctuation.bracket", ">"}, {"punctuation.delimiter", ";"}, {"", "\
"}},
  {{"", "\
"}},
  {{"", "    "}, {"keyword.function", "fn"}, {"", " "}, {"function", "on_resume"}, {"punctuation.bracket", "("}, {"operator", "&"}, {"variable.builtin", "self"}, {"punctuation.delimiter", ","}, {"", " "}, {"variable.parameter", "init"}, {"punctuation.delimiter", ":"}, {"", " "}, {"type", "Self"}, {"punctuation.delimiter", "::"}, {"constant", "Init"}, {"punctuation.bracket", ")"}, {"", " "}, {"punctuation.delimiter", "->"}, {"", " "}, {"module", "anyhow"}, {"punctuation.delimiter", "::"}, {"type", "Result"}, {"punctuation.bracket", "<"}, {"type", "Self"}, {"punctuation.delimiter", "::"}, {"constant", "State"}, {"punctuation.bracket", ">"}, {"punctuation.delimiter", ";"}, {"", "\
"}},
  {{"", "\
"}},
  {{"", "    "}, {"comment", "// do something with the state, default is drop"}, {"", "\
"}},
  {{"", "    "}, {"keyword.function", "fn"}, {"", " "}, {"function", "on_suspend"}, {"punctuation.bracket", "("}, {"variable.parameter", "_this"}, {"punctuation.delimiter", ":"}, {"", " "}, {"type", "Self"}, {"punctuation.delimiter", "::"}, {"constant", "State"}, {"punctuation.bracket", ")"}, {"", " "}, {"punctuation.bracket", "{}"}, {"", "\
"}},
  {{"", "\
"}},
  {{"", "    "}, {"keyword.function", "fn"}, {"", " "}, {"function", "on_tick"}, {"punctuation.bracket", "("}, {"", "\
"}},
  {{"", "        "}, {"variable.parameter", "this"}, {"punctuation.delimiter", ":"}, {"", " "}, {"operator", "&"}, {"keyword.modifier", "mut"}, {"", " "}, {"type", "Self"}, {"punctuation.delimiter", "::"}, {"constant", "State"}, {"punctuation.delimiter", ","}, {"", "\
"}},
  {{"", "        "}, {"variable.parameter", "since_wake"}, {"punctuation.delimiter", ":"}, {"", " "}, {"type", "Duration"}, {"punctuation.delimiter", ","}, {"", "\
"}},
  {{"", "        "}, {"variable.parameter", "since_tick"}, {"punctuation.delimiter", ":"}, {"", " "}, {"type", "Duration"}, {"punctuation.delimiter", ","}, {"", "\
"}},
  {{"", "        "}, {"variable.parameter", "tick"}, {"punctuation.delimiter", ":"}, {"", " "}, {"type.builtin", "usize"}, {"punctuation.delimiter", ","}, {"", "\
"}},
  {{"", "    "}, {"punctuation.bracket", ")"}, {"", " "}, {"punctuation.delimiter", "->"}, {"", " "}, {"module", "anyhow"}, {"punctuation.delimiter", "::"}, {"type", "Result"}, {"punctuation.bracket", "<()>"}, {"punctuation.delimiter", ";"}, {"", "\
"}},
  {{"", "\
"}},
  {{"", "    "}, {"keyword.function", "fn"}, {"", " "}, {"function", "run"}, {"punctuation.bracket", "("}, {"variable.builtin", "self"}, {"punctuation.delimiter", ","}, {"", " "}, {"variable.parameter", "ctrl"}, {"punctuation.delimiter", ":"}, {"", " "}, {"type", "Arc"}, {"punctuation.bracket", "<"}, {"type", "WorkerControl"}, {"punctuation.bracket", "<"}, {"type", "Self"}, {"punctuation.delimiter", "::"}, {"constant", "Init"}, {"punctuation.bracket", ">>"}, {"punctuation.delimiter", ","}, {"", " "}, {"variable.parameter", "rx"}, {"punctuation.delimiter", ":"}, {"", " "}, {"type", "Self"}, {"punctuation.delimiter", "::"}, {"constant", "Channels"}, {"punctuation.bracket", ")"}, {"", " "}, {"punctuation.bracket", "{"}, {"", "\
"}},
  {{"", "        "}, {"variable.builtin", "self"}, {"punctuation.delimiter", "."}, {"function.call", "run_free"}, {"punctuation.bracket", "("}, {"variable", "ctrl"}, {"punctuation.delimiter", ","}, {"", " "}, {"variable", "rx"}, {"punctuation.bracket", ")"}, {"punctuation.delimiter", ";"}, {"", "\
"}},
  {{"", "    "}, {"punctuation.bracket", "}"}, {"", "\
"}},
  {{"punctuation.bracket", "}"}, {"", "\
"}},
  {{"", "\
"}},
  {{"comment", "// {{{ sealed helper trait for implementing Workers"}, {"", "\
"}},
  {{"keyword.import", "mod"}, {"", " "}, {"module", "seal"}, {"", " "}, {"punctuation.bracket", "{"}, {"", "\
"}},
  {{"", "    "}, {"keyword.modifier", "pub"}, {"", " "}, {"keyword.type", "trait"}, {"", " "}, {"type", "Sealed"}, {"", " "}, {"punctuation.bracket", "{}"}, {"", "\
"}},
  {{"", "    "}, {"keyword", "impl"}, {"punctuation.bracket", "<"}, {"type", "T"}, {"punctuation.delimiter", ":"}, {"", " "}, {"module", "super"}, {"punctuation.delimiter", "::"}, {"type", "Worker"}, {"punctuation.bracket", ">"}, {"", " "}, {"type", "Sealed"}, {"", " "}, {"keyword", "for"}, {"", " "}, {"type", "T"}, {"", " "}, {"punctuation.bracket", "{}"}, {"", "\
"}},
  {{"punctuation.bracket", "}"}, {"", "\
"}},
  {{"", "\
"}},
  {{"keyword.modifier", "pub"}, {"", " "}, {"keyword.type", "trait"}, {"", " "}, {"type", "WorkerExt"}, {"punctuation.delimiter", ":"}, {"", " "}, {"type", "Worker"}, {"", " "}, {"operator", "+"}, {"", " "}, {"module", "seal"}, {"punctuation.delimiter", "::"}, {"type", "Sealed"}, {"", " "}, {"punctuation.bracket", "{"}, {"", "\
"}},
  {{"", "    "}, {"comment.documentation", "//"}, {"comment", "/"}, {"comment.documentation", " poll as quickly as possible\
"}},
  {{"", "    "}, {"keyword.function", "fn"}, {"", " "}, {"function", "run_free"}, {"punctuation.bracket", "("}, {"", "\
"}},
  {{"", "        "}, {"variable.builtin", "self"}, {"punctuation.delimiter", ","}, {"", "\
"}},
  {{"", "        "}, {"variable.parameter", "ctrl"}, {"punctuation.delimiter", ":"}, {"", " "}, {"type", "Arc"}, {"punctuation.bracket", "<"}, {"type", "WorkerControl"}, {"punctuation.bracket", "<"}, {"type", "Self"}, {"punctuation.delimiter", "::"}, {"constant", "Init"}, {"punctuation.bracket", ">>"}, {"punctuation.delimiter", ","}, {"", "\
"}},
  {{"", "        "}, {"variable.parameter", "rx"}, {"punctuation.delimiter", ":"}, {"", " "}, {"type", "Self"}, {"punctuation.delimiter", "::"}, {"constant", "Channels"}, {"punctuation.delimiter", ","}, {"", "\
"}},
  {{"", "    "}, {"punctuation.bracket", ")"}, {"punctuation.delimiter", ";"}, {"", "\
"}},
  {{"", "\
"}},
  {{"", "    "}, {"comment.documentation", "//"}, {"comment", "/"}, {"comment.documentation", " poll with a fixed tickrate and perform subtick event handling.\
"}},
  {{"", "    "}, {"comment.documentation", "//"}, {"comment", "/"}, {"comment.documentation", " only works with a blocking primary channel\
"}},
  {{"", "    "}, {"keyword.function", "fn"}, {"", " "}, {"function", "run_tickrate"}, {"punctuation.bracket", "("}, {"", "\
"}},
  {{"", "        "}, {"variable.builtin", "self"}, {"punctuation.delimiter", ","}, {"", "\
"}},
  {{"", "        "}, {"variable.parameter", "ctrl"}, {"punctuation.delimiter", ":"}, {"", " "}, {"type", "Arc"}, {"punctuation.bracket", "<"}, {"type", "WorkerControl"}, {"punctuation.bracket", "<"}, {"type", "Self"}, {"punctuation.delimiter", "::"}, {"constant", "Init"}, {"punctuation.bracket", ">>"}, {"punctuation.delimiter", ","}, {"", "\
"}},
  {{"", "        "}, {"variable.parameter", "rx"}, {"punctuation.delimiter", ":"}, {"", " "}, {"type", "Self"}, {"punctuation.delimiter", "::"}, {"constant", "Channels"}, {"punctuation.delimiter", ","}, {"", "\
"}},
  {{"", "        "}, {"variable.parameter", "tickrate_hz"}, {"punctuation.delimiter", ":"}, {"", " "}, {"type.builtin", "f64"}, {"punctuation.delimiter", ","}, {"", "\
"}},
  {{"", "    "}, {"punctuation.bracket", ")"}, {"", " "}, {"keyword", "where"}, {"", "\
"}},
  {{"", "        "}, {"punctuation.bracket", "<"}, {"type", "Self"}, {"punctuation.delimiter", "::"}, {"constant", "Channels"}, {"", " "}, {"keyword.operator", "as"}, {"", " "}, {"type", "WorkerRx"}, {"punctuation.bracket", "<"}, {"type", "Self"}, {"punctuation.delimiter", "::"}, {"constant", "State"}, {"punctuation.bracket", ">>"}, {"punctuation.delimiter", "::"}, {"type", "PrimaryRx"}, {"punctuation.delimiter", ":"}, {"", "\
"}},
  {{"", "            "}, {"type", "RxBlocking"}, {"punctuation.bracket", "<<"}, {"type", "Self"}, {"punctuation.delimiter", "::"}, {"constant", "Channels"}, {"", " "}, {"keyword.operator", "as"}, {"", " "}, {"type", "WorkerRx"}, {"punctuation.bracket", "<"}, {"type", "Self"}, {"punctuation.delimiter", "::"}, {"constant", "State"}, {"punctuation.bracket", ">>"}, {"punctuation.delimiter", "::"}, {"type", "Msg"}, {"punctuation.bracket", ">"}, {"punctuation.delimiter", ";"}, {"", "\
"}},
  {{"", "\
"}},
  {{"", "    "}, {"keyword.function", "fn"}, {"", " "}, {"function", "main_loop"}, {"punctuation.bracket", "("}, {"", "\
"}},
  {{"", "        "}, {"variable.builtin", "self"}, {"punctuation.delimiter", ","}, {"", "\
"}},
  {{"", "        "}, {"variable.parameter", "ctrl"}, {"punctuation.delimiter", ":"}, {"", " "}, {"type", "Arc"}, {"punctuation.bracket", "<"}, {"type", "WorkerControl"}, {"punctuation.bracket", "<"}, {"type", "Self"}, {"punctuation.delimiter", "::"}, {"constant", "Init"}, {"punctuation.bracket", ">>"}, {"punctuation.delimiter", ","}, {"", "\
"}},
  {{"", "        "}, {"variable.parameter", "rx"}, {"punctuation.delimiter", ":"}, {"", " "}, {"type", "Self"}, {"punctuation.delimiter", "::"}, {"constant", "Channels"}, {"punctuation.delimiter", ","}, {"", "\
"}},
  {{"", "        "}, {"variable.parameter", "pre_tick"}, {"punctuation.delimiter", ":"}, {"", " "}, {"keyword", "impl"}, {"", " "}, {"type", "FnMut"}, {"punctuation.bracket", "("}, {"operator", "&"}, {"keyword.modifier", "mut"}, {"", " "}, {"type", "Self"}, {"punctuation.delimiter", "::"}, {"constant", "Channels"}, {"punctuation.delimiter", ","}, {"", " "}, {"operator", "&"}, {"keyword.modifier", "mut"}, {"", " "}, {"type", "Self"}, {"punctuation.delimiter", "::"}, {"constant", "State"}, {"punctuation.bracket", ")"}, {"punctuation.delimiter", ","}, {"", "\
"}},
  {{"", "        "}, {"variable.parameter", "post_tick"}, {"punctuation.delimiter", ":"}, {"", " "}, {"keyword", "impl"}, {"", " "}, {"type", "FnMut"}, {"punctuation.bracket", "("}, {"operator", "&"}, {"keyword.modifier", "mut"}, {"", " "}, {"type", "Self"}, {"punctuation.delimiter", "::"}, {"constant", "State"}, {"punctuation.bracket", ")"}, {"punctuation.delimiter", ","}, {"", "\
"}},
  {{"", "    "}, {"punctuation.bracket", ")"}, {"punctuation.delimiter", ";"}, {"", "\
"}},
  {{"", "\
"}},
  {{"", "    "}, {"keyword.function", "fn"}, {"", " "}, {"function", "spawn"}, {"punctuation.bracket", "()"}, {"", " "}, {"punctuation.delimiter", "->"}, {"", " "}, {"type", "WorkerHandle"}, {"punctuation.bracket", "<"}, {"type", "Self"}, {"punctuation.bracket", ">"}, {"punctuation.delimiter", ";"}, {"", "\
"}},
  {{"punctuation.bracket", "}"}, {"", "\
"}},
  {{"", "\
"}},
  {{"keyword", "impl"}, {"punctuation.bracket", "<"}, {"type", "T"}, {"punctuation.delimiter", ":"}, {"", " "}, {"type", "Worker"}, {"punctuation.bracket", ">"}, {"", " "}, {"type", "WorkerExt"}, {"", " "}, {"keyword", "for"}, {"", " "}, {"type", "T"}, {"", " "}, {"punctuation.bracket", "{"}, {"", "\
"}},
  {{"", "    "}, {"keyword.function", "fn"}, {"", " "}, {"function", "run_free"}, {"punctuation.bracket", "("}, {"", "\
"}},
  {{"", "        "}, {"variable.builtin", "self"}, {"punctuation.delimiter", ","}, {"", "\
"}},
  {{"", "        "}, {"variable.parameter", "ctrl"}, {"punctuation.delimiter", ":"}, {"", " "}, {"type", "Arc"}, {"punctuation.bracket", "<"}, {"type", "WorkerControl"}, {"punctuation.bracket", "<"}, {"type", "Self"}, {"punctuation.delimiter", "::"}, {"constant", "Init"}, {"punctuation.bracket", ">>"}, {"punctuation.delimiter", ","}, {"", "\
"}},
  {{"", "        "}, {"variable.parameter", "rx"}, {"punctuation.delimiter", ":"}, {"", " "}, {"type", "Self"}, {"punctuation.delimiter", "::"}, {"constant", "Channels"}, {"punctuation.delimiter", ","}, {"", "\
"}},
  {{"", "    "}, {"punctuation.bracket", ")"}, {"", " "}, {"punctuation.bracket", "{"}, {"", "\
"}},
  {{"", "        "}, {"variable.builtin", "self"}, {"punctuation.delimiter", "."}, {"function.call", "main_loop"}, {"punctuation.bracket", "("}, {"variable", "ctrl"}, {"punctuation.delimiter", ","}, {"", " "}, {"variable", "rx"}, {"punctuation.delimiter", ","}, {"", "\
"}},
  {{"", "            "}, {"punctuation.bracket", "|"}, {"variable.parameter", "rx"}, {"punctuation.delimiter", ","}, {"", " "}, {"variable.parameter", "this"}, {"punctuation.bracket", "|"}, {"", " "}, {"variable", "rx"}, {"punctuation.delimiter", "."}, {"function.call", "drain_primary"}, {"punctuation.bracket", "("}, {"variable", "this"}, {"punctuation.bracket", ")"}, {"punctuation.delimiter", ","}, {"", "\
"}},
  {{"", "            "}, {"punctuation.bracket", "|"}, {"character.special", "_"}, {"punctuation.bracket", "|"}, {"", " "}, {"punctuation.bracket", "{}"}, {"punctuation.delimiter", ","}, {"", "\
"}},
  {{"", "        "}, {"punctuation.bracket", ")"}, {"punctuation.delimiter", ";"}, {"", "\
"}},
  {{"", "    "}, {"punctuation.bracket", "}"}, {"", "\
"}},
  {{"", "\
"}},
  {{"", "    "}, {"keyword.function", "fn"}, {"", " "}, {"function", "run_tickrate"}, {"punctuation.bracket", "("}, {"", "\
"}},
  {{"", "        "}, {"variable.builtin", "self"}, {"punctuation.delimiter", ","}, {"", "\
"}},
  {{"", "        "}, {"variable.parameter", "ctrl"}, {"punctuation.delimiter", ":"}, {"", " "}, {"type", "Arc"}, {"punctuation.bracket", "<"}, {"type", "WorkerControl"}, {"punctuation.bracket", "<"}, {"type", "Self"}, {"punctuation.delimiter", "::"}, {"constant", "Init"}, {"punctuation.bracket", ">>"}, {"punctuation.delimiter", ","}, {"", "\
"}},
  {{"", "        "}, {"keyword.modifier", "mut"}, {"", " "}, {"variable.parameter", "rx"}, {"punctuation.delimiter", ":"}, {"", " "}, {"type", "Self"}, {"punctuation.delimiter", "::"}, {"constant", "Channels"}, {"punctuation.delimiter", ","}, {"", "\
"}},
  {{"", "        "}, {"variable.parameter", "tickrate_hz"}, {"punctuation.delimiter", ":"}, {"", " "}, {"type.builtin", "f64"}, {"punctuation.delimiter", ","}, {"", "\
"}},
  {{"", "    "}, {"punctuation.bracket", ")"}, {"", " "}, {"keyword", "where"}, {"", "\
"}},
  {{"", "        "}, {"punctuation.bracket", "<"}, {"type", "Self"}, {"punctuation.delimiter", "::"}, {"constant", "Channels"}, {"", " "}, {"keyword.operator", "as"}, {"", " "}, {"type", "WorkerRx"}, {"punctuation.bracket", "<"}, {"type", "Self"}, {"punctuation.delimiter", "::"}, {"constant", "State"}, {"punctuation.bracket", ">>"}, {"punctuation.delimiter", "::"}, {"type", "PrimaryRx"}, {"punctuation.delimiter", ":"}, {"", "\
"}},
  {{"", "            "}, {"type", "RxBlocking"}, {"punctuation.bracket", "<<"}, {"type", "Self"}, {"punctuation.delimiter", "::"}, {"constant", "Channels"}, {"", " "}, {"keyword.operator", "as"}, {"", " "}, {"type", "WorkerRx"}, {"punctuation.bracket", "<"}, {"type", "Self"}, {"punctuation.delimiter", "::"}, {"constant", "State"}, {"punctuation.bracket", ">>"}, {"punctuation.delimiter", "::"}, {"type", "Msg"}, {"punctuation.bracket", ">"}, {"", "\
"}},
  {{"", "    "}, {"punctuation.bracket", "{"}, {"", "\
"}},
  {{"", "        "}, {"keyword", "let"}, {"", " "}, {"variable", "tick_dur"}, {"", " "}, {"operator", "="}, {"", " "}, {"type", "Duration"}, {"punctuation.delimiter", "::"}, {"function.call", "from_secs_f64"}, {"punctuation.bracket", "("}, {"number.float", "1.0"}, {"", " "}, {"operator", "/"}, {"", " "}, {"variable", "tickrate_hz"}, {"punctuation.bracket", ")"}, {"punctuation.delimiter", ";"}, {"", "\
"}},
  {{"", "        "}, {"keyword", "let"}, {"", " "}, {"variable", "next"}, {"", " "}, {"operator", "="}, {"", " "}, {"type", "Cell"}, {"punctuation.delimiter", "::"}, {"function.call", "new"}, {"punctuation.bracket", "("}, {"type", "Instant"}, {"punctuation.delimiter", "::"}, {"function.call", "now"}, {"punctuation.bracket", "()"}, {"", " "}, {"operator", "+"}, {"", " "}, {"variable", "tick_dur"}, {"punctuation.bracket", ")"}, {"punctuation.delimiter", ";"}, {"", "\
"}},
  {{"", "\
"}},
  {{"", "        "}, {"comment", "// register this thread so the producer can unpark it"}, {"", "\
"}},
  {{"", "        "}, {"variable", "rx"}, {"punctuation.delimiter", "."}, {"function.call", "primary"}, {"punctuation.bracket", "()"}, {"punctuation.delimiter", "."}, {"function.call", "use_current_thread"}, {"punctuation.bracket", "()"}, {"punctuation.delimiter", ";"}, {"", "\
"}},
  {{"", "\
"}},
  {{"", "        "}, {"variable.builtin", "self"}, {"punctuation.delimiter", "."}, {"function.call", "main_loop"}, {"punctuation.bracket", "("}, {"variable", "ctrl"}, {"punctuation.delimiter", ","}, {"", " "}, {"variable", "rx"}, {"punctuation.delimiter", ","}, {"", "\
"}},
  {{"", "            "}, {"punctuation.bracket", "|"}, {"variable.parameter", "rx"}, {"punctuation.delimiter", ","}, {"", " "}, {"variable.parameter", "this"}, {"punctuation.bracket", "|"}, {"", " "}, {"punctuation.bracket", "{"}, {"", "\
"}},
  {{"", "                "}, {"variable", "rx"}, {"punctuation.delimiter", "."}, {"function.call", "primary"}, {"punctuation.bracket", "()"}, {"punctuation.delimiter", "."}, {"function.call", "drain_deadline"}, {"punctuation.bracket", "("}, {"variable", "next"}, {"punctuation.delimiter", "."}, {"function.call", "get"}, {"punctuation.bracket", "()"}, {"punctuation.delimiter", ","}, {"", " "}, {"punctuation.bracket", "|"}, {"variable.parameter", "msg"}, {"punctuation.bracket", "|"}, {"", " "}, {"variable", "this"}, {"punctuation.delimiter", "."}, {"function.call", "handle"}, {"punctuation.bracket", "("}, {"variable", "msg"}, {"punctuation.bracket", "))"}, {"punctuation.delimiter", ";"}, {"", "\
"}},
  {{"", "            "}, {"punctuation.bracket", "}"}, {"punctuation.delimiter", ","}, {"", "\
"}},
  {{"", "            "}, {"punctuation.bracket", "|"}, {"character.special", "_"}, {"punctuation.bracket", "|"}, {"", " "}, {"punctuation.bracket", "{"}, {"", "\
"}},
  {{"", "                "}, {"comment", "// advance the deadline by integer multiples of tick time."}, {"", "\
"}},
  {{"", "                "}, {"comment", "// if tick() processing lags and misses ticks, skip them."}, {"", "\
"}},
  {{"", "                "}, {"comment", "// this also fast-forwards from the stale timestamp when"}, {"", "\
"}},
  {{"", "                "}, {"comment", "// we are suspended and then later resumed in the future"}, {"", "\
"}},
  {{"", "                "}, {"keyword", "let"}, {"", " "}, {"variable", "now"}, {"", " "}, {"operator", "="}, {"", " "}, {"type", "Instant"}, {"punctuation.delimiter", "::"}, {"function.call", "now"}, {"punctuation.bracket", "()"}, {"punctuation.delimiter", ";"}, {"", "\
"}},
  {{"", "                "}, {"keyword.repeat", "while"}, {"", " "}, {"variable", "next"}, {"punctuation.delimiter", "."}, {"function.call", "get"}, {"punctuation.bracket", "()"}, {"", " "}, {"operator", "<="}, {"", " "}, {"variable", "now"}, {"", " "}, {"punctuation.bracket", "{"}, {"", "\
"}},
  {{"", "                    "}, {"variable", "next"}, {"punctuation.delimiter", "."}, {"function.call", "update"}, {"punctuation.bracket", "(|"}, {"variable.parameter", "val"}, {"punctuation.bracket", "|"}, {"", " "}, {"variable", "val"}, {"", " "}, {"operator", "+"}, {"", " "}, {"variable", "tick_dur"}, {"punctuation.bracket", ")"}, {"punctuation.delimiter", ";"}, {"", "\
"}},
  {{"", "                "}, {"punctuation.bracket", "}"}, {"", "\
"}},
  {{"", "            "}, {"punctuation.bracket", "}"}, {"punctuation.delimiter", ","}, {"", "\
"}},
  {{"", "        "}, {"punctuation.bracket", ")"}, {"punctuation.delimiter", ";"}, {"", "\
"}},
  {{"", "    "}, {"punctuation.bracket", "}"}, {"", "\
"}},
  {{"", "\
"}},
  {{"", "    "}, {"comment", "// pre_tick should drain the primary queue, but not the auxiliary queues."}, {"", "\
"}},
  {{"", "    "}, {"comment", "// note that if you implement your own run() without using main_loop,"}, {"", "\
"}},
  {{"", "    "}, {"comment", "// neither the primary or auxiliary event queues will be automatically"}, {"", "\
"}},
  {{"", "    "}, {"comment", "// pumped! you must use methods on WorkerChannels to do it yourself"}, {"", "\
"}},
  {{"", "    "}, {"keyword.function", "fn"}, {"", " "}, {"function", "main_loop"}, {"punctuation.bracket", "("}, {"", "\
"}},
  {{"", "        "}, {"variable.builtin", "self"}, {"punctuation.delimiter", ","}, {"", "\
"}},
  {{"", "        "}, {"variable.parameter", "ctrl"}, {"punctuation.delimiter", ":"}, {"", " "}, {"type", "Arc"}, {"punctuation.bracket", "<"}, {"type", "WorkerControl"}, {"punctuation.bracket", "<"}, {"type", "Self"}, {"punctuation.delimiter", "::"}, {"constant", "Init"}, {"punctuation.bracket", ">>"}, {"punctuation.delimiter", ","}, {"", "\
"}},
  {{"", "        "}, {"keyword.modifier", "mut"}, {"", " "}, {"variable.parameter", "rx"}, {"punctuation.delimiter", ":"}, {"", " "}, {"type", "Self"}, {"punctuation.delimiter", "::"}, {"constant", "Channels"}, {"punctuation.delimiter", ","}, {"", "\
"}},
  {{"", "        "}, {"keyword.modifier", "mut"}, {"", " "}, {"variable.parameter", "pre_tick"}, {"punctuation.delimiter", ":"}, {"", " "}, {"keyword", "impl"}, {"", " "}, {"type", "FnMut"}, {"punctuation.bracket", "("}, {"operator", "&"}, {"keyword.modifier", "mut"}, {"", " "}, {"type", "Self"}, {"punctuation.delimiter", "::"}, {"constant", "Channels"}, {"punctuation.delimiter", ","}, {"", " "}, {"operator", "&"}, {"keyword.modifier", "mut"}, {"", " "}, {"type", "Self"}, {"punctuation.delimiter", "::"}, {"constant", "State"}, {"punctuation.bracket", ")"}, {"punctuation.delimiter", ","}, {"", "\
"}},
  {{"", "        "}, {"keyword.modifier", "mut"}, {"", " "}, {"variable.parameter", "post_tick"}, {"punctuation.delimiter", ":"}, {"", " "}, {"keyword", "impl"}, {"", " "}, {"type", "FnMut"}, {"punctuation.bracket", "("}, {"operator", "&"}, {"keyword.modifier", "mut"}, {"", " "}, {"type", "Self"}, {"punctuation.delimiter", "::"}, {"constant", "State"}, {"punctuation.bracket", ")"}, {"punctuation.delimiter", ","}, {"", "\
"}},
  {{"", "    "}, {"punctuation.bracket", ")"}, {"", " "}, {"punctuation.bracket", "{"}, {"", "\
"}},
  {{"", "        "}, {"keyword", "let"}, {"", " "}, {"keyword.modifier", "mut"}, {"", " "}, {"variable", "this"}, {"", " "}, {"operator", "="}, {"", " "}, {"constant.builtin", "None"}, {"punctuation.delimiter", ";"}, {"", "\
"}},
  {{"", "        "}, {"keyword", "let"}, {"", " "}, {"keyword.modifier", "mut"}, {"", " "}, {"variable", "start"}, {"", " "}, {"operator", "="}, {"", " "}, {"type", "Instant"}, {"punctuation.delimiter", "::"}, {"function.call", "now"}, {"punctuation.bracket", "()"}, {"punctuation.delimiter", ";"}, {"", "\
"}},
  {{"", "        "}, {"keyword", "let"}, {"", " "}, {"keyword.modifier", "mut"}, {"", " "}, {"variable", "prev"}, {"", " "}, {"operator", "="}, {"", " "}, {"variable", "start"}, {"punctuation.delimiter", ";"}, {"", "\
"}},
  {{"", "        "}, {"keyword", "let"}, {"", " "}, {"keyword.modifier", "mut"}, {"", " "}, {"variable", "tick"}, {"", " "}, {"operator", "="}, {"", " "}, {"number", "0usize"}, {"punctuation.delimiter", ";"}, {"", "\
"}},
  {{"", "\
"}},
  {{"", "        "}, {"keyword.repeat", "loop"}, {"", " "}, {"punctuation.bracket", "{"}, {"", "\
"}},
  {{"", "            "}, {"keyword.conditional", "match"}, {"", " "}, {"variable", "ctrl"}, {"punctuation.delimiter", "."}, {"variable.member", "status"}, {"punctuation.delimiter", "."}, {"function.call", "load"}, {"punctuation.bracket", "("}, {"type", "Ordering"}, {"punctuation.delimiter", "::"}, {"constant", "Acquire"}, {"punctuation.bracket", ")"}, {"", " "}, {"punctuation.bracket", "{"}, {"", "\
"}},
  {{"", "                "}, {"variable", "status"}, {"", " "}, {"operator", "@"}, {"", " "}, {"punctuation.bracket", "("}, {"type", "WorkerStatus"}, {"punctuation.delimiter", "::"}, {"constant", "DEAD"}, {"", " "}, {"operator", "|"}, {"", " "}, {"type", "WorkerStatus"}, {"punctuation.delimiter", "::"}, {"constant", "SUSPENDED"}, {"punctuation.bracket", ")"}, {"", " "}, {"punctuation.delimiter", "=>"}, {"", " "}, {"punctuation.bracket", "{"}, {"", "\
"}},
  {{"", "                    "}, {"keyword.conditional", "if"}, {"", " "}, {"keyword", "let"}, {"", " "}, {"constant.builtin", "Some"}, {"punctuation.bracket", "("}, {"variable", "o"}, {"punctuation.bracket", ")"}, {"", " "}, {"operator", "="}, {"", " "}, {"variable", "this"}, {"punctuation.delimiter", "."}, {"function.call", "take"}, {"punctuation.bracket", "()"}, {"", " "}, {"punctuation.bracket", "{"}, {"", "\
"}},
  {{"", "                        "}, {"type", "Self"}, {"punctuation.delimiter", "::"}, {"function.call", "on_suspend"}, {"punctuation.bracket", "("}, {"variable", "o"}, {"punctuation.bracket", ")"}, {"punctuation.delimiter", ";"}, {"", "\
"}},
  {{"", "                        "}, {"variable", "ctrl"}, {"punctuation.delimiter", "."}, {"function.call", "notify_suspend"}, {"punctuation.bracket", "()"}, {"punctuation.delimiter", ";"}, {"", "\
"}},
  {{"", "                    "}, {"punctuation.bracket", "}"}, {"", "\
"}},
  {{"", "                    "}, {"keyword.conditional", "if"}, {"", " "}, {"variable", "status"}, {"", " "}, {"operator", "=="}, {"", " "}, {"type", "WorkerStatus"}, {"punctuation.delimiter", "::"}, {"constant", "DEAD"}, {"", " "}, {"punctuation.bracket", "{"}, {"", "\
"}},
  {{"", "                        "}, {"keyword.return", "return"}, {"punctuation.delimiter", ";"}, {"", "\
"}},
  {{"", "                    "}, {"punctuation.bracket", "}"}, {"", "\
"}},
  {{"", "                "}, {"punctuation.bracket", "}"}, {"", "\
"}},
  {{"", "                "}, {"type", "WorkerStatus"}, {"punctuation.delimiter", "::"}, {"constant", "ALIVE"}, {"", " "}, {"keyword.conditional", "if"}, {"", " "}, {"variable", "this"}, {"punctuation.delimiter", "."}, {"function.call", "is_none"}, {"punctuation.bracket", "()"}, {"", " "}, {"punctuation.delimiter", "=>"}, {"", " "}, {"punctuation.bracket", "{"}, {"", "\
"}},
  {{"", "                    "}, {"keyword", "let"}, {"", " "}, {"keyword.modifier", "mut"}, {"", " "}, {"variable", "payload"}, {"", " "}, {"operator", "="}, {"", " "}, {"variable", "ctrl"}, {"punctuation.delimiter", "."}, {"variable.member", "init_payload"}, {"punctuation.delimiter", "."}, {"function.call", "lock"}, {"punctuation.bracket", "()"}, {"punctuation.delimiter", "."}, {"function.call", "unwrap"}, {"punctuation.bracket", "()"}, {"punctuation.delimiter", ";"}, {"", "\
"}},
  {{"", "                    "}, {"keyword.conditional", "if"}, {"", " "}, {"keyword", "let"}, {"", " "}, {"constant.builtin", "Some"}, {"punctuation.bracket", "("}, {"variable", "init"}, {"punctuation.bracket", ")"}, {"", " "}, {"operator", "="}, {"", " "}, {"variable", "payload"}, {"punctuation.delimiter", "."}, {"function.call", "take"}, {"punctuation.bracket", "()"}, {"", " "}, {"punctuation.bracket", "{"}, {"", "\
"}},
  {{"", "                        "}, {"keyword.conditional", "match"}, {"", " "}, {"variable.builtin", "self"}, {"punctuation.delimiter", "."}, {"function.call", "on_resume"}, {"punctuation.bracket", "("}, {"variable", "init"}, {"punctuation.bracket", ")"}, {"", " "}, {"punctuation.bracket", "{"}, {"", "\
"}},
  {{"", "                            "}, {"constant.builtin", "Ok"}, {"punctuation.bracket", "("}, {"variable", "o"}, {"punctuation.bracket", ")"}, {"", " "}, {"punctuation.delimiter", "=>"}, {"", " "}, {"punctuation.bracket", "{"}, {"", "\
"}},
  {{"", "                                "}, {"variable", "this"}, {"", " "}, {"operator", "="}, {"", " "}, {"constant.builtin", "Some"}, {"punctuation.bracket", "("}, {"variable", "o"}, {"punctuation.bracket", ")"}, {"punctuation.delimiter", ";"}, {"", "\
"}},
  {{"", "                                "}, {"variable", "start"}, {"", " "}, {"operator", "="}, {"", " "}, {"type", "Instant"}, {"punctuation.delimiter", "::"}, {"function.call", "now"}, {"punctuation.bracket", "()"}, {"punctuation.delimiter", ";"}, {"", "\
"}},
  {{"", "                                "}, {"variable", "prev"}, {"", " "}, {"operator", "="}, {"", " "}, {"variable", "start"}, {"punctuation.delimiter", ";"}, {"", "\
"}},
  {{"", "                                "}, {"variable", "tick"}, {"", " "}, {"operator", "="}, {"", " "}, {"number", "0"}, {"punctuation.delimiter", ";"}, {"", "\
"}},
  {{"", "                            "}, {"punctuation.bracket", "}"}, {"", "\
"}},
  {{"", "                            "}, {"constant.builtin", "Err"}, {"punctuation.bracket", "("}, {"variable", "e"}, {"punctuation.bracket", ")"}, {"", " "}, {"punctuation.delimiter", "=>"}, {"", " "}, {"function.macro", "eprintln!"}, {"punctuation.bracket", "("}, {"", "\
"}},
  {{"", "                                "}, {"string", "\"failed to wake {}: {e}\""}, {"punctuation.delimiter", ","}, {"", "\
"}},
  {{"", "                                "}, {"function.call", "type_name"}, {"punctuation.delimiter", "::"}, {"punctuation.bracket", "<"}, {"type", "Self"}, {"punctuation.bracket", ">()"}, {"punctuation.delimiter", ","}, {"", "\
"}},
  {{"", "                            "}, {"punctuation.bracket", ")"}, {"punctuation.delimiter", ","}, {"", "\
"}},
  {{"", "                        "}, {"punctuation.bracket", "}"}, {"", "\
"}},
  {{"", "                    "}, {"punctuation.bracket", "}"}, {"", "\
"}},
  {{"", "                "}, {"punctuation.bracket", "}"}, {"", "\
"}},
  {{"", "                "}, {"character.special", "_"}, {"", " "}, {"punctuation.delimiter", "=>"}, {"", " "}, {"punctuation.bracket", "{}"}, {"", "\
"}},
  {{"", "            "}, {"punctuation.bracket", "}"}, {"", "\
"}},
  {{"", "\
"}},
  {{"", "            "}, {"keyword", "let"}, {"", " "}, {"constant.builtin", "Some"}, {"punctuation.bracket", "("}, {"variable", "o"}, {"punctuation.bracket", ")"}, {"", " "}, {"operator", "="}, {"", " "}, {"variable", "this"}, {"punctuation.delimiter", "."}, {"function.call", "as_mut"}, {"punctuation.bracket", "()"}, {"", " "}, {"keyword.conditional", "else"}, {"", " "}, {"punctuation.bracket", "{"}, {"", "\
"}},
  {{"", "                "}, {"module", "thread"}, {"punctuation.delimiter", "::"}, {"function.call", "park"}, {"punctuation.bracket", "()"}, {"punctuation.delimiter", ";"}, {"", "\
"}},
  {{"", "                "}, {"keyword.repeat", "continue"}, {"punctuation.delimiter", ";"}, {"", "\
"}},
  {{"", "            "}, {"punctuation.bracket", "}"}, {"punctuation.delimiter", ";"}, {"", "\
"}},
  {{"", "\
"}},
  {{"", "            "}, {"function.call", "pre_tick"}, {"punctuation.bracket", "("}, {"operator", "&"}, {"keyword.modifier", "mut"}, {"", " "}, {"variable", "rx"}, {"punctuation.delimiter", ","}, {"", " "}, {"variable", "o"}, {"punctuation.bracket", ")"}, {"punctuation.delimiter", ";"}, {"", "\
"}},
  {{"", "            "}, {"variable", "rx"}, {"punctuation.delimiter", "."}, {"function.call", "drain_aux"}, {"punctuation.bracket", "("}, {"variable", "o"}, {"punctuation.bracket", ")"}, {"punctuation.delimiter", ";"}, {"", "\
"}},
  {{"", "\
"}},
  {{"", "            "}, {"keyword", "let"}, {"", " "}, {"variable", "now"}, {"", " "}, {"operator", "="}, {"", " "}, {"type", "Instant"}, {"punctuation.delimiter", "::"}, {"function.call", "now"}, {"punctuation.bracket", "()"}, {"punctuation.delimiter", ";"}, {"", "\
"}},
  {{"", "            "}, {"keyword.conditional", "if"}, {"", " "}, {"keyword", "let"}, {"", " "}, {"constant.builtin", "Err"}, {"punctuation.bracket", "("}, {"variable", "e"}, {"punctuation.bracket", ")"}, {"", " "}, {"operator", "="}, {"", " "}, {"type", "Self"}, {"punctuation.delimiter", "::"}, {"function.call", "on_tick"}, {"punctuation.bracket", "("}, {"variable", "o"}, {"punctuation.delimiter", ","}, {"", " "}, {"variable", "now"}, {"", " "}, {"operator", "-"}, {"", " "}, {"variable", "start"}, {"punctuation.delimiter", ","}, {"", " "}, {"variable", "now"}, {"", " "}, {"operator", "-"}, {"", " "}, {"variable", "prev"}, {"punctuation.delimiter", ","}, {"", " "}, {"variable", "tick"}, {"punctuation.bracket", ")"}, {"", " "}, {"punctuation.bracket", "{"}, {"", "\
"}},
  {{"", "                "}, {"function.macro", "eprintln!"}, {"punctuation.bracket", "("}, {"string", "\"{} tick {tick} error: {e}\""}, {"punctuation.delimiter", ","}, {"", " "}, {"function.call", "type_name"}, {"punctuation.delimiter", "::"}, {"punctuation.bracket", "<"}, {"type", "Self"}, {"punctuation.bracket", ">())"}, {"punctuation.delimiter", ";"}, {"", "\
"}},
  {{"", "            "}, {"punctuation.bracket", "}"}, {"", "\
"}},
  {{"", "            "}, {"variable", "prev"}, {"", " "}, {"operator", "="}, {"", " "}, {"variable", "now"}, {"punctuation.delimiter", ";"}, {"", "\
"}},
  {{"", "            "}, {"variable", "tick"}, {"", " "}, {"operator", "+="}, {"", " "}, {"number", "1"}, {"punctuation.delimiter", ";"}, {"", "\
"}},
  {{"", "\
"}},
  {{"", "            "}, {"function.call", "post_tick"}, {"punctuation.bracket", "("}, {"variable", "o"}, {"punctuation.bracket", ")"}, {"punctuation.delimiter", ";"}, {"", "\
"}},
  {{"", "        "}, {"punctuation.bracket", "}"}, {"", "\
"}},
  {{"", "    "}, {"punctuation.bracket", "}"}, {"", "\
"}},
  {{"", "\
"}},
  {{"", "    "}, {"keyword.function", "fn"}, {"", " "}, {"function", "spawn"}, {"punctuation.bracket", "()"}, {"", " "}, {"punctuation.delimiter", "->"}, {"", " "}, {"type", "WorkerHandle"}, {"punctuation.bracket", "<"}, {"type", "Self"}, {"punctuation.bracket", ">"}, {"", " "}, {"punctuation.bracket", "{"}, {"", "\
"}},
  {{"", "        "}, {"keyword", "let"}, {"", " "}, {"variable", "ctrl"}, {"", " "}, {"operator", "="}, {"", " "}, {"type", "Arc"}, {"punctuation.delimiter", "::"}, {"function.call", "new"}, {"punctuation.bracket", "("}, {"type", "WorkerControl"}, {"", " "}, {"punctuation.bracket", "{"}, {"", "\
"}},
  {{"", "            "}, {"variable.member", "status"}, {"punctuation.delimiter", ":"}, {"", " "}, {"type", "AtomicU8"}, {"punctuation.delimiter", "::"}, {"function.call", "new"}, {"punctuation.bracket", "("}, {"type", "WorkerStatus"}, {"punctuation.delimiter", "::"}, {"constant", "SUSPENDED"}, {"punctuation.bracket", ")"}, {"punctuation.delimiter", ","}, {"", "\
"}},
  {{"", "            "}, {"variable.member", "init_payload"}, {"punctuation.delimiter", ":"}, {"", " "}, {"type", "Mutex"}, {"punctuation.delimiter", "::"}, {"function.call", "new"}, {"punctuation.bracket", "("}, {"constant.builtin", "None"}, {"punctuation.bracket", ")"}, {"punctuation.delimiter", ","}, {"", "\
"}},
  {{"", "            "}, {"variable.member", "suspended_ack"}, {"punctuation.delimiter", ":"}, {"", " "}, {"type", "Condvar"}, {"punctuation.delimiter", "::"}, {"function.call", "new"}, {"punctuation.bracket", "()"}, {"punctuation.delimiter", ","}, {"", "\
"}},
  {{"", "            "}, {"variable.member", "suspended_flag"}, {"punctuation.delimiter", ":"}, {"", " "}, {"type", "Mutex"}, {"punctuation.delimiter", "::"}, {"function.call", "new"}, {"punctuation.bracket", "("}, {"boolean", "false"}, {"punctuation.bracket", ")"}, {"punctuation.delimiter", ","}, {"", "\
"}},
  {{"", "        "}, {"punctuation.bracket", "})"}, {"punctuation.delimiter", ";"}, {"", "\
"}},
  {{"", "        "}, {"keyword", "let"}, {"", " "}, {"variable", "ctrl_moved"}, {"", " "}, {"operator", "="}, {"", " "}, {"variable", "ctrl"}, {"punctuation.delimiter", "."}, {"function.call", "clone"}, {"punctuation.bracket", "()"}, {"punctuation.delimiter", ";"}, {"", "\
"}},
  {{"", "\
"}},
  {{"", "        "}, {"keyword", "let"}, {"", " "}, {"punctuation.bracket", "("}, {"variable", "tx"}, {"punctuation.delimiter", ","}, {"", " "}, {"variable", "aux_tx"}, {"punctuation.delimiter", ","}, {"", " "}, {"variable", "rx"}, {"punctuation.bracket", ")"}, {"", " "}, {"operator", "="}, {"", " "}, {"type", "Self"}, {"punctuation.delimiter", "::"}, {"constant", "Channels"}, {"punctuation.delimiter", "::"}, {"function.call", "new"}, {"punctuation.bracket", "()"}, {"punctuation.delimiter", ";"}, {"", "\
"}},
  {{"", "        "}, {"keyword", "let"}, {"", " "}, {"variable", "thread"}, {"", " "}, {"operator", "="}, {"", " "}, {"module", "thread"}, {"punctuation.delimiter", "::"}, {"function.call", "spawn"}, {"punctuation.bracket", "("}, {"keyword", "move"}, {"", " "}, {"punctuation.bracket", "||"}, {"", " "}, {"punctuation.bracket", "{"}, {"", "\
"}},
  {{"", "            "}, {"type", "Self"}, {"punctuation.delimiter", "::"}, {"function.call", "default"}, {"punctuation.bracket", "()"}, {"punctuation.delimiter", "."}, {"function.call", "run"}, {"punctuation.bracket", "("}, {"variable", "ctrl_moved"}, {"punctuation.delimiter", ","}, {"", " "}, {"variable", "rx"}, {"punctuation.bracket", ")"}, {"punctuation.delimiter", ";"}, {"", "\
"}},
  {{"", "        "}, {"punctuation.bracket", "})"}, {"punctuation.delimiter", ";"}, {"", "\
"}},
  {{"", "\
"}},
  {{"", "        "}, {"type", "WorkerHandle"}, {"", " "}, {"punctuation.bracket", "{"}, {"", "\
"}},
  {{"", "            "}, {"variable.member", "thread"}, {"punctuation.delimiter", ":"}, {"", " "}, {"constant.builtin", "Some"}, {"punctuation.bracket", "("}, {"variable", "thread"}, {"punctuation.bracket", ")"}, {"punctuation.delimiter", ","}, {"", "\
"}},
  {{"", "            "}, {"variable.member", "ctrl"}, {"punctuation.delimiter", ","}, {"", "\
"}},
  {{"", "            "}, {"variable.member", "tx"}, {"punctuation.delimiter", ","}, {"", "\
"}},
  {{"", "            "}, {"variable.member", "aux_tx"}, {"punctuation.delimiter", ","}, {"", "\
"}},
  {{"", "        "}, {"punctuation.bracket", "}"}, {"", "\
"}},
  {{"", "    "}, {"punctuation.bracket", "}"}, {"", "\
"}},
  {{"punctuation.bracket", "}"}, {"", "\
"}},
  {{"comment", "// }}}"}, {"", "\
"}},
  {{"", "\
"}},
  {{"comment", "// {{{ handle for communication with a spawned worker"}, {"", "\
"}},
  {{"keyword.modifier", "pub"}, {"", " "}, {"keyword.type", "struct"}, {"", " "}, {"type", "WorkerHandle"}, {"punctuation.bracket", "<"}, {"type", "W"}, {"punctuation.delimiter", ":"}, {"", " "}, {"type", "Worker"}, {"punctuation.bracket", ">"}, {"", " "}, {"punctuation.bracket", "{"}, {"", "\
"}},
  {{"", "    "}, {"variable.member", "thread"}, {"punctuation.delimiter", ":"}, {"", " "}, {"type", "Option"}, {"punctuation.bracket", "<"}, {"type", "JoinHandle"}, {"punctuation.bracket", "<()>>"}, {"punctuation.delimiter", ","}, {"", "\
"}},
  {{"", "    "}, {"variable.member", "ctrl"}, {"punctuation.delimiter", ":"}, {"", " "}, {"type", "Arc"}, {"punctuation.bracket", "<"}, {"type", "WorkerControl"}, {"punctuation.bracket", "<"}, {"type", "W"}, {"punctuation.delimiter", "::"}, {"constant", "Init"}, {"punctuation.bracket", ">>"}, {"punctuation.delimiter", ","}, {"", "\
"}},
  {{"", "    "}, {"keyword.modifier", "pub"}, {"", " "}, {"variable.member", "tx"}, {"punctuation.delimiter", ":"}, {"", " "}, {"punctuation.bracket", "<"}, {"type", "W"}, {"punctuation.delimiter", "::"}, {"constant", "Channels"}, {"", " "}, {"keyword.operator", "as"}, {"", " "}, {"type", "WorkerRx"}, {"punctuation.bracket", "<"}, {"type", "W"}, {"punctuation.delimiter", "::"}, {"constant", "State"}, {"punctuation.bracket", ">>"}, {"punctuation.delimiter", "::"}, {"type", "PrimaryTx"}, {"punctuation.delimiter", ","}, {"", "\
"}},
  {{"", "    "}, {"keyword.modifier", "pub"}, {"", " "}, {"variable.member", "aux_tx"}, {"punctuation.delimiter", ":"}, {"", " "}, {"punctuation.bracket", "<"}, {"type", "W"}, {"punctuation.delimiter", "::"}, {"constant", "Channels"}, {"", " "}, {"keyword.operator", "as"}, {"", " "}, {"type", "WorkerRx"}, {"punctuation.bracket", "<"}, {"type", "W"}, {"punctuation.delimiter", "::"}, {"constant", "State"}, {"punctuation.bracket", ">>"}, {"punctuation.delimiter", "::"}, {"type", "TxBundle"}, {"punctuation.delimiter", ","}, {"", "\
"}},
  {{"punctuation.bracket", "}"}, {"", "\
"}},
  {{"", "\
"}},
  {{"keyword", "impl"}, {"punctuation.bracket", "<"}, {"type", "W"}, {"punctuation.delimiter", ":"}, {"", " "}, {"type", "Worker"}, {"punctuation.bracket", ">"}, {"", " "}, {"type", "WorkerHandle"}, {"punctuation.bracket", "<"}, {"type", "W"}, {"punctuation.bracket", ">"}, {"", " "}, {"punctuation.bracket", "{"}, {"", "\
"}},
  {{"", "    "}, {"keyword.modifier", "pub"}, {"", " "}, {"keyword.function", "fn"}, {"", " "}, {"function", "resume"}, {"punctuation.bracket", "("}, {"operator", "&"}, {"keyword.modifier", "mut"}, {"", " "}, {"variable.builtin", "self"}, {"punctuation.delimiter", ","}, {"", " "}, {"variable.parameter", "init"}, {"punctuation.delimiter", ":"}, {"", " "}, {"type", "W"}, {"punctuation.delimiter", "::"}, {"constant", "Init"}, {"punctuation.bracket", ")"}, {"", " "}, {"punctuation.bracket", "{"}, {"", "\
"}},
  {{"", "        "}, {"variable.builtin", "self"}, {"punctuation.delimiter", "."}, {"variable.member", "ctrl"}, {"punctuation.delimiter", "."}, {"function.call", "resume"}, {"punctuation.bracket", "("}, {"variable", "init"}, {"punctuation.bracket", ")"}, {"punctuation.delimiter", ";"}, {"", "\
"}},
  {{"", "        "}, {"keyword.conditional", "if"}, {"", " "}, {"keyword", "let"}, {"", " "}, {"constant.builtin", "Some"}, {"punctuation.bracket", "("}, {"variable", "t"}, {"punctuation.bracket", ")"}, {"", " "}, {"operator", "="}, {"", " "}, {"operator", "&"}, {"variable.builtin", "self"}, {"punctuation.delimiter", "."}, {"variable.member", "thread"}, {"", " "}, {"punctuation.bracket", "{"}, {"", "\
"}},
  {{"", "            "}, {"variable", "t"}, {"punctuation.delimiter", "."}, {"function.call", "thread"}, {"punctuation.bracket", "()"}, {"punctuation.delimiter", "."}, {"function.call", "unpark"}, {"punctuation.bracket", "()"}, {"punctuation.delimiter", ";"}, {"", "\
"}},
  {{"", "        "}, {"punctuation.bracket", "}"}, {"", "\
"}},
  {{"", "    "}, {"punctuation.bracket", "}"}, {"", "\
"}},
  {{"", "\
"}},
  {{"", "    "}, {"comment.documentation", "//"}, {"comment", "/"}, {"comment.documentation", " this may deadlock if called before the worker has processed a preceding resume().\
"}},
  {{"", "    "}, {"comment.documentation", "//"}, {"comment", "/"}, {"comment.documentation", " suspend() should only be called on a worker that is known to be alive\
"}},
  {{"", "    "}, {"keyword.modifier", "pub"}, {"", " "}, {"keyword.function", "fn"}, {"", " "}, {"function", "suspend"}, {"punctuation.bracket", "("}, {"operator", "&"}, {"keyword.modifier", "mut"}, {"", " "}, {"variable.builtin", "self"}, {"punctuation.bracket", ")"}, {"", " "}, {"punctuation.bracket", "{"}, {"", "\
"}},
  {{"", "        "}, {"keyword.conditional", "if"}, {"", " "}, {"variable.builtin", "self"}, {"punctuation.delimiter", "."}, {"variable.member", "ctrl"}, {"punctuation.delimiter", "."}, {"variable.member", "status"}, {"punctuation.delimiter", "."}, {"function.call", "load"}, {"punctuation.bracket", "("}, {"type", "Ordering"}, {"punctuation.delimiter", "::"}, {"constant", "Acquire"}, {"punctuation.bracket", ")"}, {"", " "}, {"operator", "=="}, {"", " "}, {"type", "WorkerStatus"}, {"punctuation.delimiter", "::"}, {"constant", "SUSPENDED"}, {"", " "}, {"punctuation.bracket", "{"}, {"", "\
"}},
  {{"", "            "}, {"keyword.return", "return"}, {"punctuation.delimiter", ";"}, {"", " "}, {"comment", "// already suspended"}, {"", "\
"}},
  {{"", "        "}, {"punctuation.bracket", "}"}, {"", "\
"}},
  {{"", "        "}, {"variable.builtin", "self"}, {"punctuation.delimiter", "."}, {"variable.member", "ctrl"}, {"punctuation.delimiter", "."}, {"variable.member", "status"}, {"punctuation.delimiter", "."}, {"function.call", "store"}, {"punctuation.bracket", "("}, {"type", "WorkerStatus"}, {"punctuation.delimiter", "::"}, {"constant", "SUSPENDED"}, {"punctuation.delimiter", ","}, {"", " "}, {"type", "Ordering"}, {"punctuation.delimiter", "::"}, {"constant", "Release"}, {"punctuation.bracket", ")"}, {"punctuation.delimiter", ";"}, {"", "\
"}},
  {{"", "\
"}},
  {{"", "        "}, {"keyword.conditional", "if"}, {"", " "}, {"keyword", "let"}, {"", " "}, {"constant.builtin", "Some"}, {"punctuation.bracket", "("}, {"variable", "t"}, {"punctuation.bracket", ")"}, {"", " "}, {"operator", "="}, {"", " "}, {"operator", "&"}, {"variable.builtin", "self"}, {"punctuation.delimiter", "."}, {"variable.member", "thread"}, {"", " "}, {"punctuation.bracket", "{"}, {"", "\
"}},
  {{"", "            "}, {"variable", "t"}, {"punctuation.delimiter", "."}, {"function.call", "thread"}, {"punctuation.bracket", "()"}, {"punctuation.delimiter", "."}, {"function.call", "unpark"}, {"punctuation.bracket", "()"}, {"punctuation.delimiter", ";"}, {"", "\
"}},
  {{"", "        "}, {"punctuation.bracket", "}"}, {"", "\
"}},
  {{"", "        "}, {"variable.builtin", "self"}, {"punctuation.delimiter", "."}, {"variable.member", "ctrl"}, {"punctuation.delimiter", "."}, {"function.call", "wait_until_suspend_done"}, {"punctuation.bracket", "()"}, {"punctuation.delimiter", ";"}, {"", "\
"}},
  {{"", "    "}, {"punctuation.bracket", "}"}, {"", "\
"}},
  {{"", "\
"}},
  {{"", "    "}, {"comment.documentation", "//"}, {"comment", "/"}, {"comment.documentation", " signals the worker to stop and blocks until it finishes its current tick\
"}},
  {{"", "    "}, {"keyword.modifier", "pub"}, {"", " "}, {"keyword.function", "fn"}, {"", " "}, {"function", "exit"}, {"punctuation.bracket", "("}, {"operator", "&"}, {"keyword.modifier", "mut"}, {"", " "}, {"variable.builtin", "self"}, {"punctuation.bracket", ")"}, {"", " "}, {"punctuation.bracket", "{"}, {"", "\
"}},
  {{"", "        "}, {"variable.builtin", "self"}, {"punctuation.delimiter", "."}, {"variable.member", "ctrl"}, {"punctuation.delimiter", "."}, {"variable.member", "status"}, {"punctuation.delimiter", "."}, {"function.call", "store"}, {"punctuation.bracket", "("}, {"type", "WorkerStatus"}, {"punctuation.delimiter", "::"}, {"constant", "DEAD"}, {"punctuation.delimiter", ","}, {"", " "}, {"type", "Ordering"}, {"punctuation.delimiter", "::"}, {"constant", "Release"}, {"punctuation.bracket", ")"}, {"punctuation.delimiter", ";"}, {"", "\
"}},
  {{"", "\
"}},
  {{"", "        "}, {"keyword.conditional", "if"}, {"", " "}, {"keyword", "let"}, {"", " "}, {"constant.builtin", "Some"}, {"punctuation.bracket", "("}, {"variable", "thread"}, {"punctuation.bracket", ")"}, {"", " "}, {"operator", "="}, {"", " "}, {"variable.builtin", "self"}, {"punctuation.delimiter", "."}, {"variable.member", "thread"}, {"punctuation.delimiter", "."}, {"function.call", "take"}, {"punctuation.bracket", "()"}, {"", " "}, {"punctuation.bracket", "{"}, {"", "\
"}},
  {{"", "            "}, {"variable", "thread"}, {"punctuation.delimiter", "."}, {"function.call", "thread"}, {"punctuation.bracket", "()"}, {"punctuation.delimiter", "."}, {"function.call", "unpark"}, {"punctuation.bracket", "()"}, {"punctuation.delimiter", ";"}, {"", "\
"}},
  {{"", "            "}, {"keyword", "let"}, {"", " "}, {"character.special", "_"}, {"", " "}, {"operator", "="}, {"", " "}, {"variable", "thread"}, {"punctuation.delimiter", "."}, {"function.call", "join"}, {"punctuation.bracket", "()"}, {"punctuation.delimiter", ";"}, {"", "\
"}},
  {{"", "        "}, {"punctuation.bracket", "}"}, {"", "\
"}},
  {{"", "    "}, {"punctuation.bracket", "}"}, {"", "\
"}},
  {{"punctuation.bracket", "}"}, {"", "\
"}},
  {{"", "\
"}},
  {{"keyword", "impl"}, {"punctuation.bracket", "<"}, {"type", "W"}, {"punctuation.delimiter", ":"}, {"", " "}, {"type", "Worker"}, {"punctuation.bracket", ">"}, {"", " "}, {"type", "Drop"}, {"", " "}, {"keyword", "for"}, {"", " "}, {"type", "WorkerHandle"}, {"punctuation.bracket", "<"}, {"type", "W"}, {"punctuation.bracket", ">"}, {"", " "}, {"punctuation.bracket", "{"}, {"", "\
"}},
  {{"", "    "}, {"keyword.function", "fn"}, {"", " "}, {"function", "drop"}, {"punctuation.bracket", "("}, {"operator", "&"}, {"keyword.modifier", "mut"}, {"", " "}, {"variable.builtin", "self"}, {"punctuation.bracket", ")"}, {"", " "}, {"punctuation.bracket", "{"}, {"", "\
"}},
  {{"", "        "}, {"variable.builtin", "self"}, {"punctuation.delimiter", "."}, {"function.call", "exit"}, {"punctuation.bracket", "()"}, {"punctuation.delimiter", ";"}, {"", "\
"}},
  {{"", "    "}, {"punctuation.bracket", "}"}, {"", "\
"}},
  {{"punctuation.bracket", "}"}, {"", "\
"}},
  {{"comment", "// }}}"}, {"", "\
"}},
  {{"", "\
"}},
  {{"comment", "// {{{ declarative configuration of all channels a worker has"}, {"", "\
"}},
  {{"comment", "// this is very horrible and I don't think we should touch it. If new features need to"}, {"", "\
"}},
  {{"comment", "// be added we should probably make this a proc macro instead of using macro_rules"}, {"", "\
"}},
  {{"", "\
"}},
  {{"comment.documentation", "//"}, {"comment", "/"}, {"comment.documentation", " Generates channel bundles for Workers (or any other MessageHandler).\
"}},
  {{"comment.documentation", "//"}, {"comment", "/"}, {"comment.documentation", "\
"}},
  {{"comment.documentation", "//"}, {"comment", "/"}, {"comment.documentation", " This macro aggregates a primary command channel and multiple auxiliary data\
"}},
  {{"comment.documentation", "//"}, {"comment", "/"}, {"comment.documentation", " channels into unified tx/rx bundle structs. It routes incoming auxiliary messages\
"}},
  {{"comment.documentation", "//"}, {"comment", "/"}, {"comment.documentation", " to their appropriate handlers using the `MessageHandler<T>::handle` method.\
"}},
  {{"comment.documentation", "//"}, {"comment", "/"}, {"comment.documentation", "\
"}},
  {{"comment.documentation", "//"}, {"comment", "/"}, {"comment.documentation", " If a primary channel is provided, the macro generates a blanket impl of\
"}},
  {{"comment.documentation", "//"}, {"comment", "/"}, {"comment.documentation", " WorkerRx<S> for all S: MessageHandler<PrimaryMsgType>.\
"}},
  {{"comment.documentation", "//"}, {"comment", "/"}, {"comment.documentation", "\
"}},
  {{"comment.documentation", "//"}, {"comment", "/"}, {"comment.documentation", " Auxiliary fields are internally prefixed as `[source]_[field]` (e.g., `game_telemetry`)\
"}},
  {{"comment.documentation", "//"}, {"comment", "/"}, {"comment.documentation", " to prevent namespace collisions if multiple sources send data to fields with the same name.\
"}},
  {{"comment.documentation", "//"}, {"comment", "/"}, {"comment.documentation", "\
"}},
  {{"comment.documentation", "//"}, {"comment", "/"}, {"comment.documentation", " ```\
"}},
  {{"comment.documentation", "//"}, {"comment", "/"}, {"comment.documentation", " channel_routing_for!(\
"}},
  {{"comment.documentation", "//"}, {"comment", "/"}, {"comment.documentation", "     PrefixName {\
"}},
  {{"comment.documentation", "//"}, {"comment", "/"}, {"comment.documentation", "         // optionally define the primary channel (required for Worker usage)\
"}},
  {{"comment.documentation", "//"}, {"comment", "/"}, {"comment.documentation", "         // \"blocking\" can be omitted to have a non-blocking primary channel\
"}},
  {{"comment.documentation", "//"}, {"comment", "/"}, {"comment.documentation", "         primary: [PrimaryMsgType; Capacity] blocking,\
"}},
  {{"comment.documentation", "//"}, {"comment", "/"}, {"comment.documentation", "\
"}},
  {{"comment.documentation", "//"}, {"comment", "/"}, {"comment.documentation", "         // auxiliary channels grouped by source\
"}},
  {{"comment.documentation", "//"}, {"comment", "/"}, {"comment.documentation", "         SourceName => {\
"}},
  {{"comment.documentation", "//"}, {"comment", "/"}, {"comment.documentation", "             field_name: [AuxMsgType; Capacity],\
"}},
  {{"comment.documentation", "//"}, {"comment", "/"}, {"comment.documentation", "         }\
"}},
  {{"comment.documentation", "//"}, {"comment", "/"}, {"comment.documentation", "     }\
"}},
  {{"comment.documentation", "//"}, {"comment", "/"}, {"comment.documentation", " );\
"}},
  {{"comment.documentation", "//"}, {"comment", "/"}, {"comment.documentation", " ```\
"}},
  {{"comment.documentation", "//"}, {"comment", "/"}, {"comment.documentation", "\
"}},
  {{"comment.documentation", "//"}, {"comment", "/"}, {"comment.documentation", " # Generated Structs\
"}},
  {{"comment.documentation", "//"}, {"comment", "/"}, {"comment.documentation", " For a given `$prefix`:\
"}},
  {{"comment.documentation", "//"}, {"comment", "/"}, {"comment.documentation", " - `[$prefix]RxBundle`: Owns primary and auxiliary consumers.\
"}},
  {{"comment.documentation", "//"}, {"comment", "/"}, {"comment.documentation", " - `[$prefix]TxBundle`: Owns all auxiliary producers, wrapped in `Option`\
"}},
  {{"comment.documentation", "//"}, {"comment", "/"}, {"comment.documentation", "                        so they can be taken and sent to other threads.\
"}},
  {{"comment.documentation", "//"}, {"comment", "/"}, {"comment.documentation", " - `[$source]To[$prefix]`: Owns producers a specific source needs.\
"}},
  {{"punctuation.special", "#"}, {"punctuation.bracket", "["}, {"function.macro", "macro_export"}, {"punctuation.bracket", "]"}, {"", "\
"}},
  {{"function.macro", "macro_rules!"}, {"", " "}, {"variable", "channel_routing_for"}, {"", " "}, {"punctuation.bracket", "{"}, {"", "\
"}},
  {{"", "    "}, {"comment", "// with primary channel (for Worker impls)"}, {"", "\
"}},
  {{"", "    "}, {"punctuation.bracket", "("}, {"", "\
"}},
  {{"", "        "}, {"function.macro", "$prefix"}, {"punctuation.delimiter", ":"}, {"", "ident "}, {"punctuation.bracket", "{"}, {"", "\
"}},
  {{"", "            "}, {"variable", "primary"}, {"", " "}, {"punctuation.delimiter", ":"}, {"", " "}, {"punctuation.bracket", "["}, {"", " "}, {"function.macro", "$pmsg"}, {"punctuation.delimiter", ":"}, {"", "ty "}, {"punctuation.delimiter", ";"}, {"", " "}, {"function.macro", "$pcap"}, {"punctuation.delimiter", ":"}, {"", "expr "}, {"punctuation.bracket", "]"}, {"", " "}, {"function.macro", "$"}, {"punctuation.bracket", "("}, {"function.macro", "$blocking"}, {"punctuation.delimiter", ":"}, {"", "ident"}, {"punctuation.bracket", ")"}, {"operator", "?"}, {"", "\
"}},
  {{"", "            "}, {"function.macro", "$"}, {"punctuation.bracket", "("}, {"punctuation.delimiter", ","}, {"", " "}, {"function.macro", "$source"}, {"punctuation.delimiter", ":"}, {"", "ident "}, {"punctuation.delimiter", "=>"}, {"", " "}, {"punctuation.bracket", "{"}, {"", "\
"}},
  {{"", "                "}, {"function.macro", "$"}, {"punctuation.bracket", "("}, {"", " "}, {"function.macro", "$field"}, {"punctuation.delimiter", ":"}, {"", "ident "}, {"punctuation.delimiter", ":"}, {"", " "}, {"punctuation.bracket", "["}, {"", " "}, {"function.macro", "$amsg"}, {"punctuation.delimiter", ":"}, {"", "ty "}, {"punctuation.delimiter", ";"}, {"", " "}, {"function.macro", "$acap"}, {"punctuation.delimiter", ":"}, {"", "expr "}, {"punctuation.bracket", "]"}, {"", " "}, {"punctuation.bracket", ")"}, {"", ","}, {"operator", "*"}, {"", " "}, {"function.macro", "$"}, {"punctuation.bracket", "("}, {"punctuation.delimiter", ","}, {"punctuation.bracket", ")"}, {"operator", "?"}, {"", "\
"}},
  {{"", "            "}, {"punctuation.bracket", "})"}, {"operator", "*"}, {"", " "}, {"function.macro", "$"}, {"punctuation.bracket", "("}, {"punctuation.delimiter", ","}, {"punctuation.bracket", ")"}, {"operator", "?"}, {"", "\
"}},
  {{"", "        "}, {"punctuation.bracket", "}"}, {"", "\
"}},
  {{"", "    "}, {"punctuation.bracket", ")"}, {"", " "}, {"punctuation.delimiter", "=>"}, {"", " "}, {"punctuation.bracket", "{"}, {"", "\
"}},
  {{"", "        "}, {"function.macro", "$crate"}, {"punctuation.delimiter", "::"}, {"variable", "channel_routing_for"}, {"operator", "!"}, {"punctuation.bracket", "("}, {"operator", "@"}, {"variable", "aux_tx"}, {"", " "}, {"function.macro", "$prefix"}, {"", " "}, {"function.macro", "$"}, {"punctuation.bracket", "("}, {"function.macro", "$source"}, {"", " "}, {"punctuation.bracket", "{"}, {"", " "}, {"function.macro", "$"}, {"punctuation.bracket", "("}, {"function.macro", "$field"}, {"punctuation.delimiter", ":"}, {"", " "}, {"function.macro", "$amsg"}, {"punctuation.bracket", ")"}, {"", ","}, {"operator", "*"}, {"", " "}, {"punctuation.bracket", "})"}, {"operator", "*"}, {"punctuation.bracket", ")"}, {"punctuation.delimiter", ";"}, {"", "\
"}},
  {{"", "        "}, {"variable", "paste"}, {"punctuation.delimiter", "::"}, {"variable", "paste"}, {"operator", "!"}, {"", " "}, {"punctuation.bracket", "{"}, {"", "\
"}},
  {{"", "            "}, {"comment", "// {{{ RxBundle struct owns all consumers"}, {"", "\
"}},
  {{"", "            "}, {"keyword.modifier", "pub"}, {"", " "}, {"keyword.type", "struct"}, {"", " "}, {"punctuation.bracket", "["}, {"operator", "<"}, {"function.macro", "$prefix"}, {"", " "}, {"type", "RxBundle"}, {"operator", ">"}, {"punctuation.bracket", "]"}, {"", " "}, {"punctuation.bracket", "{"}, {"", "\
"}},
  {{"", "                "}, {"variable", "primary"}, {"punctuation.delimiter", ":"}, {"", " "}, {"function.macro", "$crate"}, {"punctuation.delimiter", "::"}, {"variable", "channel_routing_for"}, {"operator", "!"}, {"punctuation.bracket", "("}, {"operator", "@"}, {"variable", "rx_type"}, {"", " "}, {"function.macro", "$"}, {"punctuation.bracket", "("}, {"function.macro", "$blocking"}, {"punctuation.bracket", ")"}, {"operator", "?"}, {"", " "}, {"function.macro", "$pmsg"}, {"punctuation.bracket", ")"}, {"punctuation.delimiter", ","}, {"", "\
"}},
  {{"", "                "}, {"function.macro", "$"}, {"punctuation.bracket", "("}, {"function.macro", "$"}, {"punctuation.bracket", "(["}, {"operator", "<"}, {"function.macro", "$source"}, {"punctuation.delimiter", ":"}, {"variable", "snake"}, {"", " "}, {"character.special", "_"}, {"", " "}, {"function.macro", "$field"}, {"operator", ">"}, {"punctuation.bracket", "]"}, {"punctuation.delimiter", ":"}, {"", " "}, {"variable", "rtrb"}, {"punctuation.delimiter", "::"}, {"type", "Consumer"}, {"operator", "<"}, {"function.macro", "$amsg"}, {"operator", ">"}, {"punctuation.delimiter", ","}, {"punctuation.bracket", ")"}, {"operator", "*"}, {"punctuation.bracket", ")"}, {"operator", "*"}, {"", "\
"}},
  {{"", "            "}, {"punctuation.bracket", "}"}, {"", "\
"}},
  {{"", "            "}, {"comment", "// }}}"}, {"", "\
"}},
  {{"", "\
"}},
  {{"", "            "}, {"comment", "// {{{ Rx<PrimaryMsg> for all primary queue impls"}, {"", "\
"}},
  {{"", "            "}, {"keyword", "impl"}, {"", " "}, {"function.macro", "$crate"}, {"punctuation.delimiter", "::"}, {"variable", "sync"}, {"punctuation.delimiter", "::"}, {"variable", "chan"}, {"punctuation.delimiter", "::"}, {"type", "Rx"}, {"operator", "<"}, {"function.macro", "$pmsg"}, {"operator", ">"}, {"", " "}, {"keyword", "for"}, {"", " "}, {"punctuation.bracket", "["}, {"operator", "<"}, {"function.macro", "$prefix"}, {"", " "}, {"type", "RxBundle"}, {"operator", ">"}, {"punctuation.bracket", "]"}, {"", " "}, {"punctuation.bracket", "{"}, {"", "\
"}},
  {{"", "                #"}, {"punctuation.bracket", "["}, {"variable", "inline"}, {"punctuation.bracket", "("}, {"variable", "always"}, {"punctuation.bracket", ")]"}, {"", "\
"}},
  {{"", "                "}, {"keyword.function", "fn"}, {"", " "}, {"variable", "pop"}, {"punctuation.bracket", "("}, {"operator", "&"}, {"keyword.modifier", "mut"}, {"", " "}, {"variable.builtin", "self"}, {"punctuation.bracket", ")"}, {"", " "}, {"punctuation.delimiter", "->"}, {"", " "}, {"type", "Result"}, {"operator", "<"}, {"function.macro", "$pmsg"}, {"punctuation.delimiter", ","}, {"", " "}, {"variable", "rtrb"}, {"punctuation.delimiter", "::"}, {"type", "PopError"}, {"operator", ">"}, {"", " "}, {"punctuation.bracket", "{"}, {"", "\
"}},
  {{"", "                    "}, {"function.macro", "$crate"}, {"punctuation.delimiter", "::"}, {"variable", "sync"}, {"punctuation.delimiter", "::"}, {"variable", "chan"}, {"punctuation.delimiter", "::"}, {"type", "Rx"}, {"punctuation.delimiter", "::"}, {"variable", "pop"}, {"punctuation.bracket", "("}, {"operator", "&"}, {"keyword.modifier", "mut"}, {"", " "}, {"variable.builtin", "self"}, {"punctuation.delimiter", "."}, {"variable", "primary"}, {"punctuation.bracket", ")"}, {"", "\
"}},
  {{"", "                "}, {"punctuation.bracket", "}"}, {"", "\
"}},
  {{"", "            "}, {"punctuation.bracket", "}"}, {"", "\
"}},
  {{"", "            "}, {"comment", "// }}}"}, {"", "\
"}},
  {{"", "\
"}},
  {{"", "            "}, {"comment", "// {{{ RxBlocking for blocking primary queue"}, {"", "\
"}},
  {{"", "            "}, {"function.macro", "$crate"}, {"punctuation.delimiter", "::"}, {"variable", "channel_routing_for"}, {"operator", "!"}, {"punctuation.bracket", "("}, {"", "\
"}},
  {{"", "                "}, {"operator", "@"}, {"variable", "impl_rx_blocking"}, {"", " "}, {"function.macro", "$"}, {"punctuation.bracket", "("}, {"function.macro", "$blocking"}, {"punctuation.bracket", ")"}, {"operator", "?"}, {"", " "}, {"function.macro", "$prefix"}, {"", " "}, {"function.macro", "$pmsg"}, {"", "\
"}},
  {{"", "            "}, {"punctuation.bracket", ")"}, {"punctuation.delimiter", ";"}, {"", "\
"}},
  {{"", "            "}, {"comment", "// }}}"}, {"", "\
"}},
  {{"", "\
"}},
  {{"", "            "}, {"comment", "// {{{ WorkerRx"}, {"", "\
"}},
  {{"", "            "}, {"keyword", "impl"}, {"operator", "<"}, {"type", "State"}, {"operator", ">"}, {"", " "}, {"function.macro", "$crate"}, {"punctuation.delimiter", "::"}, {"variable", "sync"}, {"punctuation.delimiter", "::"}, {"variable", "worker"}, {"punctuation.delimiter", "::"}, {"type", "WorkerRx"}, {"operator", "<"}, {"type", "State"}, {"operator", ">"}, {"", "\
"}},
  {{"", "            "}, {"keyword", "for"}, {"", " "}, {"punctuation.bracket", "["}, {"operator", "<"}, {"function.macro", "$prefix"}, {"", " "}, {"type", "RxBundle"}, {"operator", ">"}, {"punctuation.bracket", "]"}, {"", "\
"}},
  {{"", "            "}, {"keyword", "where"}, {"", "\
"}},
  {{"", "                "}, {"type", "State"}, {"punctuation.delimiter", ":"}, {"", " "}, {"function.macro", "$crate"}, {"punctuation.delimiter", "::"}, {"variable", "sync"}, {"punctuation.delimiter", "::"}, {"variable", "worker"}, {"punctuation.delimiter", "::"}, {"type", "MessageHandler"}, {"operator", "<"}, {"function.macro", "$pmsg"}, {"operator", ">"}, {"", "\
"}},
  {{"", "                    "}, {"function.macro", "$"}, {"punctuation.bracket", "("}, {"function.macro", "$"}, {"punctuation.bracket", "("}, {"", " "}, {"operator", "+"}, {"", " "}, {"function.macro", "$crate"}, {"punctuation.delimiter", "::"}, {"variable", "sync"}, {"punctuation.delimiter", "::"}, {"variable", "worker"}, {"punctuation.delimiter", "::"}, {"type", "MessageHandler"}, {"operator", "<"}, {"function.macro", "$amsg"}, {"operator", ">"}, {"", " "}, {"punctuation.bracket", ")"}, {"operator", "*"}, {"punctuation.bracket", ")"}, {"operator", "*"}, {"", "\
"}},
  {{"", "            "}, {"punctuation.bracket", "{"}, {"", "\
"}},
  {{"", "                "}, {"keyword.type", "type"}, {"", " "}, {"type", "Msg"}, {"", " "}, {"operator", "="}, {"", " "}, {"function.macro", "$pmsg"}, {"punctuation.delimiter", ";"}, {"", "\
"}},
  {{"", "                "}, {"keyword.type", "type"}, {"", " "}, {"type", "PrimaryRx"}, {"", " "}, {"operator", "="}, {"", " "}, {"function.macro", "$crate"}, {"punctuation.delimiter", "::"}, {"variable", "channel_routing_for"}, {"operator", "!"}, {"punctuation.bracket", "("}, {"", "\
"}},
  {{"", "                    "}, {"operator", "@"}, {"variable", "rx_type"}, {"", " "}, {"function.macro", "$"}, {"punctuation.bracket", "("}, {"function.macro", "$blocking"}, {"punctuation.bracket", ")"}, {"operator", "?"}, {"", " "}, {"function.macro", "$pmsg"}, {"", "\
"}},
  {{"", "                "}, {"punctuation.bracket", ")"}, {"punctuation.delimiter", ";"}, {"", "\
"}},
  {{"", "                "}, {"keyword.type", "type"}, {"", " "}, {"type", "PrimaryTx"}, {"", " "}, {"operator", "="}, {"", " "}, {"function.macro", "$crate"}, {"punctuation.delimiter", "::"}, {"variable", "channel_routing_for"}, {"operator", "!"}, {"punctuation.bracket", "("}, {"", "\
"}},
  {{"", "                    "}, {"operator", "@"}, {"variable", "tx_type"}, {"", " "}, {"function.macro", "$"}, {"punctuation.bracket", "("}, {"function.macro", "$blocking"}, {"punctuation.bracket", ")"}, {"operator", "?"}, {"", " "}, {"function.macro", "$pmsg"}, {"", "\
"}},
  {{"", "                "}, {"punctuation.bracket", ")"}, {"punctuation.delimiter", ";"}, {"", "\
"}},
  {{"", "                "}, {"keyword.type", "type"}, {"", " "}, {"type", "TxBundle"}, {"", " "}, {"operator", "="}, {"", " "}, {"punctuation.bracket", "["}, {"operator", "<"}, {"function.macro", "$prefix"}, {"", " "}, {"type", "TxBundle"}, {"operator", ">"}, {"punctuation.bracket", "]"}, {"punctuation.delimiter", ";"}, {"", "\
"}},
  {{"", "\
"}},
  {{"", "                "}, {"keyword.function", "fn"}, {"", " "}, {"variable", "new"}, {"punctuation.bracket", "()"}, {"", " "}, {"punctuation.delimiter", "->"}, {"", " "}, {"punctuation.bracket", "("}, {"type", "Self"}, {"punctuation.delimiter", "::"}, {"type", "PrimaryTx"}, {"punctuation.delimiter", ","}, {"", " "}, {"type", "Self"}, {"punctuation.delimiter", "::"}, {"type", "TxBundle"}, {"punctuation.delimiter", ","}, {"", " "}, {"type", "Self"}, {"punctuation.bracket", ")"}, {"", " "}, {"punctuation.bracket", "{"}, {"", "\
"}},
  {{"", "                    "}, {"keyword", "let"}, {"", " "}, {"punctuation.bracket", "("}, {"variable", "primary_tx"}, {"punctuation.delimiter", ","}, {"", " "}, {"variable", "primary_rx"}, {"punctuation.bracket", ")"}, {"", " "}, {"operator", "="}, {"", " "}, {"function.macro", "$crate"}, {"punctuation.delimiter", "::"}, {"variable", "channel_routing_for"}, {"operator", "!"}, {"punctuation.bracket", "("}, {"", "\
"}},
  {{"", "                        "}, {"operator", "@"}, {"variable", "construct"}, {"", " "}, {"function.macro", "$"}, {"punctuation.bracket", "("}, {"function.macro", "$blocking"}, {"punctuation.bracket", ")"}, {"operator", "?"}, {"", " "}, {"function.macro", "$pcap"}, {"", "\
"}},
  {{"", "                    "}, {"punctuation.bracket", ")"}, {"punctuation.delimiter", ";"}, {"", "\
"}},
  {{"", "                    "}, {"function.macro", "$"}, {"punctuation.bracket", "("}, {"function.macro", "$"}, {"punctuation.bracket", "("}, {"", "\
"}},
  {{"", "                        "}, {"keyword", "let"}, {"", " "}, {"punctuation.bracket", "("}, {"", " "}, {"punctuation.bracket", "["}, {"operator", "<"}, {"function.macro", "$source"}, {"punctuation.delimiter", ":"}, {"variable", "snake"}, {"", " "}, {"character.special", "_"}, {"", " "}, {"function.macro", "$field"}, {"", " "}, {"variable", "_tx"}, {"operator", ">"}, {"punctuation.bracket", "]"}, {"punctuation.delimiter", ","}, {"", " "}, {"punctuation.bracket", "["}, {"operator", "<"}, {"function.macro", "$source"}, {"punctuation.delimiter", ":"}, {"variable", "snake"}, {"", " "}, {"character.special", "_"}, {"", " "}, {"function.macro", "$field"}, {"", " "}, {"variable", "_rx"}, {"operator", ">"}, {"punctuation.bracket", "]"}, {"", " "}, {"punctuation.bracket", ")"}, {"", " "}, {"operator", "="}, {"", " "}, {"variable", "rtrb"}, {"punctuation.delimiter", "::"}, {"type", "RingBuffer"}, {"punctuation.delimiter", "::"}, {"variable", "new"}, {"punctuation.bracket", "("}, {"function.macro", "$acap"}, {"punctuation.bracket", ")"}, {"punctuation.delimiter", ";"}, {"", "\
"}},
  {{"", "                    "}, {"punctuation.bracket", ")"}, {"operator", "*"}, {"punctuation.bracket", ")"}, {"operator", "*"}, {"", "\
"}},
  {{"", "                    "}, {"punctuation.bracket", "("}, {"", "\
"}},
  {{"", "                        "}, {"variable", "primary_tx"}, {"punctuation.delimiter", ","}, {"", "\
"}},
  {{"", "                        "}, {"punctuation.bracket", "["}, {"operator", "<"}, {"function.macro", "$prefix"}, {"", " "}, {"type", "TxBundle"}, {"operator", ">"}, {"punctuation.bracket", "]"}, {"", " "}, {"punctuation.bracket", "{"}, {"", "\
"}},
  {{"", "                            "}, {"function.macro", "$"}, {"punctuation.bracket", "("}, {"function.macro", "$"}, {"punctuation.bracket", "(["}, {"operator", "<"}, {"function.macro", "$source"}, {"punctuation.delimiter", ":"}, {"variable", "snake"}, {"", " "}, {"character.special", "_"}, {"", " "}, {"function.macro", "$field"}, {"operator", ">"}, {"punctuation.bracket", "]"}, {"punctuation.delimiter", ":"}, {"", " "}, {"constant.builtin", "Some"}, {"punctuation.bracket", "(["}, {"operator", "<"}, {"function.macro", "$source"}, {"punctuation.delimiter", ":"}, {"variable", "snake"}, {"", " "}, {"character.special", "_"}, {"", " "}, {"function.macro", "$field"}, {"", " "}, {"variable", "_tx"}, {"operator", ">"}, {"punctuation.bracket", "])"}, {"punctuation.delimiter", ","}, {"punctuation.bracket", ")"}, {"operator", "*"}, {"punctuation.bracket", ")"}, {"operator", "*"}, {"", "\
"}},
  {{"", "                        "}, {"punctuation.bracket", "}"}, {"punctuation.delimiter", ","}, {"", "\
"}},
  {{"", "                        "}, {"type", "Self"}, {"", " "}, {"punctuation.bracket", "{"}, {"", "\
"}},
  {{"", "                            "}, {"variable", "primary"}, {"punctuation.delimiter", ":"}, {"", " "}, {"variable", "primary_rx"}, {"punctuation.delimiter", ","}, {"", "\
"}},
  {{"", "                            "}, {"function.macro", "$"}, {"punctuation.bracket", "("}, {"function.macro", "$"}, {"punctuation.bracket", "(["}, {"operator", "<"}, {"function.macro", "$source"}, {"punctuation.delimiter", ":"}, {"variable", "snake"}, {"", " "}, {"character.special", "_"}, {"", " "}, {"function.macro", "$field"}, {"operator", ">"}, {"punctuation.bracket", "]"}, {"punctuation.delimiter", ":"}, {"", " "}, {"punctuation.bracket", "["}, {"operator", "<"}, {"function.macro", "$source"}, {"punctuation.delimiter", ":"}, {"variable", "snake"}, {"", " "}, {"character.special", "_"}, {"", " "}, {"function.macro", "$field"}, {"", " "}, {"variable", "_rx"}, {"operator", ">"}, {"punctuation.bracket", "]"}, {"punctuation.delimiter", ","}, {"punctuation.bracket", ")"}, {"operator", "*"}, {"punctuation.bracket", ")"}, {"operator", "*"}, {"", "\
"}},
  {{"", "                        "}, {"punctuation.bracket", "}"}, {"punctuation.delimiter", ","}, {"", "\
"}},
  {{"", "                    "}, {"punctuation.bracket", ")"}, {"", "\
"}},
  {{"", "                "}, {"punctuation.bracket", "}"}, {"", "\
"}},
  {{"", "\
"}},
  {{"", "                "}, {"keyword.function", "fn"}, {"", " "}, {"variable", "primary"}, {"punctuation.bracket", "("}, {"operator", "&"}, {"keyword.modifier", "mut"}, {"", " "}, {"variable.builtin", "self"}, {"punctuation.bracket", ")"}, {"", " "}, {"punctuation.delimiter", "->"}, {"", " "}, {"operator", "&"}, {"keyword.modifier", "mut"}, {"", " "}, {"type", "Self"}, {"punctuation.delimiter", "::"}, {"type", "PrimaryRx"}, {"", " "}, {"punctuation.bracket", "{"}, {"", "\
"}},
  {{"", "                    "}, {"operator", "&"}, {"keyword.modifier", "mut"}, {"", " "}, {"variable.builtin", "self"}, {"punctuation.delimiter", "."}, {"variable", "primary"}, {"", "\
"}},
  {{"", "                "}, {"punctuation.bracket", "}"}, {"", "\
"}},
  {{"", "\
"}},
  {{"", "                #"}, {"punctuation.bracket", "["}, {"variable", "allow"}, {"punctuation.bracket", "("}, {"variable", "unused_imports"}, {"punctuation.bracket", ")]"}, {"", "\
"}},
  {{"", "                "}, {"keyword.function", "fn"}, {"", " "}, {"variable", "drain_primary"}, {"punctuation.bracket", "("}, {"operator", "&"}, {"keyword.modifier", "mut"}, {"", " "}, {"variable.builtin", "self"}, {"punctuation.delimiter", ","}, {"", " "}, {"variable", "state"}, {"punctuation.delimiter", ":"}, {"", " "}, {"operator", "&"}, {"keyword.modifier", "mut"}, {"", " "}, {"type", "State"}, {"punctuation.bracket", ")"}, {"", " "}, {"punctuation.bracket", "{"}, {"", "\
"}},
  {{"", "                    "}, {"keyword.import", "use"}, {"", " "}, {"function.macro", "$crate"}, {"punctuation.delimiter", "::"}, {"variable", "sync"}, {"punctuation.delimiter", "::"}, {"variable", "chan"}, {"punctuation.delimiter", "::"}, {"type", "Rx"}, {"punctuation.delimiter", ";"}, {"", "\
"}},
  {{"", "                    "}, {"keyword.repeat", "while"}, {"", " "}, {"keyword", "let"}, {"", " "}, {"constant.builtin", "Ok"}, {"punctuation.bracket", "("}, {"variable", "msg"}, {"punctuation.bracket", ")"}, {"", " "}, {"operator", "="}, {"", " "}, {"variable.builtin", "self"}, {"punctuation.delimiter", "."}, {"variable", "primary"}, {"punctuation.delimiter", "."}, {"variable", "pop"}, {"punctuation.bracket", "()"}, {"", " "}, {"punctuation.bracket", "{"}, {"", "\
"}},
  {{"", "                        "}, {"function.macro", "$crate"}, {"punctuation.delimiter", "::"}, {"variable", "sync"}, {"punctuation.delimiter", "::"}, {"variable", "worker"}, {"punctuation.delimiter", "::"}, {"type", "MessageHandler"}, {"punctuation.delimiter", "::"}, {"variable", "handle"}, {"punctuation.bracket", "("}, {"variable", "state"}, {"punctuation.delimiter", ","}, {"", " "}, {"variable", "msg"}, {"punctuation.bracket", ")"}, {"punctuation.delimiter", ";"}, {"", "\
"}},
  {{"", "                    "}, {"punctuation.bracket", "}"}, {"", "\
"}},
  {{"", "                "}, {"punctuation.bracket", "}"}, {"", "\
"}},
  {{"", "\
"}},
  {{"", "                #"}, {"punctuation.bracket", "["}, {"variable", "allow"}, {"punctuation.bracket", "("}, {"variable", "unused_variables"}, {"punctuation.bracket", ")]"}, {"", "\
"}},
  {{"", "                "}, {"keyword.function", "fn"}, {"", " "}, {"variable", "drain_aux"}, {"punctuation.bracket", "("}, {"operator", "&"}, {"keyword.modifier", "mut"}, {"", " "}, {"variable.builtin", "self"}, {"punctuation.delimiter", ","}, {"", " "}, {"variable", "state"}, {"punctuation.delimiter", ":"}, {"", " "}, {"operator", "&"}, {"keyword.modifier", "mut"}, {"", " "}, {"type", "State"}, {"punctuation.bracket", ")"}, {"", " "}, {"punctuation.bracket", "{"}, {"", "\
"}},
  {{"", "                    "}, {"function.macro", "$crate"}, {"punctuation.delimiter", "::"}, {"variable", "channel_routing_for"}, {"operator", "!"}, {"punctuation.bracket", "("}, {"operator", "@"}, {"variable", "drain_aux"}, {"", " "}, {"variable.builtin", "self"}, {"", " "}, {"variable", "state"}, {"", " "}, {"function.macro", "$"}, {"punctuation.bracket", "("}, {"function.macro", "$source"}, {"", " "}, {"punctuation.bracket", "{"}, {"", " "}, {"function.macro", "$"}, {"punctuation.bracket", "("}, {"function.macro", "$field"}, {"punctuation.bracket", ")"}, {"", ","}, {"operator", "*"}, {"", " "}, {"punctuation.bracket", "})"}, {"operator", "*"}, {"punctuation.bracket", ")"}, {"punctuation.delimiter", ";"}, {"", "\
"}},
  {{"", "                "}, {"punctuation.bracket", "}"}, {"", "\
"}},
  {{"", "            "}, {"punctuation.bracket", "}"}, {"", "\
"}},
  {{"", "            "}, {"comment", "// }}}"}, {"", "\
"}},
  {{"", "        "}, {"punctuation.bracket", "}"}, {"", "\
"}},
  {{"", "    "}, {"punctuation.bracket", "}"}, {"punctuation.delimiter", ";"}, {"", "\
"}},
  {{"", "\
"}},
  {{"", "    "}, {"comment", "// without primary channel (non-Worker handler like App)"}, {"", "\
"}},
  {{"", "    "}, {"punctuation.bracket", "("}, {"", "\
"}},
  {{"", "        "}, {"function.macro", "$prefix"}, {"punctuation.delimiter", ":"}, {"", "ident "}, {"punctuation.bracket", "{"}, {"", "\
"}},
  {{"", "            "}, {"function.macro", "$"}, {"punctuation.bracket", "("}, {"", " "}, {"function.macro", "$source"}, {"punctuation.delimiter", ":"}, {"", "ident "}, {"punctuation.delimiter", "=>"}, {"", " "}, {"punctuation.bracket", "{"}, {"", "\
"}},
  {{"", "                "}, {"function.macro", "$"}, {"punctuation.bracket", "("}, {"", " "}, {"function.macro", "$field"}, {"punctuation.delimiter", ":"}, {"", "ident "}, {"punctuation.delimiter", ":"}, {"", " "}, {"punctuation.bracket", "["}, {"", " "}, {"function.macro", "$amsg"}, {"punctuation.delimiter", ":"}, {"", "ty "}, {"punctuation.delimiter", ";"}, {"", " "}, {"function.macro", "$acap"}, {"punctuation.delimiter", ":"}, {"", "expr "}, {"punctuation.bracket", "]"}, {"", " "}, {"punctuation.bracket", ")"}, {"", ","}, {"operator", "*"}, {"", " "}, {"function.macro", "$"}, {"punctuation.bracket", "("}, {"punctuation.delimiter", ","}, {"punctuation.bracket", ")"}, {"operator", "?"}, {"", "\
"}},
  {{"", "            "}, {"punctuation.bracket", "})"}, {"", ","}, {"operator", "+"}, {"", " "}, {"function.macro", "$"}, {"punctuation.bracket", "("}, {"punctuation.delimiter", ","}, {"punctuation.bracket", ")"}, {"operator", "?"}, {"", "\
"}},
  {{"", "        "}, {"punctuation.bracket", "}"}, {"", "\
"}},
  {{"", "    "}, {"punctuation.bracket", ")"}, {"", " "}, {"punctuation.delimiter", "=>"}, {"", " "}, {"punctuation.bracket", "{"}, {"", "\
"}},
  {{"", "        "}, {"function.macro", "$crate"}, {"punctuation.delimiter", "::"}, {"variable", "channel_routing_for"}, {"operator", "!"}, {"punctuation.bracket", "("}, {"operator", "@"}, {"variable", "aux_tx"}, {"", " "}, {"function.macro", "$prefix"}, {"", " "}, {"function.macro", "$"}, {"punctuation.bracket", "("}, {"function.macro", "$source"}, {"", " "}, {"punctuation.bracket", "{"}, {"", " "}, {"function.macro", "$"}, {"punctuation.bracket", "("}, {"function.macro", "$field"}, {"punctuation.delimiter", ":"}, {"", " "}, {"function.macro", "$amsg"}, {"punctuation.bracket", ")"}, {"", ","}, {"operator", "*"}, {"", " "}, {"punctuation.bracket", "})"}, {"operator", "*"}, {"punctuation.bracket", ")"}, {"punctuation.delimiter", ";"}, {"", "\
"}},
  {{"", "        "}, {"variable", "paste"}, {"punctuation.delimiter", "::"}, {"variable", "paste"}, {"operator", "!"}, {"", " "}, {"punctuation.bracket", "{"}, {"", "\
"}},
  {{"", "            "}, {"comment", "// {{{ RxBundle struct owns all consumers"}, {"", "\
"}},
  {{"", "            "}, {"keyword.modifier", "pub"}, {"", " "}, {"keyword.type", "struct"}, {"", " "}, {"punctuation.bracket", "["}, {"operator", "<"}, {"function.macro", "$prefix"}, {"", " "}, {"type", "RxBundle"}, {"operator", ">"}, {"punctuation.bracket", "]"}, {"", " "}, {"punctuation.bracket", "{"}, {"", "\
"}},
  {{"", "                "}, {"function.macro", "$"}, {"punctuation.bracket", "("}, {"function.macro", "$"}, {"punctuation.bracket", "(["}, {"operator", "<"}, {"function.macro", "$source"}, {"punctuation.delimiter", ":"}, {"variable", "snake"}, {"", " "}, {"character.special", "_"}, {"", " "}, {"function.macro", "$field"}, {"operator", ">"}, {"punctuation.bracket", "]"}, {"punctuation.delimiter", ":"}, {"", " "}, {"variable", "rtrb"}, {"punctuation.delimiter", "::"}, {"type", "Consumer"}, {"operator", "<"}, {"function.macro", "$amsg"}, {"operator", ">"}, {"punctuation.delimiter", ","}, {"punctuation.bracket", ")"}, {"operator", "*"}, {"punctuation.bracket", ")"}, {"operator", "*"}, {"", "\
"}},
  {{"", "            "}, {"punctuation.bracket", "}"}, {"", "\
"}},
  {{"", "\
"}},
  {{"", "            "}, {"keyword", "impl"}, {"", " "}, {"punctuation.bracket", "["}, {"operator", "<"}, {"function.macro", "$prefix"}, {"", " "}, {"type", "RxBundle"}, {"operator", ">"}, {"punctuation.bracket", "]"}, {"", " "}, {"punctuation.bracket", "{"}, {"", "\
"}},
  {{"", "                "}, {"keyword.modifier", "pub"}, {"", " "}, {"keyword.function", "fn"}, {"", " "}, {"variable", "drain_all"}, {"operator", "<"}, {"constant", "D"}, {"operator", ">"}, {"punctuation.bracket", "("}, {"operator", "&"}, {"keyword.modifier", "mut"}, {"", " "}, {"variable.builtin", "self"}, {"punctuation.delimiter", ","}, {"", " "}, {"variable", "dest"}, {"punctuation.delimiter", ":"}, {"", " "}, {"operator", "&"}, {"keyword.modifier", "mut"}, {"", " "}, {"constant", "D"}, {"punctuation.bracket", ")"}, {"", "\
"}},
  {{"", "                "}, {"keyword", "where"}, {"", " "}, {"constant", "D"}, {"punctuation.delimiter", ":"}, {"", " "}, {"function.macro", "$"}, {"punctuation.bracket", "("}, {"function.macro", "$"}, {"punctuation.bracket", "("}, {"function.macro", "$crate"}, {"punctuation.delimiter", "::"}, {"variable", "sync"}, {"punctuation.delimiter", "::"}, {"variable", "worker"}, {"punctuation.delimiter", "::"}, {"type", "MessageHandler"}, {"operator", "<"}, {"function.macro", "$amsg"}, {"operator", ">"}, {"", " "}, {"operator", "+"}, {"punctuation.bracket", ")"}, {"operator", "*"}, {"punctuation.bracket", ")"}, {"operator", "*"}, {"", " "}, {"type", "Sized"}, {"", " "}, {"punctuation.bracket", "{"}, {"", "\
"}},
  {{"", "                    "}, {"function.macro", "$crate"}, {"punctuation.delimiter", "::"}, {"variable", "channel_routing_for"}, {"operator", "!"}, {"punctuation.bracket", "("}, {"operator", "@"}, {"variable", "drain_aux"}, {"", " "}, {"variable.builtin", "self"}, {"", " "}, {"variable", "dest"}, {"", " "}, {"function.macro", "$"}, {"punctuation.bracket", "("}, {"function.macro", "$source"}, {"", " "}, {"punctuation.bracket", "{"}, {"", " "}, {"function.macro", "$"}, {"punctuation.bracket", "("}, {"function.macro", "$field"}, {"punctuation.bracket", ")"}, {"", ","}, {"operator", "*"}, {"", " "}, {"punctuation.bracket", "})"}, {"operator", "*"}, {"punctuation.bracket", ")"}, {"punctuation.delimiter", ";"}, {"", "\
"}},
  {{"", "                "}, {"punctuation.bracket", "}"}, {"", "\
"}},
  {{"", "            "}, {"punctuation.bracket", "}"}, {"", "\
"}},
  {{"", "            "}, {"comment", "// }}}"}, {"", "\
"}},
  {{"", "\
"}},
  {{"", "            "}, {"comment", "// {{{ TxBundle struct handles construction"}, {"", "\
"}},
  {{"", "            "}, {"keyword", "impl"}, {"", " "}, {"punctuation.bracket", "["}, {"operator", "<"}, {"function.macro", "$prefix"}, {"", " "}, {"type", "TxBundle"}, {"operator", ">"}, {"punctuation.bracket", "]"}, {"", " "}, {"punctuation.bracket", "{"}, {"", "\
"}},
  {{"", "                "}, {"keyword.modifier", "pub"}, {"", " "}, {"keyword.function", "fn"}, {"", " "}, {"variable", "new_pair"}, {"punctuation.bracket", "()"}, {"", " "}, {"punctuation.delimiter", "->"}, {"", " "}, {"punctuation.bracket", "(["}, {"operator", "<"}, {"function.macro", "$prefix"}, {"", " "}, {"type", "TxBundle"}, {"operator", ">"}, {"punctuation.bracket", "]"}, {"punctuation.delimiter", ","}, {"", " "}, {"punctuation.bracket", "["}, {"operator", "<"}, {"function.macro", "$prefix"}, {"", " "}, {"type", "RxBundle"}, {"operator", ">"}, {"punctuation.bracket", "])"}, {"", " "}, {"punctuation.bracket", "{"}, {"", "\
"}},
  {{"", "                    "}, {"function.macro", "$"}, {"punctuation.bracket", "("}, {"function.macro", "$"}, {"punctuation.bracket", "("}, {"", "\
"}},
  {{"", "                        "}, {"keyword", "let"}, {"", " "}, {"punctuation.bracket", "("}, {"", " "}, {"punctuation.bracket", "["}, {"operator", "<"}, {"function.macro", "$source"}, {"punctuation.delimiter", ":"}, {"variable", "snake"}, {"", " "}, {"character.special", "_"}, {"", " "}, {"function.macro", "$field"}, {"", " "}, {"variable", "_tx"}, {"operator", ">"}, {"punctuation.bracket", "]"}, {"punctuation.delimiter", ","}, {"", " "}, {"punctuation.bracket", "["}, {"operator", "<"}, {"function.macro", "$source"}, {"punctuation.delimiter", ":"}, {"variable", "snake"}, {"", " "}, {"character.special", "_"}, {"", " "}, {"function.macro", "$field"}, {"", " "}, {"variable", "_rx"}, {"operator", ">"}, {"punctuation.bracket", "]"}, {"", " "}, {"punctuation.bracket", ")"}, {"", " "}, {"operator", "="}, {"", " "}, {"variable", "rtrb"}, {"punctuation.delimiter", "::"}, {"type", "RingBuffer"}, {"punctuation.delimiter", "::"}, {"variable", "new"}, {"punctuation.bracket", "("}, {"function.macro", "$acap"}, {"punctuation.bracket", ")"}, {"punctuation.delimiter", ";"}, {"", "\
"}},
  {{"", "                    "}, {"punctuation.bracket", ")"}, {"operator", "*"}, {"punctuation.bracket", ")"}, {"operator", "*"}, {"", "\
"}},
  {{"", "                    "}, {"punctuation.bracket", "("}, {"", "\
"}},
  {{"", "                        "}, {"punctuation.bracket", "["}, {"operator", "<"}, {"function.macro", "$prefix"}, {"", " "}, {"type", "TxBundle"}, {"operator", ">"}, {"punctuation.bracket", "]"}, {"", " "}, {"punctuation.bracket", "{"}, {"", "\
"}},
  {{"", "                            "}, {"function.macro", "$"}, {"punctuation.bracket", "("}, {"function.macro", "$"}, {"punctuation.bracket", "(["}, {"operator", "<"}, {"function.macro", "$source"}, {"punctuation.delimiter", ":"}, {"variable", "snake"}, {"", " "}, {"character.special", "_"}, {"", " "}, {"function.macro", "$field"}, {"operator", ">"}, {"punctuation.bracket", "]"}, {"punctuation.delimiter", ":"}, {"", " "}, {"constant.builtin", "Some"}, {"punctuation.bracket", "(["}, {"operator", "<"}, {"function.macro", "$source"}, {"punctuation.delimiter", ":"}, {"variable", "snake"}, {"", " "}, {"character.special", "_"}, {"", " "}, {"function.macro", "$field"}, {"", " "}, {"variable", "_tx"}, {"operator", ">"}, {"punctuation.bracket", "])"}, {"punctuation.delimiter", ","}, {"punctuation.bracket", ")"}, {"operator", "*"}, {"punctuation.bracket", ")"}, {"operator", "*"}, {"", "\
"}},
  {{"", "                        "}, {"punctuation.bracket", "}"}, {"punctuation.delimiter", ","}, {"", "\
"}},
  {{"", "                        "}, {"punctuation.bracket", "["}, {"operator", "<"}, {"function.macro", "$prefix"}, {"", " "}, {"type", "RxBundle"}, {"operator", ">"}, {"punctuation.bracket", "]"}, {"", " "}, {"punctuation.bracket", "{"}, {"", "\
"}},
  {{"", "                            "}, {"function.macro", "$"}, {"punctuation.bracket", "("}, {"function.macro", "$"}, {"punctuation.bracket", "(["}, {"operator", "<"}, {"function.macro", "$source"}, {"punctuation.delimiter", ":"}, {"variable", "snake"}, {"", " "}, {"character.special", "_"}, {"", " "}, {"function.macro", "$field"}, {"operator", ">"}, {"punctuation.bracket", "]"}, {"punctuation.delimiter", ":"}, {"", " "}, {"punctuation.bracket", "["}, {"operator", "<"}, {"function.macro", "$source"}, {"punctuation.delimiter", ":"}, {"variable", "snake"}, {"", " "}, {"character.special", "_"}, {"", " "}, {"function.macro", "$field"}, {"", " "}, {"variable", "_rx"}, {"operator", ">"}, {"punctuation.bracket", "]"}, {"punctuation.delimiter", ","}, {"punctuation.bracket", ")"}, {"operator", "*"}, {"punctuation.bracket", ")"}, {"operator", "*"}, {"", "\
"}},
  {{"", "                        "}, {"punctuation.bracket", "}"}, {"punctuation.delimiter", ","}, {"", "\
"}},
  {{"", "                    "}, {"punctuation.bracket", ")"}, {"", "\
"}},
  {{"", "                "}, {"punctuation.bracket", "}"}, {"", "\
"}},
  {{"", "            "}, {"punctuation.bracket", "}"}, {"", "\
"}},
  {{"", "            "}, {"comment", "// }}}"}, {"", "\
"}},
  {{"", "        "}, {"punctuation.bracket", "}"}, {"", "\
"}},
  {{"", "    "}, {"punctuation.bracket", "}"}, {"punctuation.delimiter", ";"}, {"", "\
"}},
  {{"", "\
"}},
  {{"", "    "}, {"punctuation.bracket", "("}, {"operator", "@"}, {"variable", "aux_tx"}, {"", " "}, {"function.macro", "$prefix"}, {"punctuation.delimiter", ":"}, {"", "ident "}, {"function.macro", "$"}, {"punctuation.bracket", "("}, {"function.macro", "$source"}, {"punctuation.delimiter", ":"}, {"", "ident "}, {"punctuation.bracket", "{"}, {"", " "}, {"function.macro", "$"}, {"punctuation.bracket", "("}, {"function.macro", "$field"}, {"punctuation.delimiter", ":"}, {"", "ident"}, {"punctuation.delimiter", ":"}, {"", " "}, {"function.macro", "$amsg"}, {"punctuation.delimiter", ":"}, {"", "ty"}, {"punctuation.bracket", ")"}, {"", ","}, {"operator", "*"}, {"", " "}, {"punctuation.bracket", "})"}, {"operator", "*"}, {"punctuation.bracket", ")"}, {"", " "}, {"punctuation.delimiter", "=>"}, {"", " "}, {"punctuation.bracket", "{"}, {"", "\
"}},
  {{"", "        "}, {"variable", "paste"}, {"punctuation.delimiter", "::"}, {"variable", "paste"}, {"operator", "!"}, {"", " "}, {"punctuation.bracket", "{"}, {"", "\
"}},
  {{"", "            "}, {"comment", "// {{{ TxBundle struct with take_$source()"}, {"", "\
"}},
  {{"", "            "}, {"keyword.modifier", "pub"}, {"", " "}, {"keyword.type", "struct"}, {"", " "}, {"punctuation.bracket", "["}, {"operator", "<"}, {"function.macro", "$prefix"}, {"", " "}, {"type", "TxBundle"}, {"operator", ">"}, {"punctuation.bracket", "]"}, {"", " "}, {"punctuation.bracket", "{"}, {"", "\
"}},
  {{"", "                "}, {"function.macro", "$"}, {"punctuation.bracket", "("}, {"function.macro", "$"}, {"punctuation.bracket", "("}, {"keyword.modifier", "pub"}, {"", " "}, {"punctuation.bracket", "["}, {"operator", "<"}, {"function.macro", "$source"}, {"punctuation.delimiter", ":"}, {"variable", "snake"}, {"", " "}, {"character.special", "_"}, {"", " "}, {"function.macro", "$field"}, {"operator", ">"}, {"punctuation.bracket", "]"}, {"punctuation.delimiter", ":"}, {"", " "}, {"type", "Option"}, {"operator", "<"}, {"variable", "rtrb"}, {"punctuation.delimiter", "::"}, {"type", "Producer"}, {"operator", "<"}, {"function.macro", "$amsg"}, {"operator", ">>"}, {"punctuation.delimiter", ","}, {"punctuation.bracket", ")"}, {"operator", "*"}, {"punctuation.bracket", ")"}, {"operator", "*"}, {"", "\
"}},
  {{"", "            "}, {"punctuation.bracket", "}"}, {"", "\
"}},
  {{"", "\
"}},
  {{"", "            "}, {"function.macro", "$"}, {"punctuation.bracket", "("}, {"", "\
"}},
  {{"", "                "}, {"keyword.modifier", "pub"}, {"", " "}, {"keyword.type", "struct"}, {"", " "}, {"punctuation.bracket", "["}, {"operator", "<"}, {"function.macro", "$source"}, {"", " "}, {"type", "To"}, {"", " "}, {"function.macro", "$prefix"}, {"operator", ">"}, {"punctuation.bracket", "]"}, {"", " "}, {"punctuation.bracket", "{"}, {"", "\
"}},
  {{"", "                    "}, {"function.macro", "$"}, {"punctuation.bracket", "("}, {"keyword.modifier", "pub"}, {"", " "}, {"function.macro", "$field"}, {"punctuation.delimiter", ":"}, {"", " "}, {"variable", "rtrb"}, {"punctuation.delimiter", "::"}, {"type", "Producer"}, {"operator", "<"}, {"function.macro", "$amsg"}, {"operator", ">"}, {"punctuation.delimiter", ","}, {"punctuation.bracket", ")"}, {"operator", "*"}, {"", "\
"}},
  {{"", "                "}, {"punctuation.bracket", "}"}, {"", "\
"}},
  {{"", "            "}, {"punctuation.bracket", ")"}, {"operator", "*"}, {"", "\
"}},
  {{"", "\
"}},
  {{"", "            "}, {"keyword", "impl"}, {"", " "}, {"punctuation.bracket", "["}, {"operator", "<"}, {"function.macro", "$prefix"}, {"", " "}, {"type", "TxBundle"}, {"operator", ">"}, {"punctuation.bracket", "]"}, {"", " "}, {"punctuation.bracket", "{"}, {"", "\
"}},
  {{"", "                "}, {"function.macro", "$"}, {"punctuation.bracket", "("}, {"", "\
"}},
  {{"", "                    "}, {"keyword.modifier", "pub"}, {"", " "}, {"keyword.function", "fn"}, {"", " "}, {"punctuation.bracket", "["}, {"operator", "<"}, {"variable", "take_"}, {"", " "}, {"function.macro", "$source"}, {"punctuation.delimiter", ":"}, {"variable", "snake"}, {"operator", ">"}, {"punctuation.bracket", "]("}, {"", "\
"}},
  {{"", "                        "}, {"operator", "&"}, {"keyword.modifier", "mut"}, {"", " "}, {"variable.builtin", "self"}, {"punctuation.delimiter", ","}, {"", "\
"}},
  {{"", "                    "}, {"punctuation.bracket", ")"}, {"", " "}, {"punctuation.delimiter", "->"}, {"", " "}, {"type", "Option"}, {"operator", "<"}, {"punctuation.bracket", "["}, {"operator", "<"}, {"function.macro", "$source"}, {"", " "}, {"type", "To"}, {"", " "}, {"function.macro", "$prefix"}, {"operator", ">"}, {"punctuation.bracket", "]"}, {"operator", ">"}, {"", " "}, {"punctuation.bracket", "{"}, {"", "\
"}},
  {{"", "                        "}, {"constant.builtin", "Some"}, {"punctuation.bracket", "(["}, {"operator", "<"}, {"function.macro", "$source"}, {"", " "}, {"type", "To"}, {"", " "}, {"function.macro", "$prefix"}, {"operator", ">"}, {"punctuation.bracket", "]"}, {"", " "}, {"punctuation.bracket", "{"}, {"", "\
"}},
  {{"", "                            "}, {"function.macro", "$"}, {"punctuation.bracket", "("}, {"function.macro", "$field"}, {"punctuation.delimiter", ":"}, {"", " "}, {"variable.builtin", "self"}, {"punctuation.delimiter", "."}, {"punctuation.bracket", "["}, {"operator", "<"}, {"function.macro", "$source"}, {"punctuation.delimiter", ":"}, {"variable", "snake"}, {"", " "}, {"character.special", "_"}, {"", " "}, {"function.macro", "$field"}, {"operator", ">"}, {"punctuation.bracket", "]"}, {"punctuation.delimiter", "."}, {"variable", "take"}, {"punctuation.bracket", "()"}, {"operator", "?"}, {"punctuation.delimiter", ","}, {"punctuation.bracket", ")"}, {"operator", "*"}, {"", "\
"}},
  {{"", "                        "}, {"punctuation.bracket", "})"}, {"", "\
"}},
  {{"", "                    "}, {"punctuation.bracket", "}"}, {"", "\
"}},
  {{"", "                "}, {"punctuation.bracket", ")"}, {"operator", "*"}, {"", "\
"}},
  {{"", "            "}, {"punctuation.bracket", "}"}, {"", "\
"}},
  {{"", "            "}, {"comment", "// }}}"}, {"", "\
"}},
  {{"", "        "}, {"punctuation.bracket", "}"}, {"", "\
"}},
  {{"", "    "}, {"punctuation.bracket", "}"}, {"punctuation.delimiter", ";"}, {"", "\
"}},
  {{"", "\
"}},
  {{"", "    "}, {"comment", "// drain aux consumers into dest"}, {"", "\
"}},
  {{"", "    "}, {"punctuation.bracket", "("}, {"operator", "@"}, {"variable", "drain_aux"}, {"", " "}, {"function.macro", "$self"}, {"punctuation.delimiter", ":"}, {"", "ident "}, {"function.macro", "$dest"}, {"punctuation.delimiter", ":"}, {"", "ident "}, {"function.macro", "$"}, {"punctuation.bracket", "("}, {"function.macro", "$source"}, {"punctuation.delimiter", ":"}, {"", "ident "}, {"punctuation.bracket", "{"}, {"", " "}, {"function.macro", "$"}, {"punctuation.bracket", "("}, {"function.macro", "$field"}, {"punctuation.delimiter", ":"}, {"", "ident"}, {"punctuation.bracket", ")"}, {"", ","}, {"operator", "*"}, {"", " "}, {"punctuation.bracket", "})"}, {"operator", "*"}, {"punctuation.bracket", ")"}, {"", " "}, {"punctuation.delimiter", "=>"}, {"", " "}, {"punctuation.bracket", "{"}, {"", "\
"}},
  {{"", "        "}, {"variable", "paste"}, {"punctuation.delimiter", "::"}, {"variable", "paste"}, {"operator", "!"}, {"", " "}, {"punctuation.bracket", "{"}, {"", "\
"}},
  {{"", "            "}, {"function.macro", "$"}, {"punctuation.bracket", "("}, {"function.macro", "$"}, {"punctuation.bracket", "("}, {"", "\
"}},
  {{"", "                "}, {"keyword.repeat", "while"}, {"", " "}, {"keyword", "let"}, {"", " "}, {"constant.builtin", "Ok"}, {"punctuation.bracket", "("}, {"variable", "msg"}, {"punctuation.bracket", ")"}, {"", " "}, {"operator", "="}, {"", " "}, {"function.macro", "$self"}, {"punctuation.delimiter", "."}, {"punctuation.bracket", "["}, {"operator", "<"}, {"function.macro", "$source"}, {"punctuation.delimiter", ":"}, {"variable", "snake"}, {"", " "}, {"character.special", "_"}, {"", " "}, {"function.macro", "$field"}, {"operator", ">"}, {"punctuation.bracket", "]"}, {"punctuation.delimiter", "."}, {"variable", "pop"}, {"punctuation.bracket", "()"}, {"", " "}, {"punctuation.bracket", "{"}, {"", "\
"}},
  {{"", "                    "}, {"function.macro", "$crate"}, {"punctuation.delimiter", "::"}, {"variable", "sync"}, {"punctuation.delimiter", "::"}, {"variable", "worker"}, {"punctuation.delimiter", "::"}, {"type", "MessageHandler"}, {"punctuation.delimiter", "::"}, {"variable", "handle"}, {"punctuation.bracket", "("}, {"function.macro", "$dest"}, {"punctuation.delimiter", ","}, {"", " "}, {"variable", "msg"}, {"punctuation.bracket", ")"}, {"punctuation.delimiter", ";"}, {"", "\
"}},
  {{"", "                "}, {"punctuation.bracket", "}"}, {"", "\
"}},
  {{"", "            "}, {"punctuation.bracket", ")"}, {"operator", "*"}, {"punctuation.bracket", ")"}, {"operator", "*"}, {"", "\
"}},
  {{"", "        "}, {"punctuation.bracket", "}"}, {"", "\
"}},
  {{"", "    "}, {"punctuation.bracket", "}"}, {"punctuation.delimiter", ";"}, {"", "\
"}},
  {{"", "\
"}},
  {{"", "    "}, {"comment", "// {{{ impl RxBlocking"}, {"", "\
"}},
  {{"", "    "}, {"punctuation.bracket", "("}, {"operator", "@"}, {"variable", "impl_rx_blocking"}, {"", " "}, {"variable", "blocking"}, {"", " "}, {"function.macro", "$prefix"}, {"punctuation.delimiter", ":"}, {"", "ident "}, {"function.macro", "$pmsg"}, {"punctuation.delimiter", ":"}, {"", "ty"}, {"punctuation.bracket", ")"}, {"", " "}, {"punctuation.delimiter", "=>"}, {"", " "}, {"punctuation.bracket", "{"}, {"", "\
"}},
  {{"", "        "}, {"variable", "paste"}, {"punctuation.delimiter", "::"}, {"variable", "paste"}, {"operator", "!"}, {"", " "}, {"punctuation.bracket", "{"}, {"", "\
"}},
  {{"", "            "}, {"keyword", "impl"}, {"", " "}, {"function.macro", "$crate"}, {"punctuation.delimiter", "::"}, {"variable", "sync"}, {"punctuation.delimiter", "::"}, {"variable", "chan"}, {"punctuation.delimiter", "::"}, {"type", "RxBlocking"}, {"operator", "<"}, {"function.macro", "$pmsg"}, {"operator", ">"}, {"", " "}, {"keyword", "for"}, {"", " "}, {"punctuation.bracket", "["}, {"operator", "<"}, {"function.macro", "$prefix"}, {"", " "}, {"type", "RxBundle"}, {"operator", ">"}, {"punctuation.bracket", "]"}, {"", " "}, {"punctuation.bracket", "{"}, {"", "\
"}},
  {{"", "                "}, {"keyword.function", "fn"}, {"", " "}, {"variable", "use_current_thread"}, {"punctuation.bracket", "("}, {"operator", "&"}, {"variable.builtin", "self"}, {"punctuation.bracket", ")"}, {"", " "}, {"punctuation.bracket", "{"}, {"", "\
"}},
  {{"", "                    "}, {"function.macro", "$crate"}, {"punctuation.delimiter", "::"}, {"variable", "sync"}, {"punctuation.delimiter", "::"}, {"variable", "chan"}, {"punctuation.delimiter", "::"}, {"type", "RxBlocking"}, {"punctuation.delimiter", "::"}, {"variable", "use_current_thread"}, {"punctuation.bracket", "("}, {"", "\
"}},
  {{"", "                        "}, {"operator", "&"}, {"variable.builtin", "self"}, {"punctuation.delimiter", "."}, {"variable", "primary"}, {"", "\
"}},
  {{"", "                    "}, {"punctuation.bracket", ")"}, {"punctuation.delimiter", ";"}, {"", "\
"}},
  {{"", "                "}, {"punctuation.bracket", "}"}, {"", "\
"}},
  {{"", "                "}, {"keyword.function", "fn"}, {"", " "}, {"variable", "recv"}, {"punctuation.bracket", "("}, {"operator", "&"}, {"keyword.modifier", "mut"}, {"", " "}, {"variable.builtin", "self"}, {"punctuation.bracket", ")"}, {"", " "}, {"punctuation.delimiter", "->"}, {"", " "}, {"function.macro", "$pmsg"}, {"", " "}, {"punctuation.bracket", "{"}, {"", "\
"}},
  {{"", "                    "}, {"function.macro", "$crate"}, {"punctuation.delimiter", "::"}, {"variable", "sync"}, {"punctuation.delimiter", "::"}, {"variable", "chan"}, {"punctuation.delimiter", "::"}, {"type", "RxBlocking"}, {"punctuation.delimiter", "::"}, {"variable", "recv"}, {"punctuation.bracket", "("}, {"operator", "&"}, {"keyword.modifier", "mut"}, {"", " "}, {"variable.builtin", "self"}, {"punctuation.delimiter", "."}, {"variable", "primary"}, {"punctuation.bracket", ")"}, {"", "\
"}},
  {{"", "                "}, {"punctuation.bracket", "}"}, {"", "\
"}},
  {{"", "                "}, {"keyword.function", "fn"}, {"", " "}, {"variable", "recv_deadline"}, {"punctuation.bracket", "("}, {"", "\
"}},
  {{"", "                    "}, {"operator", "&"}, {"keyword.modifier", "mut"}, {"", " "}, {"variable.builtin", "self"}, {"punctuation.delimiter", ","}, {"", "\
"}},
  {{"", "                    "}, {"variable", "deadline"}, {"punctuation.delimiter", ":"}, {"", " "}, {"variable", "std"}, {"punctuation.delimiter", "::"}, {"variable", "time"}, {"punctuation.delimiter", "::"}, {"type", "Instant"}, {"punctuation.delimiter", ","}, {"", "\
"}},
  {{"", "                "}, {"punctuation.bracket", ")"}, {"", " "}, {"punctuation.delimiter", "->"}, {"", " "}, {"type", "Option"}, {"operator", "<"}, {"function.macro", "$pmsg"}, {"operator", ">"}, {"", " "}, {"punctuation.bracket", "{"}, {"", "\
"}},
  {{"", "                    "}, {"function.macro", "$crate"}, {"punctuation.delimiter", "::"}, {"variable", "sync"}, {"punctuation.delimiter", "::"}, {"variable", "chan"}, {"punctuation.delimiter", "::"}, {"type", "RxBlocking"}, {"punctuation.delimiter", "::"}, {"variable", "recv_deadline"}, {"punctuation.bracket", "("}, {"", "\
"}},
  {{"", "                        "}, {"operator", "&"}, {"keyword.modifier", "mut"}, {"", " "}, {"variable.builtin", "self"}, {"punctuation.delimiter", "."}, {"variable", "primary"}, {"punctuation.delimiter", ","}, {"", "\
"}},
  {{"", "                        "}, {"variable", "deadline"}, {"punctuation.delimiter", ","}, {"", "\
"}},
  {{"", "                    "}, {"punctuation.bracket", ")"}, {"", "\
"}},
  {{"", "                "}, {"punctuation.bracket", "}"}, {"", "\
"}},
  {{"", "            "}, {"punctuation.bracket", "}"}, {"", "\
"}},
  {{"", "        "}, {"punctuation.bracket", "}"}, {"", "\
"}},
  {{"", "    "}, {"punctuation.bracket", "}"}, {"punctuation.delimiter", ";"}, {"", "\
"}},
  {{"", "\
"}},
  {{"", "    "}, {"comment", "// no keyword, don't do impl"}, {"", "\
"}},
  {{"", "    "}, {"punctuation.bracket", "("}, {"operator", "@"}, {"variable", "impl_rx_blocking"}, {"", " "}, {"function.macro", "$prefix"}, {"punctuation.delimiter", ":"}, {"", "ident "}, {"function.macro", "$pmsg"}, {"punctuation.delimiter", ":"}, {"", "ty"}, {"punctuation.bracket", ")"}, {"", " "}, {"punctuation.delimiter", "=>"}, {"", " "}, {"punctuation.bracket", "{}"}, {"punctuation.delimiter", ";"}, {"", "\
"}},
  {{"", "    "}, {"comment", "// }}}"}, {"", "\
"}},
  {{"", "\
"}},
  {{"", "    "}, {"punctuation.bracket", "("}, {"operator", "@"}, {"variable", "tx_type"}, {"", " "}, {"variable", "blocking"}, {"", " "}, {"function.macro", "$msg"}, {"punctuation.delimiter", ":"}, {"", "ty"}, {"punctuation.bracket", ")"}, {"", " "}, {"punctuation.delimiter", "=>"}, {"", " "}, {"punctuation.bracket", "{"}, {"", " "}, {"function.macro", "$crate"}, {"punctuation.delimiter", "::"}, {"variable", "sync"}, {"punctuation.delimiter", "::"}, {"variable", "chan"}, {"punctuation.delimiter", "::"}, {"type", "ProducerBlocking"}, {"operator", "<"}, {"function.macro", "$msg"}, {"operator", ">"}, {"", " "}, {"punctuation.bracket", "}"}, {"punctuation.delimiter", ";"}, {"", "\
"}},
  {{"", "    "}, {"punctuation.bracket", "("}, {"operator", "@"}, {"variable", "tx_type"}, {"", "          "}, {"function.macro", "$msg"}, {"punctuation.delimiter", ":"}, {"", "ty"}, {"punctuation.bracket", ")"}, {"", " "}, {"punctuation.delimiter", "=>"}, {"", " "}, {"punctuation.bracket", "{"}, {"", " "}, {"variable", "rtrb"}, {"punctuation.delimiter", "::"}, {"type", "Producer"}, {"operator", "<"}, {"function.macro", "$msg"}, {"operator", ">"}, {"", " "}, {"punctuation.bracket", "}"}, {"punctuation.delimiter", ";"}, {"", "\
"}},
  {{"", "    "}, {"punctuation.bracket", "("}, {"operator", "@"}, {"variable", "rx_type"}, {"", " "}, {"variable", "blocking"}, {"", " "}, {"function.macro", "$msg"}, {"punctuation.delimiter", ":"}, {"", "ty"}, {"punctuation.bracket", ")"}, {"", " "}, {"punctuation.delimiter", "=>"}, {"", " "}, {"punctuation.bracket", "{"}, {"", " "}, {"function.macro", "$crate"}, {"punctuation.delimiter", "::"}, {"variable", "sync"}, {"punctuation.delimiter", "::"}, {"variable", "chan"}, {"punctuation.delimiter", "::"}, {"type", "ConsumerBlocking"}, {"operator", "<"}, {"function.macro", "$msg"}, {"operator", ">"}, {"", " "}, {"punctuation.bracket", "}"}, {"punctuation.delimiter", ";"}, {"", "\
"}},
  {{"", "    "}, {"punctuation.bracket", "("}, {"operator", "@"}, {"variable", "rx_type"}, {"", "          "}, {"function.macro", "$msg"}, {"punctuation.delimiter", ":"}, {"", "ty"}, {"punctuation.bracket", ")"}, {"", " "}, {"punctuation.delimiter", "=>"}, {"", " "}, {"punctuation.bracket", "{"}, {"", " "}, {"variable", "rtrb"}, {"punctuation.delimiter", "::"}, {"type", "Consumer"}, {"operator", "<"}, {"function.macro", "$msg"}, {"operator", ">"}, {"", " "}, {"punctuation.bracket", "}"}, {"punctuation.delimiter", ";"}, {"", "\
"}},
  {{"", "\
"}},
  {{"", "    "}, {"punctuation.bracket", "("}, {"operator", "@"}, {"variable", "construct"}, {"", " "}, {"variable", "blocking"}, {"", " "}, {"function.macro", "$cap"}, {"punctuation.delimiter", ":"}, {"", "expr"}, {"punctuation.bracket", ")"}, {"", " "}, {"punctuation.delimiter", "=>"}, {"", " "}, {"punctuation.bracket", "{"}, {"", " "}, {"function.macro", "$crate"}, {"punctuation.delimiter", "::"}, {"variable", "sync"}, {"punctuation.delimiter", "::"}, {"variable", "chan"}, {"punctuation.delimiter", "::"}, {"variable", "bounded_deadline"}, {"punctuation.bracket", "("}, {"function.macro", "$cap"}, {"punctuation.bracket", ")"}, {"", " "}, {"punctuation.bracket", "}"}, {"punctuation.delimiter", ";"}, {"", "\
"}},
  {{"", "    "}, {"punctuation.bracket", "("}, {"operator", "@"}, {"variable", "construct"}, {"", "          "}, {"function.macro", "$cap"}, {"punctuation.delimiter", ":"}, {"", "expr"}, {"punctuation.bracket", ")"}, {"", " "}, {"punctuation.delimiter", "=>"}, {"", " "}, {"punctuation.bracket", "{"}, {"", " "}, {"variable", "rtrb"}, {"punctuation.delimiter", "::"}, {"type", "RingBuffer"}, {"punctuation.delimiter", "::"}, {"variable", "new"}, {"punctuation.bracket", "("}, {"function.macro", "$cap"}, {"punctuation.bracket", ")"}, {"", " "}, {"punctuation.bracket", "}"}, {"punctuation.delimiter", ";"}, {"", "\
"}},
  {{"punctuation.bracket", "}"}, {"", "\
"}},
  {{"", "\
"}},
  {{"keyword.modifier", "pub"}, {"punctuation.bracket", "("}, {"module", "crate"}, {"punctuation.bracket", ")"}, {"", " "}, {"keyword.import", "use"}, {"", " "}, {"variable", "channel_routing_for"}, {"punctuation.delimiter", ";"}, {"", "\
"}},
  {{"comment", "// }}}"}}
}
