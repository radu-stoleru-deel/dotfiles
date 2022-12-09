local nvim_lsp = require 'lspconfig'
local runtime_path = vim.split(package.path, ';')

table.insert(runtime_path, 'lua/?.lua')
table.insert(runtime_path, 'lua/?/init.lua')

-- By default, lua-language-server doesn't have a cmd set. This is because nvim-lspconfig does not
-- make assumptions about your path. You must add the following to your init.vim or init.lua to set
-- cmd to the absolute path ($HOME and ~ are not expanded) of your unzipped and compiled lua-language-server.
-- https://github.com/neovim/nvim-lspconfig/blob/master/CONFIG.md#sumneko_lua

nvim_lsp.sumneko_lua.setup({
  on_attach = function(client, bufnr)
    vim.cmd('command! Format lua vim.lsp.buf.format { async = true }')

    client.server_capabilities.documentFormattingProvider = true
    client.server_capabilities.documentRangeFormattingProvider = true
  end,
  settings = {
    Lua = {
      format = {
        enable = true,
        -- Put format options here
        -- NOTE: the value should be STRING!!
        defaultConfig = {
          indent_style = 'space', -- ignored and used from editor settings
          indent_size = '2', -- ignored and used from editor settings
          quote_style = 'single',
        }
      },
      runtime = {
        -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
        version = 'LuaJIT',
        -- Setup your lua path
        path = runtime_path,
      },
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = { 'vim' },
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        -- For some reason havin setting this line below as the docs suggest
        -- open a quick-fix window every time you jump to a reference
        -- library = vim.api.nvim_get_runtime_file("", true),
        library = {
          [vim.fn.expand('$VIMRUNTIME/lua')] = true,
          [vim.fn.stdpath('config') .. '/lua'] = true,
        },
      },
      -- Do not send telemetry data containing a randomized but unique identifier
      telemetry = {
        enable = false,
      },
    },
  },
})
