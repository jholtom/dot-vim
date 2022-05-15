" Vim syntax file
" Language:    Genesis2
" Maintainer:  James Mao <jamesmao@stanford.edu>
" Installation:
"   To automatically load this file when a .vp file is opened, add the
"   following lines to ~/.vim/filetype.vim:
"
"     augroup filetypedetect
"       au! BufRead,BufNewFile *.vp setfiletype genesis2
"     augroup END
"
"   You will have to restart vim for this to take effect.  In any case it 

if version < 600
    syntax clear
elseif exists("b:current_syntax")
    finish
endif

"Source the SystemVerilog syntax file
ru! syntax/systemverilog.vim
"Set the filetype to systemverilog to load the systemverilog ftplugins
set ft=systemverilog
unlet b:current_syntax

"Put the perl syntax file in @perlTop
syn include @perlTop $VIMRUNTIME/syntax/perl.vim

syn region genesisLine matchgroup=genesisDelim start=#//;# end=#$# keepend containedin=ALL contains=@perlTop
syn region genesisInline matchgroup=genesisDelim start=#`# end=#`# keepend containedin=ALL contains=@perlTop oneline

hi link genesisDelim todo

" vim: set ts=4 sw=4:
