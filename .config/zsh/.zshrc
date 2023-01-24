source $HOME/antigen.zsh

# Load oh-my-zsh library
antigen use oh-my-zsh

antigen bundles <<EOBUNDLES
	git

	# Syntax highlighting bundle
	zsh-users/zsh-syntax-highlighting

	# Fish-style auto completion
	zsh-users/zsh-autosuggestions

	# Extra zsh completions
	zsh-users/zsh-completions

	# Ember.js
	spaceship-prompt/spaceship-ember@main

	# vi mode
	spaceship-prompt/spaceship-vi-mode@main

EOBUNDLES

# Load starship prompt
eval "$(starship init zsh)"


# Tell antigen that you're done
antigen apply

# History in cache directory:
HISTSIZE=10000000
SAVEHIST=10000000
HISTFILE="${XDG_CACHE_HOME:-$HOME/.cache}/zsh/history"

# Load aliases and shortcuts if exists
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/shell/aliasrc" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/shell/aliasrc"

