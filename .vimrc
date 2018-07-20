set nocompatible 		    "非兼容模式 让VIM 更易用
so ~/.vim/plugins.vim        "加载插件
"================ 备份和临时文件==============
set backup                  "备份当前文件
set writebackup             " 删除老的备份文件
"设置备份目录
set backupdir=/tmp
"不备份的目录
set backupskip=/tmp

"================主题和颜色============
"=两边不能有空格
set t_CO=256 			    "256色值
colorscheme atom-dark-256  	"主题
syntax on 		        	"开启语法高亮
set autoindent              "让每一行自动和上一行保持相同的缩进  
set guifont=Fira_Code:h16        " Monospaced font with programming ligatures

"=============== 缩进=====================
set tabstop=4			    "1tap=4空格
set shiftwidth=4		    "<< >>
set expandtab		    	"把 tab  替换为空

"=============== Mapping ==================
let mapleader=','           "改变 leader键
nmap <leader>ev :tabedit ~/.vimrc<CR>       "按下,ev 执行命令 :tabedit ~/.vimrc 在新的 tap 中打开vimrc
nmap <D-1> :tabn1<CR>  "按下D1执行命令：tabn1 , 打开第1个标签
nmap <D-2> :tabn2<CR>  "按下D1执行命令：tabn2 , 打开第2个标签
nmap <D-3> :tabn3<CR>  "按下D1执行命令：tabn3 , 打开第3个标签
nmap <D-4> :tabn4<CR>  "按下D1执行命令：tabn4 , 打开第4个标签
nmap <D-5> :tabn5<CR>  "按下D1执行命令：tabn5 , 打开第5个标签
nmap <D-6> :tabn6<CR>  "按下D1执行命令：tabn6 , 打开第6个标签
" 树形目录
nmap <C-n> :NERDTreeToggle<CR>
"显示当前 tag 中的 buffer
nnoremap <C-r> :CtrlPBufT

"=============== Aotucmd ==================
augroup autosourcing 
    "清空命令
    autocmd!
    autocmd BufWritePost   .vimrc so %
    if has("gui_running")
        so ~/.gvimrc
    endif
augroup END

"=============== 搜索=====================
set hlsearch                "高亮显示搜索结果
set incsearch               " 实时搜索
nnoremap <leader><space> :noh<CR> "关闭搜索高亮
"=============== UI Tweaks =================
set guifont=Fira_Code:h18	"设置等宽字体
set macligatures  		    "Display programming ligatures
set linespace=16		    "设置行高
set number
set cursorline              "高亮显示当前行
set laststatus=2            " Always display status line
set ruler                   " Display the line and column he cursor in status bar
filetype plugin indent on 	"根据文件类型显示颜色
set vb t_vb=
set showmatch 		       	"括号呼应
set wildmenu 			    "tab 补全
set scrolljump=5		    "当光标滚动到底部时自动加载更多
set scrolloff=3			    "3行触发加载更过
set guioptions-=l           " 关闭左侧滚动条
set guioptions-=L           "关闭分屏的左侧滚动条
set guioptions-=r           " 关闭右侧滚动条
set guioptions-=R
set guioptions-=e           " 关闭标签选项卡
set splitbelow              "新开的窗口出现在下面
set splitright              " 新开的窗口在左边
