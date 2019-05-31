export LANG=en_US.UTF-8
export ZPLUG_HOME=~/.zplug
export XDG_SESSION_DESKTOP=~/desk
export XDG_SESSION_TYPE="X11"
#PATH=$HOME/.nvm/versions/node/v11.14.0/bin:$HOME/.nvm/versions/node/v11.14.0/lib/node_modules/npm/bin:$PATH

source $HOME/.zplug/init.zsh

zplug "zplug/zplug", hook-build:'zplug --self-manage'

#zplug "modules/history", from:prezto
#zplug "modules/utility", from:prezto
#zplug "modules/directory", from:prezto

#export NVM_LAZY_LOAD=true
#zplug "lukechilds/zsh-nvm"

zplug "zsh-users/zsh-completions", defer:0, use:contrib/completion/zsh
zplug "zsh-users/zsh-autosuggestions", defer:2
zplug "zsh-users/zsh-syntax-highlighting", defer:3
zplug "zsh-users/zsh-history-substring-search", defer:3

zplug "lukechilds/zsh-better-npm-completion", defer:3, use:contrib/completion/zsh
zplug "felixr/docker-zsh-completion", defer:3, use:contrib/completion/zsh
zplug "akoenig/gulp.plugin.zsh", defer:3, use:contrib/completion/zsh
zplug "zpm-zsh/ssh", defer:3, use:contrib/completion/zsh

zplug "modules/completion", from:prezto

zplug "b4b4r07/zsh-vimode-visual", defer:3
zplug "zpm-zsh/ls"
zplug "jhawthorn/fzy", as:command, hook-build:"make && sudo make install"
#zplug "b4b4r07/enhancd", use:init.sh

zplug "denysdovhan/spaceship-prompt", use:spaceship.zsh, from:github, as:theme

zplug "plugins/git", from:oh-my-zsh
zplug "plugins/gitfast", from:oh-my-zsh
zplug "plugins/github", from:oh-my-zsh
zplug "plugins/node", from:oh-my-zsh
zplug "plugins/colored-man-pages", from:oh-my-zsh
zplug "plugins/common-aliases", from:oh-my-zsh
zplug "plugins/web-search", from:oh-my-zsh
zplug "plugins/cp", from:oh-my-zsh
#zplug "plugins/n.zsh", from:oh-my-zsh
#zplug "rapgenic/zsh-git-complete-urls"
#zplug "robbyrussell/oh-my-zsh", use:"lib/clipboard.zsh"

zstyle ':prezto:module:utility:ls' color 'yes'

zstyle ':completion:*' rehash true
zstyle ':completion:*' verbose yes
zstyle ':completion:*:descriptions' format '%B%d%b'
zstyle ':completion:*:messages' format '%d'
zstyle ':completion:*:warnings' format 'No matches for: %d'
zstyle ':completion:*' group-name ''

if ! zplug check --verbose; then
	printf "Install? [y/N]: "
	if read -q; then
		echo; zplug install
	fi
fi

zplug load

setopt auto_cd
KEYTIMEOUT=1

bindkey -v

# disable the [I] before spaceship prompt
SPACESHIP_VI_MODE_SHOW=false

# dircolors
eval `dircolors -b $HOME/.dircolors/Dracula.dircolors`

alias ls='ls --color=always'
alias vim='nvim'
alias cp='cpv'
bindkey '^l' autosuggest-accept

export N_PREFIX="$HOME/n"; [[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin"  # Added by n-install (see http://git.io/n-install-repo).
[[ -s "$HOME/.avn/bin/avn.sh" ]] && source "$HOME/.avn/bin/avn.sh" # load avn
