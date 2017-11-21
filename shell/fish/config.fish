# if not functions -q fundle; eval (curl -sfL https://git.io/fundle-install); end

fundle plugin 'fisherman/segment'
# fundle plugin 'tuvistavie/oh-my-fish-core'

fundle init --profile

# set -x DOTFILES $HOME/.dotfiles
# set -x EDITOR nvim


function fish_prompt
    segment black cyan (pwd)
    segment_close
end

function fish_right_prompt
    segment_close
end

set fish_color_normal white         # the default color
set fish_color_command grey         # the color for commands
set fish_color_quote orange         # the color for quoted blocks of text
# set fish_color_redirection        # the color for IO redirections
set fish_color_end grey             # the color for process separators like ';' and '&'
set fish_color_error red            # the color used to highlight potential errors
set fish_color_param blue           # the color for regular command parameters
set fish_color_comment grey         # the color used for code comments
# set fish_color_match              # the color used to highlight matching parenthesis
# set fish_color_search_match       # the color used to highlight history search matches
# set fish_color_operator           # the color for parameter expansion operators like '*' and '~'
set fish_color_escape yellow        # the color used to highlight character escapes like '\n' and '\x70'
set fish_color_cwd cyan             # the color used for the current working directory in the default prompt
set fish_color_autosuggestion blue  # the color used for autosuggestions
set fish_color_user white           # the color used to print the current username in some of fish default prompts
set fish_color_host white           # the color used to print the current host system in some of fish default prompts
set fish_color_cancel red           # the color for the '^C' indicator on a canceled command
set fish_color_valid_path cyan
set fish_color_selection blue
# set fish_color_status
# set fish_color_history_current
# set fish_color_cwd_root

# Additionally, the following variables are available to change the highlighting in the completion pager:
set fish_pager_color_prefix grey        # the color of the prefix string, i.e. the string that is to be completed
set fish_pager_color_completion blue 
set fish_pager_color_description violet # the color of the completion description
# set fish_pager_color_progress     # the color of the progress bar at the bottom left corner
# set fish_pager_color_secondary    # the background color of the every second completion
