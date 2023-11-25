# Disable Welcome Fish Message
set -g fish_greeting ""

# Display neofetch
neofetch

# set default editor
set -x EDITOR vim
set -x VISUAL nvim

# # Disable Ctrl + Alt + arrows on fish shell
# # up
# function do_nothing
#     # Function intentionally left empty
# end
#
# bind \e\U do_nothing
#
# # right
# function do_nothing
#     # Function intentionally left empty
# end
#
# bind \e\V do_nothing
#
# # left
# function do_nothing
#     # Function intentionally left empty
# end
#
# bind \e\W do_nothing
#
# # down
# function do_nothing
#     # Function intentionally left empty
# end
#
# bind \e\T do_nothing


if status is-interactive
    # Add the Go workspace's bin directory to the PATH
    set -x PATH $PATH (go env GOPATH)/bin

    # Initialize Starship prompt
    starship init fish | source
end


# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH
