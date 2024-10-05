# Configuracion de escritorio de Z0SO

Aqui voy a estar documentando toda la parte de instalacion y configuracion de mi escritorio utilizando BSPWM y SXHKD porque ya me canse de hacer una y otra vez este proceso.

ten en cuenta que la parte de la polybar esta ajustada para la resolucion 720, asi que vas a tener que armar una copia para 1080p

- la polybar y bspwm por ahi con el tema de los espacios (margin y eso) no se cargan bien por loq ue hay que reiniciar bspwm entero

para el tema de la polybar y tema de estilos colores y cofiguraciones. bspwm usa el launch.sh para arrancar las multiples barras, y las configuraciones estan dadas por todos los archivos .ini, asi que puedes perderte en las configuraciones, tu limite es tu propia creatividad.

si estas en endeavour os o arch instala estos paquetes

Estos son los escenciales
```sh
sudo pacman -S bspwm sxhkd feh rofi base-devel git vim xcb-util xcb-util-wm xcb-util-keysyms xcb-util-xrm alsa-lib libxinerama
```

Para la polybar
```sh
sudo pacman -S polybar cmake pkg-config python-sphinx cairo libxcb xcb-util xcb-util-wm xcb-util-keysyms xcb-util-xrm alsa-lib libpulse jsoncpp libmpdclient libuv libnl
```

picom 

```sh
sudo pacman -S picom libxext libxcb xcb-util xcb-util-renderutil xcb-util-cursor xcb-util-image xcb-util-keysyms xcb-util-render xcb-util-wm xcb-util-xrm pixman dbus libconfig glibc libx11 pcre2 evdev uthash libev
```

para instalar bspwm y sxhkd sigue los pasos en get started, el paso 4


### Fuentes Hack Nerd Fonts

Las fuentes que quieras descargar debes ponerlas en /usr/share/fonts

> En mi caso ocupo hack nerd fonts asi que podes descargar desde la pagina

donde lo descargues ejecutar como root

```bash
mv Hack.zip /usr/share/fonts/
```

Te mueves a ese directorio y lo descomprimes con `unzip`. Si no tienes el directorio fonts debes crearlo


### Enlazando las configuraciones al Sistema

Te recomiendo que generes un link simbolico para cada carpeta de este repositorio menos docs/ ya que esa contiene documentacion adicional de cuando fui instalado cosas y resolucion de algunos conflictos

cuando crees estos links simbolicos puedes modificar desde el repositorio donde clonaste ya que los cambios seran reflejados en ~/.config

> **Nota:** si ya hay carpetas en .config con esos nombres solo borralos para que se puedan crear esos enlaces.


para el bspwm
```sh
ln -s ${pwd}bspwm ~/.config/
```

para sxhkd
```sh
ln -s ${pwd}sxhkd ~/.config/
```

para la kitty
```sh
ln -s ${pwd}kitty ~/.config/
```

para picom
```sh
ln -s ${pwd}picom ~/.config/
```

para la polybar
```sh
ln -s ${pwd}polybar ~/.config/



```
---


# Mi Terminal

> Personalizacion de ZSH con PowerLevel10K

Para la personalizacion de zsh con powerlevel10k debes instalar zsh y oh-my-zsh

### Paquetes necesarios
```sh
sudo pacman -S zsh  openssh npm wget lsd bat
```

- Cosas con yay
```sh
yay -S zsh-autosuggestions zsh-syntax-highlighting scrub
```

En este repositorio hay un archivo .zshrc y un .p10k.zsh que debes enlazar al `~/` para que se apliquen las configuraciones. En este caso lo hacermos con enlaces simbolicos

- En la raiz del repositorio ejecuta
```sh
ln -s ${pwd}/.zshrc ~/.zshrc
ln -s ${pwd}/.p10k.zsh ~/.p10k.zsh
```
o puedes poner la ruta absoluta de donde se encuentra el archivo

```sh
ln -s /home/zoso/.config/bspwm/.zshrc ~/.zshrc
ln -s /home/zoso/.config/bspwm/.p10k.zsh ~/.p10k.zsh
```

> **Nota:** reemplaza zoso por tu nombre de usuario


Por ultimo para poner zsh como shell por defecto ejecuta

```sh
chsh -s /bin/zsh
```

## Configuracion de la terminal

Para la terminal ocupo kitty, es una terminal muy ligera y facil de configurar, en este repositorio hay un archivo de configuracion que debes enlazar a `~/.config/` para que se apliquen las configuraciones

- En la raiz del repositorio ejecuta
```sh
ln -s ${pwd}/kitty ~/.config/kitty/
```

o puedes poner la ruta absoluta de donde se encuentra el archivo

```sh
ln -s /home/zoso/.config/bspwm/kitty ~/.config/kitty/
```

> **Nota:** reemplaza zoso por tu nombre de usuario

### Powerlevel10k

Solo clona el repositorio de github y sigue las instrucciones

```sh
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
```

- Queda por cerrar y abrir la terminal para que se apliquen los cambios.


#### Aplicar el tema para root

Para aplicar el tema para root se puede enlazar el archivo de configuracion de zsh y el de powerlevel10k

- Enlazas los archivos de configuracion

```sh
sudo ln -s -f /home/zoso/.zshrc /root/.zshrc
sudo ln -s -f /home/zoso/.p10k.zsh /root/.p10k.zsh
```

- Luego te pones como root y clonas el repositorio de powerlevel10k
```sh
cd
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc
```

Luego se asigna zsh como shell por defecto para root

```sh
sudo chsh -s /bin/zsh
```

- Cierras la terminal y vuelves a abrirla para que se apliquen los cambios.

## Plugins de ZSH

#### SUDO Plugin

Este plugin te permite con esc esc escribir sudo al inicio de la linea de comandos

en `/usr/share/zsh-sudo` ejecuta

```sh
wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/refs/heads/master/plugins/sudo/sudo.plugin.zsh
```

#### Plugin fzf

Este plugin te permite buscar comandos en el historial de comandos

Ejecuta

```sh
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
```

- Le das todo que si y listo

###### Como root

```sh   
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
```


---
