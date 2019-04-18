export LANG=en_US.UTF-8

source ~/.zplug/init.zsh

zplug "lukechilds/zsh-nvm"
zplug "plugins/git", from:oh-my-zsh
zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug "b4b4r07/zsh-vimode-visual", defer:3
zplug "denysdovhan/spaceship-prompt", use:spaceship.zsh, from:github, as:theme

if ! zplug check --verbose; then
	printf "Install? [y/N]: "
	if read -q; then
		echo; zplug install
	fi
fi


zplug load --verbose

bindkey -v
