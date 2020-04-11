let mapleader=" "


set number
" Plugins will be downloaded under the specified directory.
call plug#begin('~/.config/nvim/plugged')

 " Declare the list of plugins.
Plug 'tpope/vim-sensible'
Plug 'junegunn/seoul256.vim'
Plug 'https://gitee.com/zimingzpp/nerdtree'
Plug 'https://gitee.com/yyancyer/coc.nvim', {'branch': 'release'}
Plug 'https://gitee.com/yyancyer/ultisnips'
Plug 'https://gitee.com/zgpio/vim-snippets'

if has('nvim')
"	Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
"	Plug 'Shougo/deoplete.nvim'
	Plug 'roxma/nvim-yarp'
	Plug 'roxma/vim-hug-neovim-rpc'
  
endif
let g:deoplete#enable_at_startup = 1


" Plug 'deoplete-plugins/deoplete-jedi'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()


" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"



" neadtree settings 
autocmd vimenter * NERDTree
noremap <leader>n  :NERDTreeToggle<cr>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif



" set nonumber
" my custom settings

set nocompatible  
syntax on                 " 支持语法高亮显示
set number                " show line number.
filetype plugin indent on " 启用根据文件类型自动缩进

set autoindent            " 开始新行时处理缩进
set expandtab             " 将制表符Tab展开为空格，这对于Python尤其有用
set tabstop=2             " 要计算的空格数
set shiftwidth=2          " 用于自动缩进的空格数
set backspace=2           " 在多数终端上修正退格键Backspace的行为
set wildmenu                      " 启用增强的Tab自动补全
set wildmode=list:longest,full    " 补全为允许的最长字符串，然后打开wildmenu





" set relativenumber

map T :edit $MYVIMRC<CR>
map Z :w<CR>:so $MYVIMRC<CR>


" 使用<Ctrl> + hjkl快速在窗口间跳转
noremap <c-h> <c-w><c-h>
noremap <c-j> <c-w><c-j>
noremap <c-k> <c-w><c-k>
noremap <c-l> <c-w><c-l>



" 在插入模式下加入一对引号或括号
inoremap ' ''<esc>i
inoremap " ""<esc>i
inoremap ( ()<esc>i
inoremap { {}<esc>i
inoremap [ []<esc>i


noremap <leader>w :w<cr>
noremap <leader>x :x<cr>


" set clipboard=unamed " 复制到系统寄存器(*, +)
"
"
"





" ===
" === coc
" ===
" fix the most annoying bug that coc has
"silent! au BufEnter,BufRead,BufNewFile * silent! unmap if
let g:coc_global_extensions = ['coc-python', 'coc-vimlsp', 'coc-html', 'coc-json', 'coc-css', 'coc-tsserver', 'coc-yank', 'coc-gitignore', 'coc-vimlsp', 'coc-tailwindcss', 'coc-stylelint', 'coc-tslint', 'coc-lists', 'coc-git', 'coc-explorer', 'coc-pyright', 'coc-sourcekit', 'coc-translator', 'coc-flutter', 'coc-todolist']
"set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}
"nmap <silent> <TAB> <Plug>(coc-range-select)
"xmap <silent> <TAB> <Plug>(coc-range-select)
" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~ '\s'
    endfunction
    inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
        \ <SID>check_back_space() ? "\<TAB>" :
          \ coc#refresh()
          inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
          inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
          function! s:check_back_space() abort
            let col = col('.') - 1
              return !col || getline('.')[col - 1]  =~# '\s'
              endfunction
              inoremap <silent><expr> <c-space> coc#refresh()
              inoremap <silent><expr> <c-o> coc#refresh()

              " Open up coc-commands
              nnoremap <c-c> :CocCommand<CR>
              " Text Objects
              xmap kf <Plug>(coc-funcobj-i)
              xmap af <Plug>(coc-funcobj-a)
              omap kf <Plug>(coc-funcobj-i)
              omap af <Plug>(coc-funcobj-a)
              " Useful commands
              nnoremap <silent> <space>y :<C-u>CocList -A --normal yank<cr>
              nmap <silent> gd <Plug>(coc-definition)
              nmap <silent> gy <Plug>(coc-type-definition)
              nmap <silent> gi <Plug>(coc-implementation)
              nmap <silent> gr <Plug>(coc-references)
              nmap <leader>rn <Plug>(coc-rename)
              nmap tt :CocCommand explorer<CR>
              " coc-translator
              nmap ts <Plug>(coc-translator-p)
              " Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
              xmap <leader>a  <Plug>(coc-codeaction-selected)
              nmap <leader>a  <Plug>(coc-codeaction-selected)
              " coctodolist
              nnoremap <leader>tn :CocCommand todolist.create<CR>
              nnoremap <leader>tl :CocList todolist<CR>
              nnoremap <leader>tu :CocCommand todolist.download<CR>:CocCommand todolist.upload<CR>
