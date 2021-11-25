"   __    __          _   ____      _____ __    __ ____   ____
"  |   \/   |_   _   | \ | |\ \    / /_ _|   \/   |  _ \ / ___|
"  |  |\/|  | | | |  |  \| | \ \  / / | ||  |\/|  | |_) | |
"  |  |  |  | |_| |  | |\  |  \ \/ /  | ||  |  |  |  _ <| |___
"  |__|  |__|\__, |  |_| \_|   \__/  |___|__|  |__|_| \_ \____|
"            |___/     
"                
let mapleader=" "

set number
set relativenumber
set showcmd
set wildmenu
set cul
"set cuc
set wrap
set scrolloff=5

"搜索智能大小写
set hlsearch
set incsearch
exec "nohlsearch"
set ignorecase
set smartcase
"搜索结果
noremap <silent><LEADER><CR> :nohlsearch<CR>
noremap N Nzz
noremap n nzz

"光标控制
noremap . <end>
noremap , <home>
noremap j h
noremap i k
noremap k j
noremap h i
noremap H I
noremap J H
inoremap <C-k> <down>
inoremap <C-j> <left>
inoremap <C-l> <right>

inoremap <pageup> <home><left>
inoremap <pagedown> <end>
nnoremap <pageup> <home><left>
nnoremap <pagedown> <end>
vnoremap <pageup> <home><left>
vnoremap <pagedown> <end>
cnoremap <pageup> <home><left>
cnoremap <pagedown> <end>

inoremap <home> <pageup>
inoremap <end> <pagedown>
nnoremap <home> <pageup>
nnoremap <end> <pagedown>
vnoremap <home> <pageup>
vnoremap <end> <pagedown>
cnoremap <home> <pageup>
cnoremap <end> <pagedown>

noremap K 5j
noremap I 5k
noremap J 6h
noremap L 6l

noremap <silent><C-s> :w<CR>
inoremap <C-s> <ESC>:w<CR>i
map Q :q<CR>
map E :e<CR>
map FE :e!<CR>
map FQ :q!<CR>
map s <nop>
map S <nop>
noremap oo o
noremap OO O
map o <nop>
map O <nop>
noremap ; :

"便捷输入
inoremap <ESC> <ESC><right>
inoremap () ()<ESC>i
inoremap [] []<ESC>i
inoremap <> <><ESC>i
inoremap << <<
inoremap '' ''<ESC>i
inoremap "" ""<ESC>i
inoremap {} {}<ESC>i
inoremap {{ {}<ESC>i<CR><ESC>O
inoremap oo <ESC>o
inoremap OO <ESC>O

"分屏操作
map sa :set splitright<CR>:vsplit<CR>
map sd :set nosplitright<CR>:vsplit<CR>
map ss :set nosplitbelow<CR>:split<CR>
map sw :set splitbelow<CR>:split<CR>
map <LEADER>a <C-w>h
map <LEADER>d <C-w>l
map <LEADER>w <C-w>k
map <LEADER>s <C-w>j
map <C-up> :res +3<CR>
map <C-down> :res -3<CR>
map <C-right> :vertical resize-3<CR>
map <C-left> :vertical resize+3<CR>
map sq <C-w>t<C-w>H
map se <C-w>t<C-w>K

map tn :tabe<CR>
map t- :-tabnext<CR>
map t= :+tabnext<CR>

nnoremap tt :CocCommand explorer<CR>

"插件
call plug#begin('/home/ya/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'morhetz/gruvbox'
"Plug 'connorholyday/vim-snazzy'
Plug 'Yggdroot/indentLine'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'luochen1990/rainbow'
Plug 'voldikss/vim-translator'
Plug 'voldikss/vim-floaterm'
Plug 'puremourning/vimspector'
call plug#end()

"morhetz/gruvbox主题配置
autocmd vimenter * ++nested colorscheme gruvbox
set bg=dark

"snazzy主题配置
"colorscheme snazzy
"let g:SnazzyTransparent = 1

"identLine缩进线
set list lcs=tab:\¦\ 
set ts=4 sw=4 et

"正常显示中文
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8

"###############################################################################################
"                                          coc.nvim
"###############################################################################################
" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
" TextEdit might fail if hidden is not set.
set hidden
" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
"" Use <LEADER>h to show documentation in preview window.
nnoremap <silent> <LEADER>h :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)
" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>q  <Plug>(coc-codeaction-selected)
nmap <leader>q  <Plug>(coc-codeaction-selected)
" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" delays and poor user experience.
set updatetime=100
" Don't pass messages to |ins-completion-menu|.
set shortmess+=c
" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("nvim-0.5.0") || has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif
"##############################################################################################
"                                       coc.nvim-end
"############################################################################################## 

"rainbow
let g:rainbow_active = 1

"Plug Translate翻译插件
" Display translation in a window
nmap <silent> <Leader>t <Plug>TranslateW
vmap <silent> <Leader>t <Plug>TranslateWV
" Translate the text in clipboard剪贴板
nmap <silent> <Leader>x <Plug>TranslateX
let g:translator_target_lang = 'zh' 
let g:translator_default_engines = ['bing','haici']


"设置不产生swp文件
set nobackup
set autochdir

"coc-yank历史剪贴板
nnoremap <silent> <space>y  :<C-u>CocList -A --normal yank<cr>

"源代码编译
nnoremap <F5> :w<CR>:FloatermNew --autoclose=0 vim_compile % <CR>
nnoremap <leader><F5> :w<CR>:FloatermNew --autoclose=0 vim_compile % -o 

"airline主题
let g:airline_theme='dracula'

"创建悬浮终端
map <C-n> :FloatermNew<CR>

"设置命令窗口高度
inoremap <C-d> <Esc>:set cmdheight=2<CR>a
inoremap <C-t> <Esc>:set cmdheight=10<CR>a
nnoremap <C-d> :set cmdheight=2<CR>
nnoremap <C-t> :set cmdheight=10<CR>

"vimspector(debug调试)
let g:vimspector_install_gadgets = ['vscode-cpptools','debugpy','vscode-bash-debug']
let g:vimspector_enable_mappings = 'HUMAN'
function! s:read_template_into_buffer(template)
    " has to be a function to avoid the extra space fzf#run insers otherwise
    execute '0r ~/.config/nvim/vimspector_json/'.a:template
endfunction
command! -bang -nargs=* LoadVimSpectorJsonTemplate call fzf#run({
            \   'source': 'ls -1 ~/.config/nvim/vimspector_json',
            \   'down': 20,
            \   'sink': function('<sid>read_template_into_buffer')
            \ })
noremap <leader>vs :tabe .vimspector.json<CR>:LoadVimSpectorJsonTemplate<CR>
sign define vimspectorBP text=🛑 texthl=Normal
sign define vimspectorBPDisabled text=🚫 texthl=Normal
sign define vimspectorPC text=👉 texthl=SpellBad
