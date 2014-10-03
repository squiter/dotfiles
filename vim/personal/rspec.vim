" VIM PLUGINS CONFIG
" VIM-RSPEC

" To use with Dispatch
let g:rspec_command = "Dispatch rspec {spec}"

" RSpec-Vim maps
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>