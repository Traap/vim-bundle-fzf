" {{{ bundle-fzf.vim

if exists('g:loaded_bundle_fzf')
  finish
endif
let g:loaded_bundle_fzf=1

" -------------------------------------------------------------------------- }}}
" {{{ Fuzzy file finders | https://github.com/junegunn/fzf.vim

if has('nvim')
  " Empty value to disable preview window altogether
  let g:fzf_preview_window = ''

  " Always enable preview window on the right with 60% width
  let g:fzf_preview_window = 'right:60%'

  " [Buffers] Jump to the existing window if possible
  let g:fzf_buffers_jump = 1

  " [[B]Commits] Customize the options used by 'git log':
  let g:fzf_commits_log_options =
        \ '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'

  " [Tags] Command to generate tags file
  let g:fzf_tags_command = 'ctags -R'

  " [Commands] --expect expression for directly executing the command
  let g:fzf_commands_expect = 'alt-enter,ctrl-x'

  " Customize fzf colors to match your color scheme
  " - fzf#wrap translates this to a set of `--color` options
  let g:fzf_colors =
  \ { 'fg':      ['fg', 'Normal'],
    \ 'bg':      ['bg', 'Normal'],
    \ 'hl':      ['fg', 'Comment'],
    \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
    \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
    \ 'hl+':     ['fg', 'Statement'],
    \ 'info':    ['fg', 'PreProc'],
    \ 'border':  ['fg', 'Ignore'],
    \ 'prompt':  ['fg', 'Conditional'],
    \ 'pointer': ['fg', 'Exception'],
    \ 'marker':  ['fg', 'Keyword'],
    \ 'spinner': ['fg', 'Label'],
    \ 'header':  ['fg', 'Comment'] }

endif

" -------------------------------------------------------------------------- }}}
