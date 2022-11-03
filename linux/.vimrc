"**************lyj*********************"
let mapleader="\<space>"
"<<<map
map s <nop>
map q q:
"map S :w<CR>
"map Q :q
"map <C-e> :only<CR>
map <LEADER>s :w<CR>
map <LEADER>q :q<CR>
"open quickerfix
map <LEADER>c :cw<CR>
map <LEADER>cq :cclose<CR>
"这段脚本添加后可以使用alt键像ctrl键一样映射。
for i in range(97,122)
  let c = nr2char(i)
  exec "map \e".c." <M-".c.">"
  exec "map! \e".c." <M-".c.">"
endfor
"jump to define
map <A-s> <C-o>
map <A-d> <C-]>zz
map <A-f> <C-i>
"高亮搜索
noremap <A-m> <S-*>
noremap <A-n> <S-#>
"新窗口打开和预览
"map <A-e> <C-w>}
map <A-w> <C-w>]


map <LEADER>e :only<CR>
map <LEADER>rc :vs ~/.vimrc<CR>
map <LEADER>sr :source ~/.vimrc<CR>
map <LEADER>tm :vs ~/.tmux.conf<CR>
map <LEADER>re :reg<CR>
map ; :
"noremap j gjzz
"noremap k gkzz
noremap K 5k
noremap J 5j
noremap F $
noremap S 0w
noremap U 7h
noremap O 7l
"map <C-h> :0<CR>
"map <C-l> :$<CR>
noremap n nzz
noremap N Nzz
">>>
"<<ctrl-c,ctrl-v
">>>
"<<<搜索
set hlsearch
exec "nohlsearch"
set incsearch
set ignorecase
set smartcase
set nowrapscan
noremap <LEADER><CR> :nohlsearch<CR>
">>>
"<<<分屏map
map sl :set splitright<CR>:vsplit<CR>
map sh :set nosplitright<CR>:vsplit<CR>
map sk :set nosplitbelow<CR>:split<CR>
map sj :set splitbelow<CR>:split<CR>
map sv <C-w>t<C-w>H
map sp <C-w>t<C-w>K
map sc <C-w>r
"map sl :vsplit
"map <LEADER>l <C-w>l
map <LEADER>l <C-w>w
map <LEADER>k <C-w>k
map <LEADER>h <C-w>h
map <LEADER>j <C-w>j
map <up> :res +5<CR>
map <down> :res -5<CR>
map <left> :vertical resize-5<CR>
map <right> :vertical resize+5<CR>
"标签设置
map fn :tabnew<CR>
map fc :tabclose<CR>
"map fy :tabonly<CR>
map fj :tabn<CR>
map fk :tabp<CR>
map fu :tabfirst<CR>
map fo :tablast<CR>
" Move the tabs with tmn and tmi
map fh :-tabmove<CR>
map fl :+tabmove<CR>
">>>
"<<<常规设置
set nocompatible
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on
"set mouse=nv
set mouse=r
"set encoding=utf-8
"set fileencodings=ucs-bom,utf-8,utf-16,gbk,big5,gb18030,latin1
set fileencodings=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin1
set enc=utf8
let &t_ut=''
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set nu
set relativenumber
syntax enable
syntax on
set cursorline
"set cursorcolumn
"set smarttab
set nobackup
set ruler
set autoindent
set smartindent
set cindent
set clipboard=unnamed
set noswapfile
set paste
set confirm
set t_Co=256
set cmdheight=1
"list设置显示行尾的空格和tab
set list
set listchars=tab:>-,trail:-
set backspace=indent,eol,start
set showcmd
"<<<?????"
set scrolloff=5
"set tw=0
"set indentexpr=
">>>
set foldmethod=manual
set foldcolumn=0
"set foldlevel=99
"let &t_SI = "\<Esc>]50;CursorShape=1\x7"
"let &t_SR = "\<Esc>]50;CursorShape=2\x7"
"let &t_EI = "\<Esc>]50;CursorShape=0\x7"
set laststatus=2
"set autochdir
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
">>>
"<<<complete
set completeopt=longest,menu

"=================================================================================================
"=================================================================================================

" ===
" === VBUNDLE
" ===
set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" All of your Plugins must be added before the following line
"Plugin 'hzchirs/vim-material'
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-scripts/taglist.vim'
Plugin 'scrooloose/nerdtree'
"Plugin 'vim-scripts/cscope.vim'
Plugin 'wesleyche/SrcExpl'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tomasr/molokai'
"Plugin 'flazz/vim-colorschemes'
Plugin 'morhetz/gruvbox'
"Plugin 'Lokaltog/vim-powerline'
Plugin 'vim-airline/vim-airline'
"Plugin 'ycm-core/YouCompleteMe'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'Yggdroot/indentLine'
Plugin 'terryma/vim-smooth-scroll'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'inkarkat/vim-ingo-library'
"Plugin 'inkarkat/vim-mark'
Plugin 'skywind3000/vim-preview'
Plugin 'MattesGroeger/vim-bookmarks'
Plugin 't9md/vim-quickhl'
call vundle#end()            " required
filetype plugin indent on    " required
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"

" ===
" ===	FUGITIVE 
" ===
map z1 0i//<ESC>
map z2 0xx<ESC>
"map c1 o<ESC>i/*OV ace.li fix <C-R>C @<C-R>=strftime("20%y%m%d")<CR> begin*/<ESC>
"map c2 o<ESC>i/*OV ace.li fix <C-R>C @<C-R>=strftime("20%y%m%d")<CR> end*/<ESC>
map x1 o<ESC>i/*BEGIN,OV ace.li fix <C-R>C @<C-R>=strftime("20%y%m%d")<CR> begin<ESC>
map x2 o<ESC>iEND,OV ace.li fix <C-R>C @<C-R>=strftime("20%y%m%d")<CR> end*/<ESC>
map x3 $a    //OV ace.li add it @<C-R>=strftime("20%y%m%d")<CR> for <C-R>C <ESC>
"map z3 o<ESC>i/*BEGIN,OV ace.li fix <C-R>C @<C-R>=strftime("20%y%m%d")<CR> begin<ESC>
"map z4 o<ESC>iEND,OV ace.li fix <C-R>C @<C-R>=strftime("20%y%m%d")<CR> end*/<ESC>
map c1 o<ESC>i<!-- OV ace.li fix <C-R>C @<C-R>=strftime("20%y%m%d")<CR> begin --><ESC>
map c2 o<ESC>i<!-- OV ace.li fix <C-R>C @<C-R>=strftime("20%y%m%d")<CR> end --><ESC>
map c3 $a    <!-- OV ace.li add it @<C-R>=strftime("20%y%m%d")<CR> for <C-R>C --> <ESC>
"vmap <C-c> "+y
"nmap <C-v> "+p
" ===
" === CTAGS
" ===
set tags=./tags,./TAGS,tags;~,TAGS;~
"更新ctags标签文件快捷键设置
noremap <F5> :!ctags -R<CR>
"Vim 的自动命令功能可以让我们在每次事件发生时调用指定的命. 例如: 缓冲区的创建, 打开, 写入文件等. 所以可以创建一个自动命令, 每次保存文件时来调用 ctags 命令:
"autocmd BufWritePost * call system("ctags -R")
"ctags -R --exclude=PATH/*:用exclude选项可以排除某些文件生成tags
" ===
" === TAGLIST
" ===
"不同时显示多个文件的tag，仅显示一个
let Tlist_Show_One_File=1
"taglist为最后一个窗口时退出vim
let Tlist_Exit_OnlyWindow=1
"设置ctags路径
let Tlist_Ctags_Cmd='/usr/bin/ctags'
"启动vim后自动打开taglist窗口
let Tlist_Auto_Open=0
"taglist窗口显示在右侧，缺省为左侧
let Tlist_Use_Right_Window=0
"设置taglist窗口大小
let Tlist_WinHeight=100
let Tlist_WinWidth=40
"打开taglist时，光标保留在taglist窗口
let Tlist_GainFocus_On_ToggleOpen = 1
"更新ctags标签文件快捷键设置
noremap <F6> :TlistUpdate<CR>
"设置taglist打开关闭的快捷键
"noremap <F7> :TlistToggle<CR>
noremap ss :TlistToggle<CR>
" ===
" === NERDTree
" ===
map ff :NERDTreeToggle<CR>
map <F7> :NERDTreeRefreshRoot<CR>
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
let NERDTreeShowHidden=1
let NERDTreeShowBookmarks=1

" ===
" ===	colorschemes 
" ===
"colorscheme molokai_dark
"colorscheme gruvbox

" ===
" ===vim-colors-solarized'
" ===
"let g:solarized_termcolors=256
"let g:solarized_contrast="high"
"syntax enable
"set background=dark
"colorscheme solarized
"call togglebg#map("<F5>")
" ===
" ===colorscheme molokai
" ===
let g:molokai_original = 1
let g:rehash256 = 1
colorscheme molokai
" ===
" ===colorscheme material
" ===
" Dark
"set background=dark
"colorscheme vim-material

" Palenight
"let g:material_style='palenight'
"set background=dark
"colorscheme vim-material

" Oceanic
"let g:material_style='oceanic'
"set background=dark
"colorscheme vim-material

" Light
"set background=light
"colorscheme vim-material

"let g:airline_theme='material'

" ===
" === CSCOPE
" ===
"cscope -Rbq
"cs add cscope.out
"nnoremap <leader>fa :call cscope#findInteractive(expand('<cword>'))<CR>
"nnoremap <leader>l :call ToggleLocationList()<CR>
" s: Find this C symbol
"nnoremap  <leader>fs :call cscope#find('s', expand('<cword>'))<CR>
" g: Find this definition
"nnoremap  <leader>fg :call cscope#find('g', expand('<cword>'))<CR>
" d: Find functions called by this function
"nnoremap  <leader>fd :call cscope#find('d', expand('<cword>'))<CR>
" c: Find functions calling this function
"nnoremap  <leader>fc :call cscope#find('c', expand('<cword>'))<CR>
" t: Find this text string
"nnoremap  <leader>ft :call cscope#find('t', expand('<cword>'))<CR>
" e: Find this egrep pattern
"nnoremap  <leader>fe :call cscope#find('e', expand('<cword>'))<CR>
" f: Find this file
"nnoremap  <leader>ff :call cscope#find('f', expand('<cword>'))<CR>
" i: Find files #including this file
"usage 
"use 'cw' to watch search result
"use s find all symbol
"use c find call place
"use f open include file
"nmap <C-_>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-f> :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-_>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-_>d :cs find d <C-R>=expand("<cword>")<CR><CR>
nmap <f3> :cnext<CR>
nmap <f4> :cprevious<CR>
"cs add /home/ace_li/workspace/temp/OX01G10_rom/cscope.out /home/ace_li/workspace/temp/OX01G10_rom
set cscopequickfix=s-,c-,d-,i-,t-,e-
if has("cscope")
    set csprg=/usr/bin/cscope
    set csto=1
    set cst
    set nocsverb
    " add any database in current directory
    if filereadable("cscope.out")
        cs add cscope.out
    endif
    set csverb
endif
" ===
" === SRCEXPL
" ===
"map <F8> :SrcExplToggle<CR> 
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
" === CTRLP
" ===
"<c-pp>         -调出搜索框
"<c-j>, <c-k>   - 在搜索结果里上下移动
"<c-v>, <c-x>   - 以水平或垂直的方式将光标选择的文件打开
"<c-n>, <c-p>   - 可以选择上一个或下一个搜索条件
"<c-y>          - 根据你的搜索路径，如果文件不存在，可以用该命令创建一个文件，包括创建目录

" ===
" === VIM-PREVIEW
" ===
autocmd FileType qf nnoremap <silent><buffer> p :PreviewQuickfix<cr>
autocmd FileType qf nnoremap <silent><buffer> P :PreviewClose<cr>

map <A-e> :PreviewTag<CR>
noremap <A-c> :PreviewClose<CR>

noremap <A-i> :PreviewScroll -1<CR>
noremap <A-o> :PreviewScroll +1<CR>
inoremap <A-i> <C-\><C-o>:PreviewScroll -1<CR>
inoremap <A-o> <C-\><C-o>:PreviewScroll +1<CR>


"noremap <A-p> :PreviewSignature<CR>
set noshowmode
noremap <A-p> :PreviewSignature!<CR>
inoremap <A-p> <c-\><c-o>:PreviewSignature!<CR>
"*****************************c模板********************
"autocmd BufNewFile *.c 0r /home/lyj/.vim/template/c.tlp

if filereadable($HOME."/.vimrc.loc")
    source ${HOME}/.vimrc.loc
endif
"***************最大化窗口***********
function! Zoom ()
    " check if is the zoomed state (tabnumber > 1 && window == 1)
    if tabpagenr('$') > 1 && tabpagewinnr(tabpagenr(), '$') == 1
        let l:cur_winview = winsaveview()
        let l:cur_bufname = bufname('')
        tabclose

        " restore the view
        if l:cur_bufname == bufname('')
            call winrestview(cur_winview)
        endif
    else
        tab split
    endif
endfunction

nmap <leader>z :call Zoom()<CR>

" ===
" === VIM-MARK
" ===
"nmap <leader>n :MarkClear<CR>

" ===
" === VIM-quickhl
" ===
nmap <Space>m <Plug>(quickhl-manual-this)
xmap <Space>m <Plug>(quickhl-manual-this)
nmap <Space>n <Plug>(quickhl-manual-reset)
xmap <Space>n <Plug>(quickhl-manual-reset)

" ===
" === VIM-BOOKMARKS
" ===
highlight BookmarkSign ctermbg=NONE ctermfg=160
highlight BookmarkLine ctermbg=194 ctermfg=NONE
let g:bookmark_highlight_lines = 1
"let g:bookmark_sign = '>>'
"let g:bookmark_annotation_sign = '##'
let g:bookmark_sign = '♥'
let g:bookmark_annotation_sign = '≡'
let g:bookmark_save_per_working_dir = 1
let g:bookmark_auto_save = 1
let g:bookmark_highlight_lines = 0
let g:bookmark_show_warning = 1
let g:bookmark_show_toggle_warning = 1
let g:bookmark_display_annotation = 1
let g:bookmark_disable_ctrlp = 1
let g:bookmark_location_list = 1
let g:bookmark_auto_close = 1
let g:bookmark_center = 0
let g:bookmark_manage_per_buffer = 1
noremap ms :BookmarkSave ./.vim-bookmarks<CR>
noremap ml :BookmarkLoad ./.vim-bookmarks<CR>
nmap mm :BookmarkToggle<CR>
nmap mi :BookmarkAnnotate<CR>
nmap mn :BookmarkNext<CR>
nmap mp :BookmarkPrev<CR>
nmap ma :BookmarkShowAll<CR>
nmap mc :BookmarkClear<CR>
nmap mx :BookmarkClearAll<CR>
nmap mkk :BookmarkMoveUp
nmap mjj :BookmarkMoveDown
