let g:neomake_php_enabled_makers = ['php', 'phpcs']                                             
let g:neomale_php_phpcs_args_standart = 'PSR2'                                                  
 
let g:neomake_javascript_enabled_makers = ['eslint']                                            
let g:neomake_javascript_eslint_exe='/var/www/html/LJ/node_modules/.bin/eslint'

autocmd! BufWritePost * Neomake
