set -l foreground f8f8f2
set -l selection  44475a
set -l comment    6272a4

set -l red    F07178
set -l orange FF5C38
set -l yellow FFCB6B
set -l green  9EDF1D
set -l cyan   89DDFF
set -l pink   FF83B6
set -l purple C792EA

set -g fish_color_autosuggestion $selection
set -g fish_color_command        $cyan
set -g fish_color_comment        $comment
set -g fish_color_end            $orange
set -g fish_color_error          $red
set -g fish_color_escape         $pink
set -g fish_color_normal         $foreground
set -g fish_color_operator       $green
set -g fish_color_param          $purple
set -g fish_color_quote          $yellow
set -g fish_color_redirection    $foreground
set -g fish_color_search_match   --background=$selection
set -g fish_color_selection      --background=$selection
