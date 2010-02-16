"
" Loading .class calls jad.exe to recompile automatically with the following
" line put into the .(g)vimrc:
"
" autocmd BufRead *.class source c:/global/utils/vim-scripts/jad.vim|call Jad() 
"
" by Standa Opichal <opichals@seznam.cz>
"

function! Jad()
	let s:tmp = tempname()
	try
		exe "%write " . s:tmp
		exe "silent !jad -safe -dead -p " . s:tmp . " > " . s:tmp . ".java"
		%delete
		exe "%read " . s:tmp . ".java"
	finally
		call delete(s:tmp)
		call delete(s:tmp . ".java")
	endtry
endfunction
