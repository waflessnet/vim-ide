execute pathogen#infect()
syntax on
"filetype plugin indent on
filetype plugin on
autocmd vimenter * NERDTree | wincmd p
let delimitMate_expand_cr = 1
"Nerdtree
map <C-n> :NERDTreeToggle<CR>
let g:molokai_original = 1
let g:rehash256 = 1
let g:javascript_enable_domhtmlcss = 1
"colorscheme molokai"
"colorscheme base16-bespin
"let g:hybrid_custom_term_colors = 1
"let g:hybrid_reduced_contrast = 1 " Remove this line if using the default palette."
colorscheme hybrid
set background=dark
au BufReadPost *.ezt set syntax=html
let base16colorspace=256  " Access colors present in 256 colorspace"
set number
set t_Co=256
let g:Powerline_symbols = "fancy"
let NERDTreeShowBookmarks=1
autocmd QuickFixCmdPost *grep* cwindow
let g:airline#extensions#tabline#enabled = 1 
"let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
	  let g:airline_symbols = {}
 endif
let g:airline_theme='wombat'
let g:airline_symbols.space = "\ua0"
"let g:airline#themes#hybrid#palette= }
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'
"set html  de twig
au BufReadPost *.twig set syntax=html
"seteamos  el utf-8
set fileencoding=utf-8

" airline symbols
" let g:airline_left_sep = ''
" let g:airline_left_alt_sep = ''
" let g:airline_right_sep = ''
" let g:airline_right_alt_sep = ''
" let g:airline_symbols.branch = ''
" let g:airline_symbols.readonly = ''
" let g:airline_symbols.linenr = ''
set backupdir=~/.vim/backup_files//
set directory=~/.vim/swap_files//
set undodir=~/.vim/undo_files//
"php autocomplete
"g:phpcomplete_active_function_extensions
"g:phpcomplete_active_class_extensions
"g:phpcomplete_active_interface_extensions
"g:phpcomplete_active_constant_extensions
au FileType php set omnifunc=phpcomplete#CompletePHP
let php_sql_query=1                                                                                        
let php_htmlInStrings=1
let g:SuperTabDefaultCompletionType = "<c-x><c-o>"
"resaltar columnas y filas
se cursorline
se cursorcolumn
