# Utilities to aid a pandoc (and vim) workflow

 1. Put `pandocwrapper` somewhere reachable through `$PATH`. Sometimes 
    this is not the same as `:echo $PATH` inside vim, so ensure that 
    vim can invoke it (if not using Vim, that's it :).
 2. Install [vim-dispatch](https://github.com/tpope/vim-dispatch) 
    (vundle, vam, etc.)
 3. Copy the contents of `vimrc` into your `.vimrc` file
 4. Put `pandoc.vim` in `.vim/after/ftplugin/`
 5. Play with options:
      - `g:pandoc_enable_make_after_save` (default: `false`). Invokes 
      pandoc wrapper after file has been saved.
      - `g:pandoc_output_type` (default: `pdf`). File type to generate 
      (see `pandoc.vim` for supported filetypes)

# Pandoc Wrapper

The wrapper depends on Bash, not Vim. So it can be embedded in any 
non-vim workflow.

# Notes

Since the way I configure `vim-dispatch` makes the wrapper run in the 
background (I like to be able to immediately return to where I was 
left), I invoke an OSX sound to identify if the build executed 
correctly or not.

# Todo

  * Make it a vim-plugin
  * Implement the `pandocwrapper` functionality using 
  [Hakyll](http://jaspervdj.be/hakyll/). The `watch` option caches 
  everything, so expensive builds can leverage this to rebuild 
  efficiently.
