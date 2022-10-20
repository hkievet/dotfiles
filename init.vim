call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')
" for prettier
Plug 'sbdchd/neoformat'
" Lua Helper functions
Plug 'nvim-lua/plenary.nvim'
" LanguageServerProtocols
Plug 'neovim/nvim-lspconfig'
Plug 'jose-elias-alvarez/typescript.nvim'
call plug#end()


" Format with prettier on save
autocmd BufWritePre *.js Neoformat

require('lspconfig')['pyright'].setup{
    on_attach = on_attach,
    flags = lsp_flags,
}
require('lspconfig')['tsserver'].setup{
    on_attach = on_attach,
    flags = lsp_flags,
}

