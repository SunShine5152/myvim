"**************lyj*********************"
"<<<map
map s <nop>
map S :w<CR>
map Q :q<CR>
map R :source ~/.vimrc<CR>
map ; :
noremap K 5k
noremap J 5j
noremap H 7h
noremap L 7l
noremap <C-h> 0
noremap <C-l> $
noremap = nzz
noremap - Nzz
">>>
"<<<搜索
set hlsearch
exec "nohlsearch"
set incsearch
set ignorecase
set smartcase
set nowrapscan
let mapleader=" "
noremap <LEADER><CR> :nohlsearch<CR>
">>>
"<<<分屏map
map sl :set splitright<CR>:vsplit<CR>
map sh :set nosplitright<CR>:vsplit<CR>
map sk :set nosplitbelow<CR>:split<CR>
map sj :set splitbelow<CR>:split<CR>
map <LEADER>l <C-w>l
map <LEADER>k <C-w>k
map <LEADER>h <C-w>h
map <LEADER>j <C-w>j
map <up> :res +5<CR>
map <down> :res -5<CR>
map <left> :vertical resize-5<CR>
map <right> :vertical resize+5<CR>
map sv <C-w>t<C-w>H
map sh <C-w>t<C-w>K
"标签设置
map tu :tabe<CR>
map th :-tabnext<CR>
map tl :tabnext<CR>
">>>
"<<<常规设置
set nocompatible
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on
set mouse=nv
set encoding=utf-8
let &t_ut=''
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set nu
set relativenumber
"list设置显示行尾的空格和tab
set list
set listchars=tab:▸\ ,trail:▫
"<<<?????"
"set scrolloff=5
"set tw=0
"set indentexpr=
"set backspace=indent,eol,start
">>>
"set foldmethod=indent
"set foldlevel=99
"let &t_SI = "\<Esc>]50;CursorShape=1\x7"
"let &t_SR = "\<Esc>]50;CursorShape=2\x7"
"let &t_EI = "\<Esc>]50;CursorShape=0\x7"
set laststatus=2
"set autochdir
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
set cursorline
set smarttab
set nobackup
set ruler
set autoindent
set smartindent
set cindent
set clipboard=unnamed
set noswapfile
set paste
set confirm
">>>


"=================================================================================================
"=================================================================================================

" ===
" === VBUNDLE
" ===
set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-scripts/taglist.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-scripts/cscope.vim'
Plugin 'wesleyche/SrcExpl'
Plugin 'ycm-core/YouCompleteMe'
"Plugin 'altercation/vim-colors-solarized'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
">>>

" ===
" === CTAGS
" ===
set tags=./tags,./TAGS,tags;~,TAGS;~
" ===
" === TAGLIST
" ===
"不同时显示多个文件的tag，仅显示一个
let Tlist_Show_One_File=1
"taglist为最后一个窗口时退出vim
let Tlist_Exit_OnlyWindow=1
"设置ctags路径
let Tlist_Ctags_Cmd='/usr/local/bin/ctags'
"启动vim后自动打开taglist窗口
let Tlist_Auto_Open=1
"taglist窗口显示在右侧，缺省为左侧
let Tlist_Use_Right_Windowl=0
"设置taglist窗口大小
let Tlist_WinHeight=100
let Tlist_WinWidth=40
"设置taglist打开关闭的快捷键
noremap <F7> :TlistToggle
"更新ctags标签文件快捷键设置
noremap <F6> :!ctags -R
" ===
" === NERDTree
" ===
map ff :NERDTreeToggle<CR>
let NERDTreeMapOpenExpl = ""
let NERDTreeMapUpdir = ""
let NERDTreeMapUpdirKeepOpen = "l"
let NERDTreeMapOpenSplit = ""
let NERDTreeOpenVSplit = ""
let NERDTreeMapActivateNode = "i"
let NERDTreeMapOpenInTab = "o"
let NERDTreeMapPreview = ""
let NERDTreeMapCloseDir = "n"
let NERDTreeMapChangeRoot = "y"
let NERDTreeWinPos='right'
" ===
" === CSCOPE
" ===
"cscope -Rbq
"cs add cscope.out
nnoremap <leader>fa :call cscope#findInteractive(expand('<cword>'))<CR>
"nnoremap <leader>l :call ToggleLocationList()<CR>
" s: Find this C symbol
nnoremap  <leader>fs :call cscope#find('s', expand('<cword>'))<CR>
" g: Find this definition
nnoremap  <leader>fg :call cscope#find('g', expand('<cword>'))<CR>
" d: Find functions called by this function
nnoremap  <leader>fd :call cscope#find('d', expand('<cword>'))<CR>
" c: Find functions calling this function
nnoremap  <leader>fc :call cscope#find('c', expand('<cword>'))<CR>
" t: Find this text string
nnoremap  <leader>ft :call cscope#find('t', expand('<cword>'))<CR>
" e: Find this egrep pattern
nnoremap  <leader>fe :call cscope#find('e', expand('<cword>'))<CR>
" f: Find this file
nnoremap  <leader>ff :call cscope#find('f', expand('<cword>'))<CR>
" i: Find files #including this file
set cscopequickfix=s-,c-,d-,i-,t-,e-

" ===
" === SRCEXPL
" ===
" // The switch of the Source Explorer 
nmap <F8> :SrcExplToggle<CR> 

" // Set the height of Source Explorer window 
let g:SrcExpl_winHeight = 8 

" // Set 100 ms for refreshing the Source Explorer 
let g:SrcExpl_refreshTime = 100 

" // Set "Enter" key to jump into the exact definition context 
let g:SrcExpl_jumpKey = "<ENTER>" 

" // Set "Space" key for back from the definition context 
let g:SrcExpl_gobackKey = "<SPACE>" 

" // In order to avoid conflicts, the Source Explorer should know what plugins except
" // itself are using buffers. And you need add their buffer names into below list
" // according to the command ":buffers!"
let g:SrcExpl_pluginList = [
        \ "__Tag_List__",
        \ "_NERD_tree_",
        \ "Source_Explorer"
    \ ]

" // The color schemes used by Source Explorer. There are five color schemes
" // supported for now - Red, Cyan, Green, Yellow and Magenta. Source Explorer
" // will pick up one of them randomly when initialization.
let g:SrcExpl_colorSchemeList = [
        \ "Red",
        \ "Cyan",
        \ "Green",
        \ "Yellow",
        \ "Magenta"
    \ ]

" // Enable/Disable the local definition searching, and note that this is not 
" // guaranteed to work, the Source Explorer doesn't check the syntax for now. 
" // It only searches for a match with the keyword according to command 'gd' 
let g:SrcExpl_searchLocalDef = 1 

" // Workaround for Vim bug @https://goo.gl/TLPK4K as any plugins using autocmd for
" // BufReadPre might have conflicts with Source Explorer. e.g. YCM, Syntastic etc.
let g:SrcExpl_nestedAutoCmd = 1

" // Do not let the Source Explorer update the tags file when opening 
let g:SrcExpl_isUpdateTags = 0 

" // Use 'Exuberant Ctags' with '--sort=foldcase -R .' or '-L cscope.files' to 
" // create/update the tags file 
let g:SrcExpl_updateTagsCmd = "ctags --sort=foldcase -R ." 

" // Set "<F12>" key for updating the tags file artificially 
let g:SrcExpl_updateTagsKey = "<F12>" 

" // Set "<F3>" key for displaying the previous definition in the jump list 
let g:SrcExpl_prevDefKey = "<F3>" 

" // Set "<F4>" key for displaying the next definition in the jump list 
let g:SrcExpl_nextDefKey = "<F4>" 
" ===
" ===vim-colors-solarized'
" ===
"syntax enable
"set background=dark
"colorscheme solarized
"let g:solarized_termcolors=256
"call togglebg#map("<F5>")


"*****************************c模板********************
autocmd BufNewFile *.c 0r /home/lyj/.vim/template/c.tlp




"********autocomplpop插件,一个字母即可补全***************
let g:acp_behaviorKeywordLength = 1  
let g:AutoComplPop_MappingDriven = 1  
"****color  
hi Pmenu guibg=#444444  
hi PmenuSel ctermfg=7 ctermbg=4 guibg=#555555 guifg=#ffffff

"****************omnicppcomplete脚本插件设置************
"set completeopt=menu,menuone  
"let OmniCpp_MayCompleteDot=1    "打开  . 操作符
"let OmniCpp_MayCompleteArrow=1  "打开 -> 操作符
"let OmniCpp_MayCompleteScope=1  "打开 :: 操作符
"let OmniCpp_NamespaceSearch=1   "打开命名空间
"let OmniCpp_GlobalScopeSearch=1                           let OmniCpp_DefaultNamespace=["std"]  
"let OmniCpp_ShowPrototypeInAbbr=1  "打开显示函数原型
"let OmniCpp_SelectFirstItem=2

filetype plugin on

