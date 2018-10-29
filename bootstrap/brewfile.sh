apps=(
   spectacle
   flux 
   spotify
   chrome
   visual-studio-code
   telegram
)

for app in $apps; do
    brew cask install $app
done

brew_apps=(
    jq
    tree
    wget
    the_silver_searcher
    autojump
    tmux
    reattach-to-user-namespace
    nodejs
)

for brew_app in $brew_apps; do
    brew install $brew_app
done