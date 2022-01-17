"   __    __          _   ____      _____ __    __ ____   ____
"  |   \/   |_   _   | \ | |\ \    / /_ _|   \/   |  _ \ / ___|
"  |  |\/|  | | | |  |  \| | \ \  / / | ||  |\/|  | |_) | |
"  |  |  |  | |_| |  | |\  |  \ \/ /  | ||  |  |  |  _ <| |___
"  |__|  |__|\__, |  |_| \_|   \__/  |___|__|  |__|_| \_ \____|
"            |___/     
"

"======auto download vim-plug
if empty(glob('$HOME/.local/share/nvim/site/autoload/plug.vim'))
  silent !curl -fLo $HOME/.local/share/nvim/site/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYNVIMRC
endif

let mapleader="\<space>"

execute "set mouse=a"
noremap <silent> <leader>m :set mouse-=a<CR>
noremap <silent> <leader>M :set mouse=a<CR>
set number
set cursorline
set relativenumber
set showcmd
set wildmenu
set cul
"set cuc
set wrap
set scrolloff=5

"======fold======
"set foldmethod=indent

"======搜索智能大小写======
set hlsearch
set incsearch
exec "nohlsearch"
set ignorecase
set smartcase

"======搜索结果======
noremap <silent><LEADER><CR> :nohlsearch<CR>
noremap N Nzz
noremap n nzz

"======光标控制======
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

"inoremap <home> <pageup>
"inoremap <end> <pagedown>
"nnoremap <home> <pageup>
"nnoremap <end> <pagedown>
"vnoremap <home> <pageup>
"vnoremap <end> <pagedown>
"cnoremap <home> <pageup>
"cnoremap <end> <pagedown>

noremap K 5j
noremap I 5k
noremap J 5b
noremap L 5w

noremap <c-s> :w<cr>
inoremap <c-s> <esc>:w<cr>i
noremap Q :q<cr>
noremap E :e<cr>
noremap FE :e!<cr>
noremap FQ :q!<cr>
noremap S <nop>
noremap s <nop>
noremap ; :
"noremap : ;

"======便捷输入======
inoremap <ESC> <ESC><right>
inoremap () ()<ESC>i
inoremap [] []<ESC>i
inoremap <> <><ESC>i
inoremap << <<
inoremap '' ''<ESC>i
inoremap "" ""<ESC>i
inoremap {} {}<ESC>i
inoremap {{ {}<ESC>i<CR><ESC>O
inoremap <M-o> <ESC>o
inoremap <M-p> <ESC>O
noremap <M-o> o
noremap <M-p> O
map o <nop>
map O <nop>

"======分屏操作======
map sa :set splitright<CR>:vsplit<CR>
map sd :set nosplitright<CR>:vsplit<CR>
map ss :set nosplitbelow<CR>:split<CR>
map sw :set splitbelow<CR>:split<CR>
map <LEADER>a <C-w>h
map <LEADER>d <C-w>l
map <LEADER>w <C-w>k
map <LEADER>s <C-w>j
map <M-up> :res +3<CR>
map <M-down> :res -3<CR>
map <M-right> :vertical resize-3<CR>
map <M-left> :vertical resize+3<CR>
map sq <C-w>t<C-w>H
map se <C-w>t<C-w>K

"======tab======
map <tab>n :tabe 
map <silent><tab>N :tabnew<CR>
map <silent><tab>j :tabp<CR>
map <silent><tab>l :tabn<CR>


"======vim插件======
call plug#begin('$HOME/.config/nvim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'morhetz/gruvbox'
Plug 'connorholyday/vim-snazzy'
Plug 'Yggdroot/indentLine'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'voldikss/vim-translator'
Plug 'voldikss/vim-floaterm'
Plug 'puremourning/vimspector'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'tpope/vim-surround'
Plug 'gcmt/wildfire.vim'
Plug 'nvim-treesitter/nvim-treesitter' "need neovim0.5
Plug 'nvim-treesitter/playground'
Plug 'luochen1990/rainbow'
" Plug 'preservim/nerdtree'
Plug 'itchyny/vim-cursorword'
Plug 'lfv89/vim-interestingwords'
Plug 'preservim/tagbar'
Plug 'preservim/nerdcommenter'
" Plug 'Xuyuanp/nerdtree-git-plugin'
" Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
" Plug 'ryanoasis/vim-devicons'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'kyazdani42/nvim-web-devicons'
call plug#end()
 


"======morhetz/gruvbox主题配置======
autocmd vimenter * ++nested colorscheme gruvbox
set bg=dark



"======snazzy主题配置======
"colorscheme snazzy
"let g:SnazzyTransparent = 1



"======identLine缩进线======
set list lcs=tab:\¦\ 
set ts=4 sw=4 et



"======正常显示中文======
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8

"===================================================
"=========================================coc.nvim==
"===================================================
"
"%%%%%%coc-plug head%%%%%%
"%%%%%%%%%%%%%%
"%%%%%%%
let g:coc_global_extensions = [
      \ 'coc-json',
      \ 'coc-yank',
      \ 'coc-marketplace',
      \ 'coc-sh',
      \ 'coc-python',
      \ 'coc-jedi',
      \ 'coc-clangd',
      \ 'coc-tsserver',
      \ 'coc-vimlsp',
      \ 'coc-highlight',
      \ 'coc-pyright'
      \ ]

"======coc-yank历史剪贴板======
nnoremap <silent> <space>y  :<C-u>CocList -A --normal yank<cr>

"%%%%%%%%
"%%%%%%%%%%%%%%%%
"%%%%%%coc-plug end%%%%%%

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
"=========================================================
"=========================================coc.nvim end====
"=========================================================



"======Plug Translate翻译插件======
" Display translation in a window
nmap <silent> <Leader>t <Plug>TranslateW
vmap <silent> <Leader>t <Plug>TranslateWV
" Translate the text in clipboard剪贴板
nmap <silent> <Leader>x <Plug>TranslateX
let g:translator_target_lang = 'zh' 
let g:translator_default_engines = ['bing','haici']



"======设置不产生swp文件======
set nobackup
set autochdir



"======airline======
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '||'
let g:airline#extensions#tabline#formatter = 'jsformatter'
"airline-themes(主题)
let g:airline_theme='qwq' "qwq,cobalt2,lighthaus,bubblegum,wombat,term,solarized_flood,ouo,onedark,murmur



"======vim-floaterm创建悬浮终端======
"map ++ :FloatermNew<CR>
let g:floaterm_wintype='split'
let g:floaterm_height=10
let g:floaterm_autoclose=2
"let g:floaterm_autoinsert='v:true'
tnoremap <silent>\\ <C-\><C-n>
nnoremap <silent><M-+><M-+> :FloatermToggle<CR>
tnoremap <silent><M-+><M-+> <C-\><C-n>:FloatermToggle<CR>
tnoremap <silent><M-up> <C-\><C-n>:res +3<CR>i
tnoremap <silent><M-down> <C-\><C-n>:res -3<CR>i
tnoremap <silent><M-left> <C-\><C-n>:vertical resize-3<CR>i
tnoremap <silent><M-right> <C-\><C-n>:vertical resize+3<CR>i



"======设置命令窗口高度======
"inoremap <C-d> <Esc>:set cmdheight=1<CR>a
"inoremap <C-t> <Esc>:set cmdheight=10<CR>a
nnoremap <C-d> :set cmdheight=1<CR>
nnoremap <C-t> :set cmdheight=10<CR>



"======代码调试运行======
nnoremap <leader><F5> :w<CR>:FloatermNew --autoclose=0 vim_debug % <CR><CR>
nnoremap <F5> :w<CR>:FloatermNew --autoclose=0 vim_runcode % <CR> 



"======vimspector(debug调试)======
" let g:vimspector_install_gadgets = ['vscode-cpptools','debugpy','vscode-bash-debug']
" let g:vimspector_enable_mappings = 'HUMAN'
" function! s:read_template_into_buffer(template)
"     " has to be a function to avoid the extra space fzf#run insers otherwise
"     execute '0r $HOME/.config/nvim/vimspector_json/'.a:template
" endfunction
" command! -bang -nargs=* LoadVimSpectorJsonTemplate call fzf#run({
"             \   'source': 'ls -1 $HOME/.config/nvim/vimspector_json',
"             \   'down': 20,
"             \   'sink': function('<sid>read_template_into_buffer')
"             \ })
" noremap <leader>vs :tabe .vimspector.json<CR>:LoadVimSpectorJsonTemplate<CR>
" noremap <leader>Q :VimspectorReset<CR>
" sign define vimspectorBP text=☛ texthl=Normal
" sign define vimspectorBPDisabled text=🐟 texthl=Normal
" sign define vimspectorPC text=👉 texthl=SpellBad



"======treesitter======
" lua <<EOF
" require'nvim-treesitter.configs'.setup {
"     ensure_installed = {"html","css","json","bash","c","cpp","python","lua"},
"     highlight = {
"     enable = false, -- false will disable the whole extension
"     disable = {}
"     },
"     indent = {
"     enable = false
"     }
" }
" require("nvim-treesitter.install").prefer_git = true
" EOF



"======rainbow======
let g:rainbow_active = 1



"======compile c&c++ project====== use make or cmake
function! s:generate_compile_commands()
  if empty(glob('CMakeLists.txt'))
    echo "Can't find CMakeLists.txt"
    return
  endif
  if empty(glob('.vscode'))
    execute 'silent !mkdir .vscode'
  endif
  execute '!cmake -DCMAKE_BUILD_TYPE=debug
      \ -DCMAKE_EXPORT_COMPILE_COMMANDS=1 -S . -B .vscode'
endfunction
command! -nargs=0 Gcmake :call s:generate_compile_commands()



"======nerdtree======
" " nnoremap tt :NERDTreeToggle<CR>
" set guifont=/usr/share/fonts/TTF/NotoSansMono-Bold-Nerd-Font-Complete.ttf
" set termencoding=utf-8
" set fileencoding=chinese
" set fileencodings=ucs-bom,utf-8,chinese
" set langmenu=zh_CN.utf-8
" " autocmd vimenter * NERDTree  "自动开启Nerdtree
" let g:NERDTreeWinSize = 25 "设定 NERDTree 视窗大小
" autocmd vimenter * if !argc()|NERDTree|endif
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" let g:NERDTreeDirArrowExpandable = '▸'
" let g:NERDTreeDirArrowCollapsible = '▾'
" let g:NERDTreeHidden=0     "显示隐藏文件
" let NERDTreeMinimalUI = 0
" let NERDTreeDirArrows = 1
" " 过滤: 所有指定文件和文件夹不显示
" let NERDTreeIgnore = ['\.pyc$', '\.swp', '\.swo', '\.vscode', '__pycache__']
"
" "======ryanoasis/vim-devicons======
" set encoding=UTF-8
" let g:webdevicons_enable_nerdtree = 1
" let g:webdevicons_conceal_nerdtree_brackets = 1
" let g:webdevicons_enable_airline_tabline = 1
" let g:webdevicons_enable_airline_statusline = 1



" "======tiagofumo/vim-nerdtree-syntax-highlight======
" let g:NERDTreeFileExtensionHighlightFullName = 1
" let g:NERDTreeExactMatchHighlightFullName = 1
" let g:NERDTreePatternMatchHighlightFullName = 1
" let g:NERDTreeHighlightFolders = 1
" let g:NERDTreeHighlightFoldersFullName = 1
" let s:brown       = "905532"
" let s:aqua        = "3AFFDB"
" let s:blue        = "689FB6"
" let s:darkBlue    = "44788E"
" let s:purple      = "834F79"
" let s:lightPurple = "834F79"
" let s:red         = "AE403F"
" let s:beige       = "F5C06F"
" let s:yellow      = "F09F17"
" let s:orange      = "D4843E"
" let s:darkOrange  = "F16529"
" let s:pink        = "CB6F6F"
" let s:salmon      = "EE6E73"
" let s:green       = "8FAA54"
" let s:Turquoise   = "40E0D0"
" let s:lightGreen  = "31B53E"
" let s:white       = "FFFFFF"
" let s:rspec_red   = "FE405F"
" let s:git_orange  = "F54D27"
" let s:gray        = "808A87"
" let g:NERDTreeExtensionHighlightColor = {} " this line is needed to avoid error
" let g:NERDTreeExtensionHighlightColor['o'] = s:gray " sets the color of o files to blue
" let g:NERDTreeExtensionHighlightColor['h'] = s:blue " sets the color of h files to blue
" let g:NERDTreeExtensionHighlightColor['c'] = s:green " sets the color of c files to blue
" let g:NERDTreeExtensionHighlightColor['cpp'] = s:green " sets the color of cpp files to blue
" let g:NERDTreeExtensionHighlightColor['c++'] = s:green



" "======Xuyuanp/nerdtree-git-plugin======
" let g:NERDTreeShowIgnoredStatu = 1
" let g:NERDTreeIndicatorMapCus = {
"     \ "Modified"  : "✹",
"     \ "Staged"    : "✚",
"     \ "Untracked" : "✭",
"     \ "Renamed"   : "➜",
"     \ "Unmerged"  : "═",
"     \ "Deleted"   : "✖",
"     \ "Dirty"     : "✗",
"     \ "Clean"     : "✔︎",
"     \ 'Ignored'   : '☒',
"     \ "Unknown"   : "?"
"     \ }



"======preservim/nerdcommenter======
map <silent><leader>/ <plug>NERDCommenterToggle
map <silent><leader>? <plug>NERDCommenterAppend
" Create default mappings
let g:NERDCreateDefaultMappings = 1
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1
let g:NERDAltDelims_c = 1
" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = {}
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
" Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1



" ========== nvim-tree.lua settings ===========
" defalut hotkeys actions: https://github.com/kyazdani42/nvim-tree.lua#default-actions
nnoremap tt :NvimTreeToggle<CR>

lua <<EOF
-- following options are the default
-- each of these are documented in `:help nvim-tree.OPTION_NAME`
require'nvim-tree'.setup {
    disable_netrw       = true,
    hijack_netrw        = true,
    open_on_setup       = false,
    ignore_ft_on_setup  = {},
    auto_close          = false,
    open_on_tab         = false,
    hijack_cursor       = false,
    update_cwd          = false,
    update_to_buf_dir   = {
        enable = true,
        auto_open = true,
    },
    diagnostics = {
        enable = false,
        icons = {
            hint =    " ",
            info =    " ",
            warning = " ",
            error =   " ",
        }
    },
    update_focused_file = {
        enable      = false,
        update_cwd  = false,
        ignore_list = {}
    },
    system_open = {
        cmd  = nil,
        args = {}
    },
    filters = {
        dotfiles = false,
        custom = {}
    },
    git = {
        enable = true,
        ignore = true,
        timeout = 500,
    },
    view = {
        width = 30,
        height = 30,
        hide_root_folder = false,
        side = 'left',
        auto_resize = false,
        mappings = {
              custom_only = false,
              list = {}
        },
        number = false,
        relativenumber = false,
        signcolumn = "yes"
    },
    trash = {
        cmd = "trash",
        require_confirm = true
    }
}
EOF

let g:nvim_tree_quit_on_open = 1 "0 by default, closes the tree when you open a file
let g:nvim_tree_indent_markers = 0 "0 by default, this option shows indent markers when folders are open
let g:nvim_tree_git_hl = 0 "0 by default, will enable file highlight for git attributes (can be used without the icons).
let g:nvim_tree_highlight_opened_files = 0 "0 by default, will enable folder and file icon highlight for opened files/directories.
let g:nvim_tree_root_folder_modifier = ':~' "This is the default. See :help filename-modifiers for more options
let g:nvim_tree_add_trailing = 0 "0 by default, append a trailing slash to folder names
let g:nvim_tree_group_empty = 0 " 0 by default, compact folders that only contain a single folder into one node in the file tree
let g:nvim_tree_disable_window_picker = 0 "0 by default, will disable the window picker.
let g:nvim_tree_icon_padding = ' ' "one space by default, used for rendering the space between the icon and the filename. Use with caution, it could break rendering if you set an empty string depending on your font.
let g:nvim_tree_symlink_arrow = ' >> ' " defaults to ' ➛ '. used as a separator between symlinks' source and target.
let g:nvim_tree_respect_buf_cwd = 0 "0 by default, will change cwd of nvim-tree to that of new buffer's when opening nvim-tree.
let g:nvim_tree_create_in_closed_folder = 0 "1 by default, When creating files, sets the path of a file when cursor is on a closed folder to the parent folder when 0, and inside the folder when 1.
let g:nvim_tree_refresh_wait = 500 "1000 by default, control how often the tree can be refreshed, 1000 means the tree can be refresh once per 1000ms.
let g:nvim_tree_window_picker_exclude = {
    \   'filetype': [
    \   'notify',
    \   'packer',
    \   'qf'
    \   ],
    \   'buftype': [
    \       'terminal'
    \   ]
    \}
" Dictionary of buffer option names mapped to a list of option values that
" indicates to the window picker that the buffer's window should not be
" selectable.
let g:nvim_tree_special_files = { 'README.md': 0, 'Makefile': 0, 'MAKEFILE': 0 } " List of filenames that gets highlighted with NvimTreeSpecialFile
let g:nvim_tree_show_icons = {
    \   'git': 1,
    \   'folders': 1,
    \   'files': 1,
    \   'folder_arrows': 1,
    \}
"If 0, do not show the icons for one of 'git' 'folder' and 'files'
"1 by default, notice that if 'files' is 1, it will only display
"if nvim-web-devicons is installed and on your runtimepath.
"if folder is 1, you can also tell folder_arrows 1 to show small arrows next to the folder icons.
"but this will not work when you set indent_markers (because of UI conflict)

" default will show icon by default if no icon is provided
" default shows no icon by default
let g:nvim_tree_icons = {
    \   'default': '',
    \   'symlink': '',
    \   'git': {
    \       'unstaged':  "✗",
    \       'staged':    "✓",
    \       'unmerged':  "",
    \       'renamed':   "➜",
    \       'untracked': "★",
    \       'deleted':   "",
    \       'ignored':   "◌"
    \   },
    \   'folder': {
    \       'arrow_open':   " ",
    \       'arrow_closed': " ",
    \       'default':      " ",
    \       'open':         " ",
    \       'empty':        " ",
    \       'empty_open':   " ",
    \       'symlink':      " ",
    \       'symlink_open': " ",
    \   }
    \}


" conflict with my vim-go plugin and create new file
" nnoremap <leader>r :NvimTreeRefresh<CR>
" nnoremap <leader>n :NvimTreeFindFile<CR>
" NvimTreeOpen, NvimTreeClose, NvimTreeFocus, NvimTreeFindFileToggle, and NvimTreeResize are also available if you need them

" set termguicolors " this variable must be enabled for colors to be applied properly

" a list of groups can be found at `:help nvim_tree_highlight`
highlight NvimTreeFolderIcon guibg=blue

let g:auto_save = 1  " enable AutoSave on Vim startup

let g:instant_markdown_slow = 1

set t_Co=256
