    let g:Cmd2_options = {
          \ '_complete_ignorecase': 1,
          \ '_complete_uniq_ignorecase': 0,
          \ '_complete_fuzzy': 1,
          \ }

    cmap <expr> <F7> Cmd2#ext#complete#InContext() ? "\<Plug>(Cmd2Complete)" : "\<F7>"

    set wildcharm=<F7>
