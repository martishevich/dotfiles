set nocompatible

let s:config_path = '~/dotfiles/'
let s:config_files = [
	\'functions.vim',
	\'plugins.vim',
	\'common.vim',
	\'languages.vim',
	\'mappings.vim',
	\'plugin_conf.vim',
\]

for file in s:config_files
	if filereadable(glob(s:config_path.file))
		exec "so ".s:config_path.file
	endif
endfor
