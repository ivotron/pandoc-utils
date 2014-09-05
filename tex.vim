"echo "sourcing bibtex-common"

" bibtex keys
setlocal dictionary=$HOME/.citations/zotero.dict

" also scan dictionary files
setlocal complete=.,w,b,u,t,k,i

" add dash and underscore as dictionary keywords
setlocal iskeyword+=@,48-57,-,_,*,+,:,192-255
