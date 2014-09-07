source ~/.vimrc-common

" bibtex stuff {
  " bibtex keys
  setlocal dictionary=$HOME/.citations/zotero.dict
  " add dash and underscore as dictionary keywords
  setlocal complete=.,w,b,u,t,k,i
  " add dash and underscore as dictionary keywords
  setlocal iskeyword+=@,48-57,-,_,*,+,:,192-255
" }

setlocal shiftwidth=2
setlocal softtabstop=2
setlocal nocindent
setlocal expandtab
setlocal nojoinspaces
setlocal textwidth=70

setlocal commentstring=<!--%s-->
setlocal comments=s:<!--,m:\ \ \ ,e:-->,fb:-,fb:*,fb:+

let pdc = "!pandocwrapper --variable=output-type:"

nmap <localleader>pdf   :exe pdc . "pdf"   . " % &"<CR>
nmap <localleader>htm   :exe pdc . "htm"   . " % &"<CR>
nmap <localleader>tex   :exe pdc . "tex"   . " % &"<CR>
nmap <localleader>txt   :exe pdc . "txt"   . " % &"<CR>
nmap <localleader>beam  :exe pdc . "beam"  . " % &"<CR>
nmap <localleader>dz    :exe pdc . "dz"    . " % &"<CR>
nmap <localleader>s5    :exe pdc . "s5"    . " % &"<CR>
nmap <localleader>odt   :exe pdc . "odt"   . " % &"<CR>
nmap <localleader>docx  :exe pdc . "docx"  . " % &"<CR>
nmap <localleader>rv    :exe pdc . "rv"    . " % &"<CR>

fun! InvokePandoc()
  if g:pandoc_enable_make_after_save
    let b:dispatch = "!pandocwrapper --variable=output-type:" . g:pandoc_output_type . " %"
    exe "Dispatch!"
  endif
endfunction

autocmd BufWritePost *.mkd,*.md,*.markdown,*.pandoc call InvokePandoc()
