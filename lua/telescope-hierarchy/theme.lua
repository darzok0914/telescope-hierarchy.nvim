local M = {}

--- The non-negotiable bits of config that will always be applied
M.apply = function(opts)
  opts = opts or {}

  local theme_opts = {
    theme = "hierarchy",

    sorting_strategy = "ascending", -- The tree-view renders down, with the root node at the top
    initial_mode = "normal", -- The tree-view isn't built to be filtered, so open directly in normal mode
  }

  return vim.tbl_deep_extend("force", theme_opts, opts)
end

return M
