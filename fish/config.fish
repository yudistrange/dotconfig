if status is-interactive
    # Commands to run in interactive sessions can go here
end

# aliases
alias vim nvim
alias ls eza

# Env Variables
set -gx EDITOR nvim

# Path
fish_add_path -aP ~/.cargo/bin
fish_add_path -aP ~/.local/bin

# ASDF setup
source ~/.asdf/asdf.fish
#. ~/.asdf/plugins/java/set-java-home.fish

# ESP Setup
# . ~/.local/lib/export-esp.sh
set -gx LIBCLANG_PATH "/home/udit/.rustup/toolchains/esp/xtensa-esp32-elf-clang/esp-16.0.0-20230516/esp-clang/lib"
fish_add_path -aP ~/.rustup/toolchains/esp/xtensa-esp32-elf/esp-12.2.0_20230208/xtensa-esp32-elf/bin

# Enable direnv for dynamic environment variables
direnv hook fish | source

set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME ; set -gx PATH $HOME/.cabal/bin $PATH /home/udit/.ghcup/bin # ghcup-env

# opam configuration
source /home/udit/.opam/opam-init/init.fish > /dev/null 2> /dev/null; or true
 
