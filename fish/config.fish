if status is-interactive
    
    fish_add_path -a /opt/homebrew/bin
    fish_add_path -a /Users/ferg/Downloads/chromedriver-mac-arm64/chromedriver
    fish_add_path -a /Users/ferg/Library/Python/3.9/bin
    
    ## shortcut
    alias reload!='source ~/.config/fish/config.fish'
    alias config='code ~/.config/fish/config.fish'
    alias l='ls -lah'

    # vim mode
    set -g fish_key_bindings fish_vi_key_bindings
    set fish_cursor_default block  # Normal mode
    set fish_cursor_insert line    # Insert mode
    set fish_cursor_visual block   # Visual mode
    bind --mode insert --sets-mode default jk repaint

end
export PATH="$HOME/.local/bin:$PATH"
