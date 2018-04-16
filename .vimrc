" genernal settings
syntax enable
syntax on
set t_Co=256
set cul 
set shortmess=atI   
autocmd InsertEnter * se cul    
set ruler           
set showcmd         
set scrolloff=3     
set laststatus=2
set autoindent
set smartindent
set cindent
set cinoptions=g0,:0,N-s,(0
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smarttab
set number
set history=1000
set hlsearch
set incsearch
set langmenu=zh_CN.UTF-8
set helplang=cn
set cmdheight=2
set autoread
set completeopt=preview,menu 
set autowrite
set magic                   
set guioptions-=T           
set guioptions-=m           
set nocompatible
set noeb
set confirm
set nobackup
set noswapfile
set ignorecase
set linespace=0
set wildmenu
set backspace=2
set whichwrap+=<,>,h,l
set mouse=a
set selection=exclusive
set selectmode=mouse,key
set report=0
set fillchars=vert:\ ,stl:\ ,stlnc:\
set showmatch
set matchtime=1
set scrolloff=3
set completeopt=longest,menu
set iskeyword+=.
set termencoding=utf-8
set encoding=utf8
set fileencodings=utf8,ucs-bom,gbk,cp936,gb2312,gb18030
filetype on
filetype plugin on
filetype indent on

" create file settings
autocmd BufNewFile *.cpp,*.cc,*.c,*.hpp,*.h,*.sh,*.py exec ":call SetTitle()" 
func SetTitle() 
    if expand("%:e") == 'sh'
        call setline(1,"\#!/bin/bash") 
        call append(line("."), "") 
    elseif expand("%:e") == 'py'
        call setline(1,"#!/usr/bin/env python")
        call append(line("."),"# coding=utf-8")
        call append(line(".")+1, "") 
    elseif expand("%:e") == 'cpp'
        call setline(1,"#include <iostream>") 
        call append(line("."), "") 
    elseif expand("%:e") == 'cc'
        call setline(1,"#include <iostream>") 
        call append(line("."), "") 
    elseif expand("%:e") == 'c'
        call setline(1,"#include <stdio.h>") 
        call setline(2,"#include <stdlib.h>") 
        call setline(3,"#include <sys/stat.h>") 
        call setline(4,"#include <sys/types.h>") 
        call setline(5,"#include <string.h>") 
        call setline(6,"#include <unistd.h>") 
        call setline(7,"")
        call setline(8,"int main(int argc,char* argv[])") 
        call setline(9,"{") 
        call setline(10,"") 
        call setline(11,"")
        call setline(12,"    return 0;")
        call setline(13,"}")
    elseif expand("%:e") == 'h'
        call setline(1, "#ifndef _".toupper(expand("%:r"))."_H")
        call setline(2, "#define _".toupper(expand("%:r"))."_H")
        call setline(3, "#endif")
    elseif expand("%:e") == 'hpp'
        call setline(1, "#ifndef _".toupper(expand("%:r"))."_H")
        call setline(2, "#define _".toupper(expand("%:r"))."_H")
        call setline(3, "#endif")
    endif
endfunc 
autocmd BufNewFile * normal G

" Vundle
set nocompatible              
filetype off        

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'L9'
Plugin 'chxuan/change-colorscheme'
Plugin 'jiangmiao/auto-pairs'
Plugin 'scrooloose/nerdcommenter'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'Valloric/MatchTagAlways'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'docunext/closetag.vim'
Plugin 'godlygeek/tabular'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-endwise'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'majutsushi/tagbar'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
"Plugin 'vim-scripts/a.vim'
Plugin 'vim-scripts/DoxygenToolkit.vim'"注释自动生成
Plugin 'vim-scripts/SQLComplete.vim'
Plugin 'vim-scripts/txt.vim'
Plugin 'ryanoasis/vim-devicons'
Plugin 'gorodinskiy/vim-coloresque'
Plugin 'will133/vim-dirdiff'
Plugin 'haya14busa/incsearch.vim'
Plugin 'mhinz/vim-startify'






"Plugin 'VundleVim/Vundle.vim'
"Plugin 'altercation/vim-colors-solarized'    “配色方案
"Plugin 'tomasr/molokai'   ”配色方案
"Plugin 'vim-scripts/phd'
""Plugin 'scrooloose/nerdcommenter' " 快速注释
"Plugin 'chrisniael/VimIM' " vim内嵌输入法
"Plugin 'octol/vim-cpp-enhanced-highlight'
"Plugin 'kshenoy/vim-signature'
"Plugin 'vimwiki/vimwiki' " My NoteBook
"Plugin 'itchyny/calendar.vim'
"Plugin 'majutsushi/tagbar'
"Plugin 'vim-scripts/indexer.tar.gz'
"Plugin 'vim-scripts/DfrankUtil'
"Plugin 'vim-scripts/vimprj'
"Plugin 'dyng/ctrlsf.vim' " 工程内查找替换
"Plugin 'terryma/vim-multiple-cursors'
""--------------------------------批量修改！
Plugin 'SirVer/ultisnips' " 代码块
Plugin 'honza/vim-snippets'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-scripts/a.vim' " 切换头文件和.cxx ycm加强代码跳转需要
Plugin 'derekwyatt/vim-fswitch' " 切换头文件和.cxx
Plugin 'derekwyatt/vim-protodef' " 实现.h内函:数定义 需要fswitch--------------！
"Plugin 'mbbill/echofunc' " 提示函数原型----------------------------------状态栏显示函数原型
Plugin 'scrooloose/nerdtree' " 文件树
Plugin 'jistr/vim-nerdtree-tabs' " nerdtree的插件
Plugin 'ivalkeen/nerdtree-execute' " nerdtree的插件
Plugin 'gcmt/wildfire.vim' " 智能选中surround内内容-------------------------！括号内的内容
Plugin 'vim-scripts/VisIncr' "生成递增数列--------------------------------递增数字和字母 ！！！
Plugin 'sjl/gundo.vim' " 无级undo         -------------------------------无敌撤销
Plugin 'Lokaltog/vim-easymotion' " 快速跳转-----------------------------！！！！！！
Plugin 'lilydjwg/fcitx.vim' " 根据vim状态自动切换fcitx开关状态
"Plugin 'jiangmiao/auto-pairs' " 自动输入匹配括号
"Plugin 'vim-airline/vim-airline' " 状态栏
"Plugin 'vim-airline/vim-airline-themes'
"Plugin 'tpope/vim-surround' " 快速修改surround
Plugin 'airblade/vim-rooter' " 自动切换工作目录
Plugin 'asins/vimcdoc' " vim中文文档
Plugin 'Yggdroot/indentLine' " 缩进线
"Plugin 'tpope/vim-repeat' " 加强.
Plugin 'vim-ctrlspace/vim-ctrlspace' " 文件, buffer, tab管理！
Plugin 'bbchung/clighter8' "bug fixed in clighter8, C/C++高亮加强  ----------------！
Plugin 'rhysd/vim-clang-format' "format your code
Plugin 'dkasak/manpageview' " 在vim内查看man
Plugin 'skywind3000/asyncrun.vim' "异步处理外部事件
Plugin 'vim-scripts/TaskList.vim'
" Plugin 'Xuyuanp/nerdtree-git-plugin' " 可以显示文件的Git增删状态
" " Plugin 'tpope/vim-fugitive' " Git插件 备用



"Plugin 'SirVer/ultisnips'
"Plugin 'honza/vim-snippets'

call vundle#end()            
filetype plugin indent on    

" load vim default plugin
runtime macros/matchit.vim

" change-colorscheme
map <F10> :NextColorScheme<CR>
imap <F10> <ESC> :NextColorScheme<CR>
map <F9> :PreviousColorScheme<CR>
imap <F9> <ESC> :PreviousColorScheme<CR>

" nerdtree
map <F3> :NERDTreeToggle<CR>
imap <F3> <ESC> :NERDTreeToggle<CR>
"autocmd vimenter * if !argc() | NERDTree | endif
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" Doxygen 注释自动生成  定位在文件首行 ：DoxAuthor 插入头文件注释骨架
"并把光标停留在@brief后，等待输入文件描述，在光标定位到数据结构声明或函数声明的第一行，运行：Dox，将生成数据结构或函数的注释骨架 
let g:DoxygenToolkit_authorName="YouCompleteMe"
let s:licenseTag = "Copyright(C)\<enter>"
let s:licenseTag = s:licenseTag . "For free\<enter>"
let s:licenseTag = s:licenseTag . "All right reserved\<enter>"
let g:DoxygenToolkit_licenseTag = s:licenseTag
let g:DoxygenToolkit_briefTag_funcName="yes"
let g:doxygen_enhanced_color=1
let g:DoxygenToolkit_commentType="Qt"

" YCM
" 允许自动加载ycm-extra-config.py，不再提示
let g:ycm_confirm_extra_conf = 0 
let g:ycm_error_symbol = '>>'
let g:ycm_warning_symbol = '>*'
let g:ycm_seed_identifiers_with_syntax = 1 
"补全功能在注释中同样有效
let g:ycm_complete_in_comments = 1 
let g:ycm_complete_in_strings = 1 
"let g:ycm_cache_omnifunc = 0
"跳转声明定义快捷键 光标定义在关键字处，leader健加gg   ctrl+o返回
let mapleader = ","
nnoremap <leader>gg :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>
nnoremap <leader>gi :YcmCompleter GoToInclude<CR>
"显示所有错误，其实是打开了一个locationlist窗口，也可以通过：lopen打开
"使用：lclose关闭
"
nmap <F5> :YcmDiags<CR>

"有些系统函数如fopen  不能只能提示  试试ctrl+space





" ctags
set tags+=/usr/include/tags
set tags+=~/.vim/systags
set tags+=~/.vim/x86_64-linux-gnu-systags
"开启tags补全引擎
let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_semantic_triggers = {} 
let g:ycm_semantic_triggers.c = ['->', '.', ' ', '(', '[', '&',']']

" a.vim: .h -> .cpp or .cpp -> .h
nnoremap <silent> <F2> :A<CR>

" tagbar
let g:tagbar_ctags_bin = '/usr/bin/ctags'
let g:tagbar_width = 30
map <F4> :TagbarToggle<CR>
imap <F4> <ESC> :TagbarToggle<CR>

"echofunc快捷键设置 （
"nmap :!ctags -R --fields=+lS*
"set tags=/usr/include/tags


"配色方案
" colorscheme
set background=dark
let g:solarized_termcolors=256
"colorscheme solarized
colorscheme torte

" cpp_class_scope_highlight
let g:cpp_class_scope_highlight = 1
let g:cpp_experimental_template_highlight = 1
let c_no_curly_error = 1

" airline
let g:airline_theme="luna"
let g:airline_powerline_fonts = 1
"let g:airline_section_b = '%{strftime("%c")}'
"let g:airline_section_y = 'BN: %{bufnr("%")}'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
nnoremap <C-N> :bn<CR>
nnoremap <C-P> :bp<CR>

" ctrlp
let g:ctrlp_map = '<c-f>'
let g:ctrlp_cmd = ':CtrlP'
let g:ctrlp_working_path_mode = '0'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux

" vim-devicons
set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Nerd\ Font\ Complete\ 12

"代码块
let mapleader = ","
let g:UltiSnipsExpandTrigger="<leader><tab>"
let g:UltiSnipsJumpForwardTrigger="<leader><tab>"
let g:UltiSnipsJumpBackwardTrigger="<leader><s-tab>"


" incsearch.vim
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)

