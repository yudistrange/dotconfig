if status is-interactive
    # Commands to run in interactive sessions can go here
end

# aliases
alias vim nvim

# Env Variables
set -gx EDITOR nvim

# Path
fish_add_path -aP ~/.cargo/bin
fish_add_path -aP ~/.local/bin

# ASDF setup
source ~/.local/bin/asdf/asdf.fish
#. ~/.asdf/plugins/java/set-java-home.fish

# ESP Setup
# . ~/.local/lib/export-esp.sh
set -gx LIBCLANG_PATH "/home/udit/.rustup/toolchains/esp/xtensa-esp32-elf-clang/esp-16.0.0-20230516/esp-clang/lib"
fish_add_path -aP ~/.rustup/toolchains/esp/xtensa-esp32-elf/esp-12.2.0_20230208/xtensa-esp32-elf/bin

# Enable direnv for dynamic environment variables
direnv hook fish | source
