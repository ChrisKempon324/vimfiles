set nocompatible
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin

set diffexpr=MyDiff()
function MyDiff()
    let opt = '-a --binary '
    if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
    if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
    let arg1 = v:fname_in
    if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
    let arg2 = v:fname_new
    if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
    let arg3 = v:fname_out
    if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
    let eq = ''
    if $VIMRUNTIME =~ ' '
        if &sh =~ '\<cmd'
            let cmd = '""' . $VIMRUNTIME . '\diff"'
            let eq = '"'
        else
            let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
        endif
    else
        let cmd = $VIMRUNTIME . '\diff'
    endif
    silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
endfunction

" call pathogen  
" filetype off  
call pathogen#infect()
call pathogen#runtime_append_all_bundles()  
filetype plugin indent on

"=====================================================================================



"=============================�����趨================================================
"�����ĵ�Ĭ������ 
set helplang=cn 

"�趨ӳ���
let mapleader   = ","
let g:mapleader = ","

"�趨cursor
" set guicursor=n-v-c-i:block-Cursor

"_vimrc
map <leader>s :source $vim/_vimrc<cr>

"���ٴ�_vimrc(.vimrc)���б༭�����̲���
map <leader>e :e! $vim/_vimrc<cr>

"���������
nmap <leader>w :w!<cr>


"�����л����� ֻҪ��ctrl��+j[k,h,l],�Ϳ��ԣ�����ԭ����ctrl+w j[k,h,l]�ķ�ʽ
map <C-j> <C-W>j 
map <C-k> <C-W>k 
map <C-h> <C-W>h 
map <C-l> <C-W>l

" map j to gj and k to gk, so line navigation ignores line wrap
nmap j gj
nmap k gk

"�Զ������β�ո�
map <F5> :%s/\s*$//g<cr>:noh<cr>''

"�趨�����Լ�colorscheme
set guifont=Menlo:h14:i:cANSI

" set guifontwide=������:h10
set lines=40
set t_Co=256
set background=dark

colorscheme ir_dark
let g:solarized_italic=0

" lucius
"solarized " jellybeans Molokai cobalt ir_dark


"���ÿ����﷨����
syntax on

" �����﷨������
set syn=cpp

"��ʾ�к�
set nu!

" ���ҽ����������ʾ, ���������ִ�Сд
set ignorecase
set hlsearch

"����ʱ����ʾ������ʾ
set shortmess=atI

"�رմ�����ʾ
set notagbsearch

" tab���
set tabstop=4
" set cindent 
set shiftwidth=4
set expandtab "ʹ�ÿո����tab��  

" set smarttab
set softtabstop=4

map <F7> :%retab! <cr>

"��������
set autoindent 
set smartindent 

"�ر���������ʱ��������ʾ
autocmd VimEnter * set vb t_vb=

"���ò��Զ�����
set nobackup

" �Զ����¶���
set autoread
set tags=tags;

" �Զ��ı䵱ǰĿ¼
" if has('netbeans_intg')
"     set autochdir
" endif

" ��������� 
set cursorline

syntax enable                " ���﷨����
syntax on                    " �����ļ��������
filetype indent on           " ��Բ�ͬ���ļ����Ͳ��ò�ͬ��������ʽ
filetype plugin on           " ��Բ�ͬ���ļ����ͼ��ض�Ӧ�Ĳ��
filetype plugin indent on    " �����Զ���ȫ

"Toggle Menu and Toolbar F2����������
set guioptions-=m
set guioptions-=T
map <silent> <F2> :if &guioptions =~# 'T' <Bar>
            \set guioptions-=T <Bar>
            \set guioptions-=m <bar>
            \else <Bar>
            \set guioptions+=T <Bar>
            \set guioptions+=m <Bar>
            \endif<CR>

"F3ȡ����������
nmap <F3> :nohlsearch<CR> 
" =========
" GUI
" =========
if has("win32")
    " set guioptions=cr

    " Windows ��������
    source $VIMRUNTIME/mswin.vim

    " f11 ���
    nmap <f11> :call libcallnr('fullscreen.dll', 'ToggleFullScreen', 0)<cr>
    nmap <Leader>ff :call libcallnr('fullscreen.dll', 'ToggleFullScreen', 0)<cr>

    " �Զ���󻯴���
    au GUIEnter * simalt ~x

    " �� Win32 �µ� gVim ��������͸����
    " au GUIEnter * call libcallnr("vimtweak.dll", "SetAlpha", 247)

    " ��������
    " exec 'set guifont='.iconv('Monaco', &enc, 'utf-8').':h12'
    " exec 'set guifontwide='.iconv('Microsoft\ YaHei', &enc, 'gbk').':h10'
endif
"=====================================================================================



"===================================��windows�µı�������=============================
set encoding=utf-8  
set fileencodings=utf-8,chinese,latin-1  
if has("win32")  
    set fileencoding=utf-8
else    
    set fileencoding=utf-8  
endif  

"����˵�����  
source $VIMRUNTIME/delmenu.vim  
source $VIMRUNTIME/menu.vim  

"���consle�������  
language messages zh_CN.utf-8  
"=====================================================================================


" ======================================�½���ǩҳ��ݼ�==============================
nmap <A-w>   :tabnew<cr>
nmap <C-m>   :tabprevious<cr>
nmap <C-n>   :tabnext<cr>
nmap <C-k>   :tabclose<cr>
nmap <C-Tab> :tabnext<cr>
"=====================================================================================



"=============================���š����š������ŵ��Զ�ƥ��============================
inoremap ( () <Left><ESC>  
inoremap { {} <Left><ESC>
inoremap [ [] <Left><ESC>
inoremap < <> <Left><ESC>
inoremap " "" <Left><ESC>
inoremap ' '' <Left><ESC>
"=====================================================================================


"===================================����ģʽ�����==================================
inoremap <A-j> <Left>
inoremap <A-k> <Down>
inoremap <A-i> <Up>
inoremap <A-l> <Right>
"=====================================================================================



"===================================���������趨======================================
if has("gui_running")
    au GUIEnter * simalt ~x  " ��������ʱ�Զ����
    "set guioptions-=m       " ���ز˵���
    set guioptions-=T        " ���ع�����
    set guioptions-=L       " ������������
    " set guioptions-=r       " �����Ҳ������
    "set guioptions-=b       " ���صײ�������
    "set showtabline=0       " ����Tab��
endif

set laststatus=2                         
set cmdheight=2      
"=====================================================================================



"==================================��������״̬��======================================
set ch=1
set stl=\ [File]\ %F%m%r%h%y[%{&fileformat},%{&fileencoding}]\ %w\ \ [PWD]\ %r%{GetPWD()}%h\ %=\ [Line]%l/%L\ %=\[%P]
set ls=2 " ʼ����ʾ״̬��
set wildmenu "�����в�ȫ����ǿģʽ����
"======================================================================================


"===================================��ȡ��ǰĿ¼=======================================
func! GetPWD()
    return substitute(getcwd(), "", "", "g")
endfunction
" map <F5> :execute "cd" expand("%:h")<CR>
" set autochdir       "�Զ��л�����Ŀ¼���Ե�ǰ�򿪵��ļ�����Ŀ¼Ϊ׼
"���幤��Ŀ¼
let g:Source="D:/workspace/"
function Cw(dir)
    execute ":cd " . a:dir
endfunction
call Cw(g:Source)
com -nargs=1 Chw  call Cw()
"======================================================================================


"=====================================�۵�����=========================================
" set foldenable
" �����﷨�۵�
" manual  �ֹ������۵�
" indent  �����������ʾ���߼�����۵�
" expr    �ñ��ʽ�������۵�
" syntax  ���﷨�����������۵�
" diff    ��û�и��ĵ��ı������۵�
" marker  �����еı�־�۵�
set foldmethod=indent

"�۵���صĿ�ݼ�
"zR �����е��۵�
"za Open/Close (toggle) a folded group of lines.
"zA Open a Closed fold or close and open fold recursively.
"zi ȫ�� չ��/�ر� �۵�
"zo �� (open) �ڹ���µ��۵�
"zc �ر� (close) �ڹ���µ��۵�
"zC ѭ���ر� (Close) �ڹ���µ������۵�
"zM �ر����п��۵�����
"�����۵�����Ŀ��
"set foldcolumn=0
"�����۵�����Ϊ
"setlocal foldlevel=1
"�½����ļ����մ򿪵��ļ����۵�
autocmd! BufNewFile,BufRead * setlocal nofoldenable
"======================================================================================


"=====================================NERDTree����Ŀ�ݼ�=============================
nmap <silent> <leader>nt :NERDTree<cr>
let NERDTreeShowBookmarks=1
let NERDTreeWinSize=20
"======================================================================================


"=====================================����FuzzyFinder==================================
map <leader>F :FufFile<CR>
map <leader>f :FufTaggedFile<CR>
map <leader>g :FufTag<CR>
map <leader>b :FufBuffer<CR>
"======================================================================================


"======================================Command-T=======================================
nmap <silent><leader>t :CommandT<cr>
let g:CommandTMaxFiles=40000
set wildignore=*.pdf,*.o  " ignore certain file names
set wildignore+=*.o,*.obj,*.git,*.png,*.jpg,*.java,*.dll,*.gif
set wildignore+=*.sw? " Vim swap files
"======================================================================================



"=====================================MRU����Ŀ�ݼ�==================================
nmap <silent> <leader>mr :MRU<cr>
"======================================================================================


"=====================================Tlist��ʾ==========================================
map <leader>ti :TlistToggle<CR>
let Tlist_Show_One_File    = 1            "��ͬʱ��ʾ����ļ���tag��ֻ��ʾ��ǰ�ļ���
let Tlist_Exit_OnlyWindow  = 1          "���taglist���������һ�����ڣ����˳�vim
let Tlist_Use_Right_Window = 1         "���Ҳര������ʾtaglist����
if has('eval') 
    let Tlist_Inc_Winwidth=0 
endif 
let Tlist_JS_Settings = 'javascript;s:string;a:array;o:object;f:function'
let g:tlist_javascript_settings = 'javascript;r:var;s:string;a:array;o:object;u:function'
let Tlist_Ctags_Cmd = 'E:\ChrisLattner\ctags58\ctags58'
"=====================================Tlist��ʾ==========================================



"=====================================TagBar��ʾ==========================================
nmap <silent> <F4> :TagbarToggle<CR>
let g:tagbar_ctags_bin='ctags'
let g:tagbar_width=30
"========================================================================================


"====================================neocomplcache����===================================
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0

" Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1

" disalbe to auto complete
let g:neocomplcache_disable_auto_complete = 1
let g:neocomplcache_disable_select_mode_mappings = 1

" Use smartcase.
let g:neocomplcache_enable_smart_case = 1

" Use camel case completion.
let g:neocomplcache_enable_camel_case_completion = 1

" Use underbar completion.
let g:neocomplcache_enable_underbar_completion = 1

" Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

" Define dictionary.
let g:neocomplcache_dictionary_filetype_lists = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions',
    \ 'python' : $Vim.'/vimfiles/dict/complete-dict'
    \ }

" Define keyword.
if !exists('g:neocomplcache_keyword_patterns')
  let g:neocomplcache_keyword_patterns = {}
endif
let g:neocomplcache_keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
imap <C-k>     <Plug>(neocomplcache_snippets_expand)
smap <C-k>     <Plug>(neocomplcache_snippets_expand)
inoremap <expr><C-g>     neocomplcache#undo_completion()
inoremap <expr><C-l>     neocomplcache#complete_common_string()

" SuperTab like snippets behavior.
" imap <expr><TAB> neocomplcache#sources#snippets_complete#expandable() ? "\<Plug>(neocomplcache_snippets_expand)" : pumvisible() ? "\<C-n>" : "\<TAB>"

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <expr><CR>  neocomplcache#smart_close_popup() . "\<CR>"
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplcache#close_popup()
inoremap <expr><C-e>  neocomplcache#cancel_popup()

" AutoComplPop like behavior.
let g:neocomplcache_enable_auto_select = 1

" Shell like behavior(not recommended).
"set completeopt+=longest
"let g:neocomplcache_enable_auto_select = 1
"let g:neocomplcache_disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<TAB>"
"inoremap <expr><CR>  neocomplcache#smart_close_popup() . "\<CR>"

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplcache_omni_patterns')
  let g:neocomplcache_omni_patterns = {}
endif
let g:neocomplcache_omni_patterns.ruby = '[^. *\t]\.\w*\|\h\w*::'
autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
let g:neocomplcache_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
let g:neocomplcache_omni_patterns.c = '\%(\.\|->\)\h\w*'
let g:neocomplcache_omni_patterns.cpp = '\h\w*\%(\.\|->\)\h\w*\|\h\w*::'
"========================================================================================

"====================================Surper Tab==========================================
let g:SuperTabDefaultCompletionType = "<c-x><c-u>"
"========================================================================================


"====================================omni completion=====================================
set ofu=syntaxcomplete#Complete
"========================================================================================

"====================================ConqueTerm Powershell.exe ==========================
nmap <A-t> :ConqueTermVSplit Powershell.exe<cr>   
"========================================================================================

"===============================js����===================================================
au FileType html,python,ruby,vim,css,javascript setl shiftwidth=4
au FileType html,python,ruby,vim,css,javascript setl tabstop=4
au FileType java,php,ruby setl shiftwidth=4
au FileType java,php,ruby setl tabstop=4
set smarttab

"jquery�﷨����
au BufRead,BufNewFile *.js set syntax=jquery

"����JS�ֵ�  
autocmd FileType javascript set dictionary=$vim/vimfiles/dict/javascript.dict  

" ��javascript��dom��html��css��֧�� 
let javascript_enable_domhtmlcss=1   
"======================================================================================


"===============================����python�﷨����=====================================
au BufNewFile,BufRead *.py,*.pyw set syntax=python
let g:pydiction_location = $Vim.'/vimfiles/dict/complete-dict'
au FileType python set ft=python.django 
" au FileType html set ft=htmldjango.html
