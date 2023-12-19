# set local zshrc only work for this PC, will not sync
if [ -f ~/.zshrc_local ]; then
    . ~/.zshrc_local
fi

# 检查 oh my zsh 是否已经安装
#if [ ! -d "${HOME}/.oh-my-zsh" ]; then
#    echo "Oh My Zsh is not installed, installing..."
#    # 下载并运行安装脚本
#    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
#fi

# 检查 zplug 是否已安装
if [ ! -d "${HOME}/.zplug" ]; then
    echo "zplug 没有安装。正在安装..."
    # 下载并运行 zplug 安装脚本
    curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh -f
fi

source ~/.zplug/init.zsh

zplug "zsh-users/zsh-history-substring-search", defer:2
zplug "zsh-users/zsh-autosuggestions", defer:2
zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug "plugins/git", from:oh-my-zsh
zplug "zsh-users/zsh-docker"
zplug "robbyrussell/oh-my-zsh", as:theme, use:"themes/agnoster.zsh-theme"
zplug "plugins/zsh-completions", from:oh-my-zsh


if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi


# Then, source plugins and add commands to $PATH
zplug load 

# show icon when installed neofetch
if command -v neofetch &> /dev/null
then
	neofetch
fi
