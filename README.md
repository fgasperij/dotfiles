# Dotfiles

## Setting up a new machine

- Add an SSH key to the machine.

```
ssh-keygen -t ed25519 -C "a comment" -f ~/.ssh/keyfile -N passphrase
# Only for macOS, -K adds the passphrase to the keychain
ssh-add -K ~/.ssh/keyfile
# Rest
ssh-add ~/.ssh/keyfile
```
