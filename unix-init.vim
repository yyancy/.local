" 将先导键映射为空格键
let mapleader=" "
"source C:/Users/Administrator/AppData/Local/nvim/autoload/plug.vim

call plug#begin('~/.vim/plugged')

"状态栏的例子
""Plug 'bling/vim-airline'
""Plug 'vim-airline/vim-airline-themes'
Plug 'https://gitee.com/zimingzpp/nerdtree'
Plug 'https://gitee.com/yyancyer/coc.nvim', {'branch': 'release'}
Plug 'https://gitee.com/yyancyer/ultisnips'
Plug 'https://gitee.com/zgpio/vim-snippets'
Plug 'https://gitee.com/yyancyer/vim-visual-multi'
Plug 'https://gitee.com/yyancyer/vim-floaterm'
Plug 'https://gitee.com/yyancyer/auto-pairs'
Plug 'https://gitee.com/yyancyer/vim-terminal-help'
Plug 'https://gitee.com/winwood/vim-deus'
Plug 'https://gitee.com/yyancyer/ultisnips'
Plug 'https://gitee.com/zgpio/vim-snippets'
Plug 'https://gitee.com/yyancyer/nerdcommenter'
" Plug 'https://gitee.com/yyancyer/vim-autoformat'
Plug 'https://gitee.com/yyancyer/SimpylFold'
Plug 'junegunn/vim-easy-align'

Plug 'https://gitee.com/yyancyer/vim-devicons'



call plug#end()



" loading the plugin
let g:webdevicons_enable = 1
" adding the flags to NERDTree
let g:webdevicons_enable_nerdtree = 1
""" Configuration example
let g:floaterm_keymap_new    = '<F6>'
let g:floaterm_keymap_prev   = '<F8>'
let g:floaterm_keymap_next   = '<F9>'
let g:floaterm_keymap_toggle = '<F10>'

" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

"csdf

" neadtree settings
autocmd vimenter * NERDTree
wincmd w
autocmd VimEnter * wincmd w
noremap <leader>n  :NERDTreeToggle<cr>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


" let g:NERDSpaceDelims = 1

"个人配置"
set nocompatible
syntax on                 " 支持语法高亮显示
set number                " show line number.
set norelativenumber
"set cursorline " displays a line on the line where the cursor is 
filetype plugin indent on " 启用根据文件类型自动缩进
set mouse=a
"set mouse=v
set wrap
set showcmd

set encoding=utf-8
let &t_ut=''

set hlsearch
exec "nohlsearch"
set incsearch
set smartcase

set autoindent            " 开始新行时处理缩进
set expandtab             " 将制表符Tab展开为空格，这对于Python尤其有用
set tabstop=2             " 要计算的空格数
set shiftwidth=2          " 用于自动缩进的空格数
set tw=0
set backspace=2           " 在多数终端上修正退格键Backspace的行为
set indentexpr=
set foldlevel=99

let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"
set laststatus=2
set autochdir
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

set wildmenu                      " 启用增强的Tab自动补全
set wildmode=list:longest,full    " 补全为允许的最长字符串，然后打开wildmenu



"set ts=4
"set expandtab
"set tabstop=2
"set shiftwidth=2
"set softtabstop=2
"set list
"set listchars=tab:▸\ ,trail:▫
set scrolloff=5

vmap <C-c> y
vmap <C-v> p
imap <C-v> <esc>p

nnoremap [e  :<c-u>execute 'move -1-'. v:count1<cr>
nnoremap ]e  :<c-u>execute 'move +'. v:count1<cr>

nnoremap [<space>  :<c-u>put! =repeat(nr2char(10), v:count1)<cr>'[
nnoremap ]<space>  :<c-u>put =repeat(nr2char(10), v:count1)<cr>

"set clipboard=unnamed,unnamedplus
set clipboard^=unnamed
"set clipboard^=autoselect
colorscheme murphy        " 修改配色
color deus

"set clipboard=unnamed,autoselect
 set guioptions+=a

" set relativenumber

map T :edit $MYVIMRC<CR>
map Z :w<CR>:so $MYVIMRC<CR>


" 使用<Ctrl> + hjkl快速在窗口间跳转
noremap <c-h> <c-w><c-h>
noremap <c-j> <c-w><c-j>
noremap <c-k> <c-w><c-k>
noremap <c-l> <c-w><c-l>

map sl :set splitright<CR>:vsplit<CR>
map sj :set nosplitright<CR>:vsplit<CR>
map si :set nosplitbelow<CR>:split<CR>
map sk :set splitbelow<CR>:split<CR>
map <up> :res +5<CR>
map <down> :res -5<CR>
map <left> :vertical resize-5<CR>
map <right> :vertical resize+5<CR>
map tu :tabe<CR>

map tp :-tabnext<CR>
map tn :+tabnext<CR>
map sv <C-w>t<C-w>H
map sh <C-w>t<C-w>K
" 在插入模式下加入一对引号或括号
""inoremap ' ''<esc>i
""inoremap " ""<esc>i
""inoremap ( ()<esc>i
""inoremap { {}<esc>i
""inoremap [ []<esc>i
noremap <LEADER><CR> :nohlsearch<CR>

noremap <leader>q :q<cr>
noremap <leader>w :w<cr>
noremap <leader>x :x<cr>
" Opening a terminal window
noremap <LEADER>/ :set splitbelow<CR>:split<CR>:res -5<CR>:term<CR>

" set clipboard=unamed " 复制到系统寄存器(*, +)
"
"
"

" ===
" === Terminal Behaviors
" ===
let g:neoterm_autoscroll = 1
autocmd TermOpen term://* startinsert
tnoremap <C-N> <C-\><C-N>
tnoremap <C-O> <C-\><C-N><C-O>
let g:terminal_color_0  = '#000000'
let g:terminal_color_1  = '#FF5555'
let g:terminal_color_2  = '#50FA7B'
let g:terminal_color_3  = '#F1FA8C'
let g:terminal_color_4  = '#BD93F9'
let g:terminal_color_5  = '#FF79C6'
let g:terminal_color_6  = '#8BE9FD'
let g:terminal_color_7  = '#BFBFBF'
let g:terminal_color_8  = '#4D4D4D'
let g:terminal_color_9  = '#FF6E67'
let g:terminal_color_10 = '#5AF78E'
let g:terminal_color_11 = '#F4F99D'
let g:terminal_color_12 = '#CAA9FA'
let g:terminal_color_13 = '#FF92D0'
let g:terminal_color_14 = '#9AEDFE'

" 至行首
cnoremap <C-A>         <Home>
" 后退一个字符
cnoremap <C-B>         <Left>
" 删除光标所在的字符
cnoremap <C-D>         <Del>
" 至行尾
cnoremap <C-E>         <End>
" 前进一个字符
cnoremap <C-F>         <Right>
" 取回较新的命令行
cnoremap <C-N>         <Down>
" 取回以前 (较旧的) 命令行
cnoremap <C-P>         <Up>
" 后退一个单词
cnoremap <Esc><C-B>    <S-Left>
" 前进一个单词
cnoremap <Esc><C-F>    <S-Right>




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

