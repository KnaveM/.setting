" default setting
set nocompatible
set number
"filetype on
set fileencodings=utf-8
set termencoding=utf-8
set encoding=utf-8
" default setting end

" my setting "
set tags+=/home/skull/vscode/unix/tags  "unixNetwork tags
set tags+=/usr/share/vim/.vim/usrincludetags  "/usr/include
hi Search term=standout ctermfg=0 ctermbg=11 guifg=Black guibg=Yellow
hi Error term=reverse ctermfg=15 ctermbg=9 guifg=White guibg=Red
hi WarningMsg term=standout ctermfg=0 ctermbg=11 guifg=Black guibg=Yellow
hi ErrorMsg term=reverse ctermfg=15 ctermbg=9 guifg=White guibg=Red
hi SpellBad ctermfg=232 ctermbg=214 guifg=#000000 guibg=#ffaf00
hi SpellCap ctermfg=17 ctermbg=45 guifg=#00005f guibg=#00dfff
" my setting end"


"vundle"
set rtp+=/usr/share/vim/.vim/bundle/Vundle.vim
"plugin"
call vundle#begin('/usr/share/vim/.vim/bundle')
Plugin 'gmarik/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'jonathanfilip/vim-lucius'
Plugin 'altercation/vim-colors-solarized'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdcommenter'
Plugin 'luochen1990/rainbow'
Plugin 'dense-analysis/ale'
call vundle#end()
" Vundle end

" theme solarized
"let g:solarized_visibility="high"   " 使用 :set list 显示特殊字符时的高亮级别
"let g:solarized_termcolors=256
"set background=light
"colorscheme solarized
" solarized end

" YouCompleteMe
let g:ycm_global_ycm_extra_conf='/usr/share/vim/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
" 关闭YCM的语法检测
let g:syntastic_enable_signs = 0
" YCM end

" ALE
let g:ale_sign_column_always = 0
let g:ale_set_highlights = 0
let g:ale_sign_error = 'x'
let g:ale_sign_warning = '!'
let b:ale_warn_about_trailing_whitespace=0
" 修复trailing尾部空格
let g:ale_fixers = {
			\   '*': ['remove_trailing_lines', 'trim_whitespace']}
" let g:ale_lint_on_enter = 0
" ALE end

" quick comment
let mapleader=","
"设置斜杠反斜杠为注释
map  <leader>cc
imap  <leader>cc
map  <leader>cu
imap  <leader>cu
let g:NERDSpaceDelims            = 1                                    " 在注释符号后加一个空格
let g:NERDCompactSexyComs        = 1                                    " 紧凑排布多行注释
let g:NERDDefaultAlign           = 'left'                               " 逐行注释左对齐
let g:NERDAltDelims_java         = 1                                    " JAVA 语言使用默认的注释符号
let g:NERDCustomDelimiters = { 'c': { 'left': '//' } }
let g:NERDCommentEmptyLines      = 1                                    " 允许空行注释
let g:NERDTrimTrailingWhitespace = 1                                    " 取消注释时删除行尾空格
let g:NERDToggleCheckAllLines    = 1
" comment end

"""""""实用设置"""""""
" 设置当文件被改动时自动载入
set autoread
" quickfix模式
autocmd FileType c,cpp map <buffer> <leader><space> :w<cr>:make<cr>
"代码补全
set completeopt=preview,menu
"允许插件
filetype plugin on
"共享剪贴板
set clipboard=unnamed
"从不备份
set nobackup
"make 运行
:set makeprg=g++\ -Wall\ \ %
"自动保存
set autowrite
set ruler                   " 打开状态栏标尺
set cursorline              " 突出显示当前行
set magic                   " 设置魔术
set guioptions-=T           " 隐藏工具栏
set guioptions-=m           " 隐藏菜单栏
"set statusline=\ %<%F[%1*%M%*%n%R%H]%=\ %y\ %0(%{&fileformat}\ %{&encoding}\ %c:%l/%L%)\
" 设置在状态行显示的信息
set foldcolumn=0
set foldmethod=indent
set foldlevel=3
set foldenable              " 开始折叠
" 不要使用vi的键盘模式，而是vim自己的
set nocompatible
" 语法高亮
set syntax=on
" 去掉输入错误的提示声音
set noeb
" 在处理未保存或只读文件的时候，弹出确认
set confirm
" 自动缩进
set autoindent
set cindent
" Tab键的宽度
set tabstop=4
" 统一缩进为4
set softtabstop=4
set shiftwidth=4
" 不要用空格代替制表符
set noexpandtab
" 在行和段开始处使用制表符
set smarttab
" 显示行号
set number
" 历史记录数
set history=1000
"禁止生成临时文件
set nobackup
set noswapfile
"搜索忽略大小写
set ignorecase
"搜索逐字符高亮
set hlsearch
set incsearch
"行内替换
set gdefault
"编码设置
set enc=utf-8
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
"语言设置
set langmenu=zh_CN.UTF-8
set helplang=cn
" 我的状态行显示的内容（包括文件类型和解码）
"set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}
"set statusline=[%F]%y%r%m%*%=[Line:%l/%L,Column:%c][%p%%]
" 总是显示状态行
"set laststatus=0
" 命令行（在状态行下）的高度，默认为1，这里是2
set cmdheight=1
" 侦测文件类型
" filetype on
" 载入文件类型插件
filetype plugin on
" 为特定文件类型载入相关缩进文件
filetype indent on
" 保存全局变量
set viminfo+=!
" 带有如下符号的单词不要被换行分割
set iskeyword+=_,$,@,%,#,-
" 字符间插入的像素行数目
set linespace=0
" 增强模式中的命令行自动完成操作
set wildmenu
" 使回格键（backspace）正常处理indent, eol, start等
set backspace=2
" 允许backspace和光标键跨越行边界
set whichwrap+=<,>,h,l,[,]
" 可以在buffer的任何地方使用鼠标（类似office中在工作区双击鼠标定位）
set mouse=v
set selection=exclusive
set selectmode=key
" 通过使用: commands命令，告诉我们文件的哪一行被改变过
set report=0
" 在被分割的窗口间显示空白，便于阅读
set fillchars=vert:\ ,stl:\ ,stlnc:\
" 高亮显示匹配的括号
set showmatch
" 匹配括号高亮的时间（单位是十分之一秒）
set matchtime=1
" 光标移动到buffer的顶部和底部时保持3行距离
set scrolloff=3
" 为C程序提供自动缩进
set smartindent
" 终端颜色
set t_Co=256

"airline setting"
let g:airline_powerline_fonts=1    "powerline fonts"
"let g:airline#extensions#tabline#enabled = 1  "显示窗口和buffer"
let g:airline_theme="dark"  " 设置airline主题

" tabline settings
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#formatter = 'default'
