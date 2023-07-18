## tmux.fish Autostart Variable Workaround ##

if test $(count $(pgrep tmux)) -gt 1
  set -Ux fish_tmux_autostarted true
else
  set -Ux fish_tmux_autostarted false
end

##

if status is-interactive
  set -Ux fish_tmux_config $HOME/.config/tmux/tmux.conf
  set -Ux fish_tmux_autostart true 

	## Taskwarrior Helpers ##

	alias in='task add +in'
	
	function tickle
		in +tickle wait:$argv[1] $argv[2..-1]
	end

	alias tick=tickle
	alias think='tickle +1d'
end

