exmap wq obcommand workspace:close
exmap q obcommand workspace:close
map " " <leader>
" Have j and k navigate visual lines rather than logical ones
nmap j gj
nmap k gk

" Quickly remove search highlights
nmap <F9> :nohl

" Yank to system clipboard
set clipboard=unnamed

" Go back and forward with Ctrl+O and Ctrl+I
" (make sure to remove default Obsidian shortcuts for these to work)
exmap back obcommand app:go-back
nmap <C-o> :back
exmap forward obcommand app:go-forward
nmap <C-i> :forward

" Use Ctrl+P to open the file search
nmap <C-ef> :Files<CR>
imap jj <Esc> 
imap jk <Esc>
nmap <leader>w :w<CR>

exmap surround_wiki surround [[ ]]
exmap surround_double_quotes surround " "
exmap surround_single_quotes surround ' '
exmap surround_backticks surround ` `
exmap surround_brackets surround ( )
exmap surround_square_brackets surround [ ]
exmap surround_curly_brackets surround { }
exmap surround_math surround $ $
exmap surround_italic surround * *

" NOTE: must use 'map' and not 'nmap'
map [[ :surround_wiki
nunmap s
vunmap s
map s" :surround_double_quotes
map s' :surround_single_quotes
map sc :surround_backticks
map sb :surround_brackets
map sm :surround_math
map s( :surround_brackets
map s) :surround_brackets
map s[ :surround_square_brackets
map s[ :surround_square_brackets
map s{ :surround_curly_brackets
map s} :surround_curly_brackets
map s* :surround_italic

exmap select_inside_equation obcommand obsidian-latex-suite:latex-suite-select-equation 

nmap vie :select_inside_equation  

