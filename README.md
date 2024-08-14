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


### Fuentes

Las fuentes que quieras descargar debes ponerlas en /usr/share/fonts

> En mi caso ocupo hack nerd fonts asi que podes descargar desde la pagina

donde lo descargues ejecutar

```bash
mv Hack.zip /usr/local/share/fonts
```

te mueves a ese directorio y lo descomprimes con `unzip`

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

y para neovim por si quieres

```sh
ln -s ${pwd}nvim ~/.config/
```

En el caso de que la instalacion de neovim te de error por falta de lazy.nvim solo ejecuta

```sh
git clone https://github.com/folke/lazy.nvim.git ~/.local/share/nvim/site/pack/packer/start/lazy.nvim
```

