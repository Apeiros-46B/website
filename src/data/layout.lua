local M = {}

M.page_content_shrink_width_rem = 48
M.page_content_width_rem = 56
M.page_sidebar_width_rem = 16

local sidebars = 2 * (M.page_sidebar_width_rem + 1)

M.page_width_rem = M.page_content_width_rem + sidebars
M.page_width_thresh_rem = M.page_content_shrink_width_rem + sidebars

return M
