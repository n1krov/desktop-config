
#---------------------------------------------------------
#-Colores
#---------------------------------------------------------
readonly RED='\033[0;31m'
readonly GREEN='\033[0;32m'
readonly YELLOW='\033[0;33m'
readonly BLUE='\033[0;34m'
readonly PURPLE='\033[0;35m'
readonly CYAN='\033[0;36m'
readonly WHITE='\033[0;37m'
readonly END='\033[0m'
readonly BOLD='\033[1m'


# ========================
#   Wayland & Java Config
# ========================
export _JAVA_AWT_WM_NONREPARENTING=1
export QT_QPA_PLATFORM=wayland
export EGL_PLATFORM=wayland

# ========================
#   Powerlevel10k Instant Prompt (Debe ir al inicio)
# ========================
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# ========================
#   Zsh Prompt Configuration
# ========================
autoload -Uz promptinit
promptinit
prompt adam1

# Powerlevel10k Theme (al final del archivo también hay una referencia para evitar duplicados)
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh

# ========================
#   History Config
# ========================
setopt histignorealldups sharehistory
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

# ========================
#   Keybindings
# ========================
# Use emacs keybindings (aunque EDITOR esté en vi)
bindkey -e

# Para keybindings de vim o neovim
# bindkey -v


# ========================
#   Plugins
# ========================
# Plugins para mejorar la experiencia Zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh-sudo/sudo.plugin.zsh

# FZF plugin (si está instalado)
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# ========================
#   Alias
# ========================

# Atajos de ls con lsd
alias ll='lsd -lh --group-dirs=first'
alias la='lsd -a --group-dirs=first'
alias l='lsd --group-dirs=first'
alias lla='lsd -lha --group-dirs=first'
alias ls='lsd --group-dirs=first'
alias cat='bat'

# Git Aliases
alias gst='git status'
alias gc='git commit -m'
alias ga='git add'
alias gaa='git add .'
alias gac='git add . && git commit -m'
alias gp='git push origin'
alias gpmaster='git push origin master'
alias gpdev='git push origin dev'
alias gco='git checkout'
alias gcob='git checkout -b'

# Programas personalizados
alias cura='~/Downloads/cura.AppImage'
alias curax='QT_QPA_PLATFORM=xcb cura'
alias minecraft='LC_ALL=C minecraft-launcher'
alias nv='neovide'
alias cum='sudo modprobe v4l2loopback && droidcam'

alias rain='flatpak run com.rafaelmardojai.Blanket'
alias zen='flatpak run app.zen_browser.zen'

# Archivos comprimidos
alias zx='7z x'
alias zl='7z l'

# Network Manager
alias nmwl='nmcli device wifi list'
alias nmwc='nmcli device wifi connect'
alias nmd='nmcli connection delete'

# Otros alias útiles
alias ff='fastfetch'
alias wp='~/.config/hypr/scripts/chwp.sh'
alias vac='source venv/bin/activate'

#____________________
# GITHUB CLIENT (gh)

# Listar repositorios
alias ghls='gh repo list'

# Visualizar repositorio
alias ghv='gh repo view'

# Crear y eliminar repositorios
alias ghcr='gh repo create'
alias ghdr='gh repo delete'


# Pull Request
alias ghpr='gh pr list'
alias ghprc='gh pr create'
alias ghprd='gh pr delete'

# Copilot client
alias cop='github-copilot-cli'

# Ping a google
alias pingg='ping -c 5 google.com'

# ========================
#   Funciones
# ========================
# Crear carpetas de nmap
function mkt(){
	mkdir {nmap,content,exploits,scripts}
}

# Extraer información de puertos de nmap
function extractPorts(){
	ports="$(cat $1 | grep -oP '\d{1,5}/open' | awk '{print $1}' FS='/' | xargs | tr ' ' ',')"
	ip_address="$(cat $1 | grep -oP '\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}' | sort -u | head -n 1)"
	echo -e "\n[*] Extracting information...\n" > extractPorts.tmp
	echo -e "\t[*] IP Address: $ip_address"  >> extractPorts.tmp
	echo -e "\t[*] Open ports: $ports\n"  >> extractPorts.tmp
	echo $ports | tr -d '\n' | xclip -sel clip
	echo -e "[*] Ports copied to clipboard\n"  >> extractPorts.tmp
	cat extractPorts.tmp; rm extractPorts.tmp
}

# Mejorar 'man' con colores
function man() {
    env \
    LESS_TERMCAP_mb=$'\e[01;31m' \
    LESS_TERMCAP_md=$'\e[01;31m' \
    LESS_TERMCAP_me=$'\e[0m' \
    LESS_TERMCAP_se=$'\e[0m' \
    LESS_TERMCAP_so=$'\e[01;44;33m' \
    LESS_TERMCAP_ue=$'\e[0m' \
    LESS_TERMCAP_us=$'\e[01;32m' \
    man "$@"
}

# Funcion para ir a mi directorio things
function things(){
    # echo -e "\n[*] Directorio Things\n"  con colores ahora
    echo -e "${GREEN}[󰞷]${END}${BOLD} Directorio Things${END}\n"
    cd ~/Documents/repos/things
    lla
}


# Función avanzada para fzf
function fzf-lovely(){
	if [ "$1" = "h" ]; then
		fzf -m --reverse --preview-window down:20 --preview '[[ $(file --mime {}) =~ binary ]] &&
	                echo {} is a binary file ||
	                (bat --style=numbers --color=always {} ||
	                highlight -O ansi -l {} ||
	                coderay {} ||
	                rougify {} ||
	                cat {}) 2> /dev/null | head -500'
	else
	        fzf -m --preview '[[ $(file --mime {}) =~ binary ]] &&
	                        echo {} is a binary file ||
	                        (bat --style=numbers --color=always {} ||
	                        highlight -O ansi -l {} ||
	                        coderay {} ||
	                        rougify {} ||
	                        cat {}) 2> /dev/null | head -500'
	fi
}

# Eliminar archivos de forma segura
function rmk(){
	scrub -p dod $1
	shred -zun 10 -v $1
}

# Para ir a la carpeta de todos los repositoios
function repos(){
    echo -e "\n${GREEN}[󰞷]${END}${BOLD} Directorio de Repositorios de n1krov${END}\n"
    cd ~/Documents/repos/
    lla
}

# para los repos de configuracion
function dot(){
    echo -e "\n${GREEN}[󰞷]${END}${BOLD} Directorio Dotfiles${END}\n"
    cd ~/lautaro/repos/
    lla
}

function cursors(){
    echo -e "\n${GREEN}[󰞷]${END}${BOLD} Directorio Cursores${END}\n"
    ls -a /usr/share/icons/
}

# Para copiar en la clipboard la ipv4 de la interface w
function ipz()
{
    ip_var=$(ifconfig | grep wlp2s0 -A 1 | grep inet | awk '{print $2}')
    echo -e "\n${GREEN}[󰞷]${END}${BOLD} Copiando IP de wlp2s0 a la clipboard${END}\n"
    echo -e "${GREEN}[󰞷]${END}${BOLD} IP: ${ip_var}${END}\n"
    #con xclip
    # echo $ipvar | xclip -sel clip

    #con wl-copy
    echo $ip_var | wl-copy
}



# ========================
#   Powerlevel10k (Debe ir al final para finalizar instant prompt)
# ========================
(( ! ${+functions[p10k-instant-prompt-finalize]} )) || p10k-instant-prompt-finalize
source ~/powerlevel10k/powerlevel10k.zsh-theme

# ========================
#   PATH Configurations
# ========================
export PATH="$HOME/.cargo/bin:/root/.local/bin:/snap/bin:/usr/sandbox:/usr/local/bin:/usr/bin:/bin:/usr/local/games:/usr/games:$PATH"
