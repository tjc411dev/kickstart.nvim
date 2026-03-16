return {
  'neovim/nvim-lspconfig',
  dependencies = {
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
  },
  config = function()
    -- setup mason
    require('mason').setup()
    -- setup mason-lspconfig
    require('mason-lspconfig').setup {
      ensure_installed = { 'clangd', 'lua_ls' }, -- automatically install clangd
    }
    -- enable lsp
    vim.lsp.enable 'clangd'
    -- ... (additional keymaps and settings can be added here)
  end,
}
