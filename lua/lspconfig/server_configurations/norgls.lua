local util = require 'lspconfig.util'

local bin_name = "norgls"

local cmd = { bin_name }

if vim.fn.has 'win32' == 1 then
  cmd = { 'cmd.exe', '/C', bin_name }
end

local root_files = {
  "index.norg"
}

return {
  default_config = {
    cmd = cmd,
    filetypes = { 'norg' },
    root_dir = util.root_pattern(unpack(root_files)),
    single_file_support = true,
    settings = {},
  },
}
