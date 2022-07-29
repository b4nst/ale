" Author: banst <bastyen.a@gmail.com>
" Description: Fixer for cue files

call ale#Set('cue_fmt_executable', 'cue')
call ale#Set('cue_fmt_options', '')

function! ale#fixers#cuefmt#Fix(buffer) abort
    let l:executable = ale#Var(a:buffer, 'cue_fmt_executable')
    let l:options = ale#Var(a:buffer, 'cue_fmt_options')

    return {
    \   'command': ale#Escape(l:executable)
    \       . ' fmt'
    \       . (empty(l:options) ? '' : ' ' . l:options)
    \       . ' -'
    \}
endfunction
