let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
inoremap <silent> <SNR>13_AutoPairsReturn =AutoPairsReturn()
inoremap <F1> 	
map  h
map <NL> j
map  k
map  l
nnoremap <silent>  :CtrlP
map   /
vnoremap <silent> # :call VisualSelection('b')
vnoremap <silent> * :call VisualSelection('f')
nnoremap ,s :mksession!
map ,r :call ToggleNumber()
map ,ss :setlocal spell! spelllang=en_us
map <silent> , :noh
map ,n :NERDTreeToggle
nnoremap B ^
nnoremap E $
xmap S <Plug>VSurround
nnoremap b9 :9b
nnoremap b8 :8b
nnoremap b7 :7b
nnoremap b6 :6b
nnoremap b5 :5b
nnoremap b4 :4b
nnoremap b3 :3b
nnoremap b2 :2b
nnoremap b1 :1b
nnoremap bl :BufExplorer
nnoremap bp :bp
nnoremap bn :bn
nmap cs <Plug>Csurround
nmap ds <Plug>Dsurround
nmap gx <Plug>NetrwBrowseX
xmap gS <Plug>VgSurround
map j gj
map k gk
map sl z=
map sa zg
map sp [s
map sn ]s
nnoremap tc :tabclose
nnoremap to :tabnew
nnoremap tp :tabprev
nnoremap tn :tabnext
nmap ySS <Plug>YSsurround
nmap ySs <Plug>YSsurround
nmap yss <Plug>Yssurround
nmap yS <Plug>YSurround
nmap ys <Plug>Ysurround
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#NetrwBrowseX(expand("<cWORD>"),0)
nnoremap <silent> <Plug>SurroundRepeat .
map <C-Space> ?
imap S <Plug>ISurround
imap s <Plug>Isurround
imap 	 
imap  <Plug>Isurround
inoremap jj 
inoremap jk 
inoremap kk 
let &cpo=s:cpo_save
unlet s:cpo_save
set autoindent
set background=dark
set backspace=eol,start,indent
set cmdheight=2
set expandtab
set fileencodings=ucs-bom,utf-8,default,latin1
set helplang=en
set hidden
set history=50
set hlsearch
set ignorecase
set incsearch
set matchtime=2
set nomodeline
set printoptions=paper:a4
set ruler
set runtimepath=~/.vim,~/.vim/bundle/Session.vim,~/.vim/bundle/auto-pairs,~/.vim/bundle/bufexplorer,~/.vim/bundle/ctrlp.vim,~/.vim/bundle/nerdtree,~/.vim/bundle/vim-airline,~/.vim/bundle/vim-auto-save,~/.vim/bundle/vim-colors-solarized,~/.vim/bundle/vim-latex,~/.vim/bundle/vim-misc,~/.vim/bundle/vim-notes,~/.vim/bundle/vim-session,~/.vim/bundle/vim-surround,/var/lib/vim/addons,/usr/share/vim/vimfiles,/usr/share/vim/vim74,/usr/share/vim/vimfiles/after,/var/lib/vim/addons/after,~/.vim/bundle/vim-latex/after,~/.vim/after
set scrolloff=7
set shiftwidth=4
set showmatch
set showtabline=2
set smartcase
set smartindent
set smarttab
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc
set noswapfile
set tabline=%!airline#extensions#tabline#get()
set tabstop=4
set undodir=~/.vim/undo
set undofile
set updatetime=200
set viminfo=%,'100,<50,s10,h
set whichwrap=b,s,<,>,h,l
set wildignore=*.o,*~,*.pyc
set wildmenu
set window=58
set nowritebackup
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/master-project/human-computable-pws
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +20 main.tex
badd +91 chapters/human-computable-passwords.tex
badd +18 MScthesisITEM.cls
badd +58 chapters/background.tex
badd +9 biblo.bib
badd +2 glossary.tex
args main.tex
edit chapters/human-computable-passwords.tex
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
let s:cpo_save=&cpo
set cpo&vim
inoremap <buffer> <silent> <BS> =AutoPairsDelete()
inoremap <buffer> <silent> <F7> =latex#change#to_command()
onoremap <buffer> <silent> % :normal v%
xnoremap <buffer> <silent> % :call latex#motion#find_matching_pair(1)
nnoremap <buffer> <silent> % :call latex#motion#find_matching_pair()
inoremap <buffer> <silent> î :call AutoPairsJump()a
inoremap <buffer> <silent> <expr> ð AutoPairsToggle()
inoremap <buffer> <silent> â =AutoPairsBackInsert()
inoremap <buffer> <silent> å =AutoPairsFastWrap()
onoremap <buffer> <silent> [[ :normal v[[
onoremap <buffer> <silent> [] :normal v[]
xnoremap <buffer> <silent> [[ :call latex#motion#next_section(0,1,1)
xnoremap <buffer> <silent> [] :call latex#motion#next_section(1,1,1)
nnoremap <buffer> <silent> [[ :call latex#motion#next_section(0,1,0)
nnoremap <buffer> <silent> [] :call latex#motion#next_section(1,1,0)
nnoremap <buffer> <silent> \lo :call latex#latexmk#output()
nnoremap <buffer> <silent> \le :call latex#latexmk#errors(1)
nnoremap <buffer> <silent> \lK :call latex#latexmk#stop_all()
nnoremap <buffer> <silent> \lk :call latex#latexmk#stop()
nnoremap <buffer> <silent> \lG :call latex#latexmk#status(1)
nnoremap <buffer> <silent> \lg :call latex#latexmk#status(0)
nnoremap <buffer> <silent> \lC :call latex#latexmk#clean(1)
nnoremap <buffer> <silent> \lc :call latex#latexmk#clean(0)
nnoremap <buffer> <silent> \ll :call latex#latexmk#toggle()
nnoremap <buffer> <silent> \lv :call latex#view#view()
nnoremap <buffer> \lT :call latex#toc#toggle()
nnoremap <buffer> \lt :call latex#toc#open()
nnoremap <buffer> <silent> \lR :call latex#reinit()
nnoremap <buffer> <silent> \lh :call latex#help()
nnoremap <buffer> <silent> \li :call latex#info()
onoremap <buffer> <silent> ][ :normal v][
onoremap <buffer> <silent> ]] :normal v]]
xnoremap <buffer> <silent> ][ :call latex#motion#next_section(1,0,1)
xnoremap <buffer> <silent> ]] :call latex#motion#next_section(0,0,1)
nnoremap <buffer> <silent> ][ :call latex#motion#next_section(1,0,0)
nnoremap <buffer> <silent> ]] :call latex#motion#next_section(0,0,0)
onoremap <buffer> <silent> ad :normal va(
xnoremap <buffer> <silent> ad :call latex#motion#sel_delimiter()
onoremap <buffer> <silent> a$ :normal va$
xnoremap <buffer> <silent> a$ :call latex#motion#sel_inline_math()
onoremap <buffer> <silent> ae :normal vae
xnoremap <buffer> <silent> ae :call latex#motion#sel_environment()
nnoremap <buffer> <silent> cse :call latex#change#env_prompt()
nnoremap <buffer> <silent> dse :call latex#change#env('')
onoremap <buffer> <silent> id :normal vi(
xnoremap <buffer> <silent> id :call latex#motion#sel_delimiter(1)
onoremap <buffer> <silent> i$ :normal vi$
xnoremap <buffer> <silent> i$ :call latex#motion#sel_inline_math(1)
onoremap <buffer> <silent> ie :normal vie
xnoremap <buffer> <silent> ie :call latex#motion#sel_environment(1)
nnoremap <buffer> <silent> tsd :call latex#change#toggle_delim()
nnoremap <buffer> <silent> tse :call latex#change#toggle_env_star()
nnoremap <buffer> <silent> u :call FdmSave()u:call FdmRestore()
nnoremap <buffer> <silent> zX :call latex#fold#refresh('zX')
nnoremap <buffer> <silent> zx :call latex#fold#refresh('zx')
nnoremap <buffer> <silent> <F7> :call latex#change#to_command()i
inoremap <buffer> <silent>  =AutoPairsDelete()
inoremap <buffer> <silent>   =AutoPairsSpace()
inoremap <buffer> <silent> " =AutoPairsInsert('"')
inoremap <buffer> <silent> ' =AutoPairsInsert('''')
inoremap <buffer> <silent> ( =AutoPairsInsert('(')
inoremap <buffer> <silent> ) =AutoPairsInsert(')')
noremap <buffer> <silent> î :call AutoPairsJump()
noremap <buffer> <silent> ð :call AutoPairsToggle()
inoremap <buffer> <silent> [ =AutoPairsInsert('[')
inoremap <buffer> <silent> ] =AutoPairsInsert(']')
inoremap <buffer> <silent> ]] =latex#change#close_environment()
inoremap <buffer> <silent> ` =AutoPairsInsert('`')
inoremap <buffer> <silent> { =AutoPairsInsert('{')
inoremap <buffer> <silent> } =AutoPairsInsert('}')
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
setlocal commentstring=%\ %s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=%-P**%f,%-P**\"%f\",%E!\ LaTeX\ %trror:\ %m,%E%f:%l:\ %m,%E!\ %m,%Z<argument>\ %m,%Cl.%l\ %m,%+WLaTeX\ %.%#Warning:\ %.%#line\ %l%.%#,%+W%.%#\ at\ lines\ %l--%*\\d,%+WLaTeX\ %.%#Warning:\ %m,%+W%.%#%.%#Warning:\ %m,%-C(biblatex)%.%#in\ t%.%#,%-C(biblatex)%.%#Please\ v%.%#,%-C(biblatex)%.%#LaTeX\ a%.%#,%-Z(biblatex)%m,%-C(hyperref)%.%#on\ input\ line\ %l.,%-G%.%#
setlocal expandtab
if &filetype != 'tex'
setlocal filetype=tex
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=latex#fold#level(v:lnum)
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=expr
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=latex#fold#text()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=
setlocal includeexpr=
setlocal indentexpr=LatexIndent()
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e,[,(,{,),},],&,=\\item
setlocal noinfercase
setlocal iskeyword=48-57,a-z,A-Z,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal nomodeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=latex#complete#omnifunc
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal smartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%!airline#statusline(1)
setlocal suffixesadd=.tex
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'tex'
setlocal syntax=tex
endif
setlocal tabstop=4
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal undofile
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
1
normal! zo
6
normal! zo
13
normal! zo
21
normal! zo
24
normal! zo
31
normal! zo
35
normal! zo
42
normal! zo
48
normal! zo
53
normal! zo
60
normal! zo
65
normal! zo
67
normal! zo
69
normal! zo
92
normal! zo
94
normal! zo
96
normal! zo
124
normal! zo
let s:l = 58 - ((19 * winheight(0) + 28) / 56)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
58
normal! 0828|
tabnext 1
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
