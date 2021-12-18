# launch tmux
#[[ $- != *i* ]] && return
#[[ -z "$TMUX" ]] && exec tmux

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH="/home/koswu/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  extract
  z
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

#screenfetch
neofetch
alias kaoyan='cd /home/koswu/Documents/KaoYanDaily'
alias pwnenv='sudo docker run -it --rm -h ctf_pwn \
	--network=host \
   	--name ctf_pwn -v$(pwd):/pwn/work \
	--cpus 2 -m 1g --memory-swap 1g\
   	--cap-add=SYS_PTRACE koswu/localpwn'
alias safeenv='sudo docker run -it --rm \
	--cpus 0.5 -m 256m --memory-swap 512m \
   	alpine /bin/sh'
alias kaoyanpub='cd ~/Documents/KaoYanDaily && git add * && git ci && git push'

alias authwifi="curl 'http://172.18.254.14/index.php/index/login' -H 'User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:82.0) Gecko/20100101 Firefox/82.0' -H 'Accept: application/json, text/javascript, */*; q=0.01' -H 'Accept-Language: zh-CN,en-US;q=0.7,en;q=0.3' --compressed -H 'Content-Type: application/x-www-form-urlencoded' -H 'X-Requested-With: XMLHttpRequest' -H 'Origin: http://172.18.254.14' -H 'DNT: 1' -H 'Connection: keep-alive' -H 'Referer: http://172.18.254.14/index.php?url=aHR0cDovL25ldHdvcmtjaGVjay5rZGUub3JnLw==' -H 'Cookie: sunriseUsername=172210708127; sunriseDomain=student; PHPSESSID=fkl3r5a1skcqb0np5jupv3tgt2; think_language=zh-CN' -H 'Pragma: no-cache' -H 'Cache-Control: no-cache' --data-raw 'username=172210708127&domain=student&password=MTQwMDE1&enablemacauth=0' && notify-send 'Just WIFI 认证成功'"

alias kaoyangen='cd ~/Documents/KaoYanDaily && cd `date +%Y/%m` && cp ../../template.md `date +%Y%m%d.md`'

alias aospenv='sudo docker run --rm -it -u `id -u`:`id -g` -v `pwd`/lineageos:/code -v `pwd`/ccache:/cache koswu/aosp-buildenv'

alias mine='/home/koswu/gminer_2_71_linux64/mine_eth.sh'

export PATH=$PATH:~/.local/bin
export PATH=$PATH:~/.npm-global/bin

initconda()
{
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
	__conda_setup="$('/home/koswu/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
	if [ $? -eq 0 ]; then
	    eval "$__conda_setup"
	else
	    if [ -f "/home/koswu/miniconda3/etc/profile.d/conda.sh" ]; then
	        . "/home/koswu/miniconda3/etc/profile.d/conda.sh"
	    else
	        export PATH="/home/koswu/miniconda3/bin:$PATH"
	    fi
	fi
	unset __conda_setup
	# <<< conda initialize <<<
}

#proxy 
export http_proxy="http://192.168.0.105:3128"
export https_proxy="http://192.168.0.105:3128"

