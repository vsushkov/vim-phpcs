function! RunPhpcs()     
     let l:filename=@%     
     let l:phpcs_output=system('/usr/local/zend/bin/phpcs --report=csv --standard=Zend '.l:filename)     
     let l:phpcs_list=split(l:phpcs_output, "\n")     
     unlet l:phpcs_list[0]     
     cexpr l:phpcs_list     
     copen
     exec "nnoremap <silent> <buffer> q :ccl<CR>"
 endfunction 

 set errorformat=\"%f\"\\,%l\\,%c\\,%t%*[a-zA-Z]\\,\"%m\"\\,%*[a-zA-Z0-9_.-]\\,%*[0-9] 
 command! Phpcs execute RunPhpcs()
