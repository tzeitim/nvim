local status_ok = pcall(require, "lspconfig")
if not status_ok then
  return
end

require("tzeitim.lsp.lsp-installer")
require("tzeitim.lsp.handlers").setup()
require("mason").setup()

local on_attach = function(client, bufnr)
  local opts = { noremap = true, silent = true }
--  KEY_BINDING_1
--  KEY_BINDING_2
end


local lsp_flags = {
  -- This is the default in Nvim 0.7+
  debounce_text_changes = 150,
}

require('lspconfig')['pyright'].setup{
    on_attach = on_attach,
    flags = lsp_flags,
}

-- we are migrating to (miami) mason.nvim
-- which still depends on lspconfig
