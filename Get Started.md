
# Instalación y Configuración en Arch Linux

## Resumen

A continuación, se detallan los pasos para instalar y configurar los paquetes necesarios en Arch Linux.

### Paso 1: Instalación de Paquetes Esenciales

Ejecuta el siguiente comando para instalar los paquetes necesarios:

```bash
sudo pacman -S base-devel git vim xcb-util xcb-util-wm xcb-util-keysyms xcb-util-xrm alsa-lib libxinerama
```

### Paso 2: Actualización del Sistema

Actualiza el sistema con el siguiente comando:

```bash
sudo pacman -Syu
```

### Paso 3: Clonar Repositorios

Dirígete a la carpeta de descargas y clona los proyectos `bspwm` y `sxhkd` con los siguientes comandos:

```bash
cd ~/Downloads
git clone git@github.com:baskerville/bspwm.git
git clone git@github.com:baskerville/sxhkd.git
```

### Paso 4: Compilar e Instalar

Para instalar cada uno de estos proyectos, accede a ambos directorios por separado y ejecuta los siguientes comandos:

```bash
cd bspwm
make
sudo make install

cd ../sxhkd
make
sudo make install
```


---

##### Paso 5: Solución de Errores de `xinerama`

En caso de que aparezca algún error relacionado con `xinerama`, instala los paquetes necesarios con el siguiente comando:

```bash
sudo pacman -S libxinerama
```

##### Paso 6: Instalación de `bspwm`

Finalmente, instala `bspwm` con el siguiente comando:

```bash
sudo pacman -S bspwm
```


---


# Configuración de `bspwm` y Otros Componentes en Arch Linux

## Script de Redimensionado de Ventanas para `bspwm`

Compartimos el script `bspwm_resize` necesario para reajustar el tamaño de las ventanas:

**Importante:** Debes darle permisos de ejecucion

```bash
chmod +x bspwm_resize
```

```bash
#!/usr/bin/env dash

if bspc query -N -n focused.floating > /dev/null; then
    step=20
else
    step=100
fi

case "$1" in
    west) dir=right; falldir=left; x="-$step"; y=0;;
    east) dir=right; falldir=left; x="$step"; y=0;;
    north) dir=top; falldir=bottom; x=0; y="-$step";;
    south) dir=top; falldir=bottom; x=0; y="$step";;
esac

bspc node -z "$dir" "$x" "$y" || bspc node -z "$falldir" "$x" "$y"
```

**Importante:** Quitad la extensión `.txt` una vez lo depositéis en vuestra máquina. Os lo tenemos que compartir como archivo `.txt` debido a restricciones de seguridad.

## Instalación de Dependencias para Polybar

Primero, instalaremos una serie de dependencias necesarias para la instalación de Polybar:

```bash
sudo pacman -S cmake pkg-config python-sphinx cairo libxcb xcb-util xcb-util-wm xcb-util-keysyms xcb-util-xrm alsa-lib libpulse jsoncpp libmpdclient libuv libnl
```

**Nota:** En caso de que os dé problemas el paquete `python-sphinx`, simplemente quitadlo del comando anterior. Primero probadlo con el paquete incluido y quitadlo sólo si da problemas.

### Clonar el Repositorio de Polybar

Dirígete a la carpeta de descargas y clona el repositorio de Polybar:

```bash
cd ~/Downloads
git clone --recursive https://github.com/polybar/polybar
```

### Compilar e Instalar Polybar

Accede a la carpeta creada y ejecuta los siguientes comandos:

```bash
cd polybar
mkdir build
cd build
cmake ..
make -j$(nproc)
sudo make install
```

**Nota:** Otra forma de instalar Polybar es mediante `sudo pacman -S polybar`, pero recomendamos este método para asegurar que Polybar esté en su última versión.

## Instalación de Dependencias para Picom

Ejecuta el siguiente comando para instalar las dependencias previas:

```bash
sudo pacman -S meson libxext libxcb xcb-util xcb-util-renderutil xcb-util-cursor xcb-util-image xcb-util-keysyms xcb-util-render xcb-util-wm xcb-util-xrm pixman dbus libconfig glibc libx11 pcre2 evdev uthash libev
```

### Clonar el Repositorio de Picom

Descarga Picom ejecutando el siguiente comando en la carpeta de descargas:

```bash
cd ~/Downloads
git clone https://github.com/ibhagwan/picom.git
```

o de igual forma puedes hacer 

```shell
sudo pacman -S picom
```

### Compilar e Instalar Picom

Accede al directorio creado y ejecuta los siguientes comandos:

```bash
cd picom
git submodule update --init --recursive
meson --buildtype=release . build
ninja -C build
sudo ninja -C build install
```

## Instalación de Rofi

Instalamos `rofi` ejecutando el siguiente comando:

```bash
sudo pacman -S rofi
```


---

para controlar *bspwm* esta el  `bspwmrc`
pero lo importante es 
para controlar los atajos esta el `sxhkdrc`
para controlar la polybar esta `picom`


---

## Fuentes

en mi caso ocupo hack nerd fonts asi que podes descargar desde la pagina

donde lo descargues ejecutar
```bash
mv Hack.zip /usr/local/share/fonts
```

te mueves a ese directorio y lo descomprimes con `unzip`

---

## Kitty

el tema de la kitty tambien se va a tener que configurar.
estaran en `~/.config/kitty/`

tendremos un `kitty.conf` y `color.ini`
`kitty.conf`  *para 1080p*
```ini
enable_audio_bell no

include color.ini

font_family HackNerdFont
font_size 13

disable_ligatures never

url_color #61afef

url_style curly

map ctrl+left neighboring_window left
map ctrl+right neighboring_window right
map ctrl+up neighboring_window up
map ctrl+down neighboring_window down

map f1 copy_to_buffer a
map f2 paste_from_buffer a
map f3 copy_to_buffer b
map f4 paste_from_buffer b

cursor_shape beam
cursor_beam_thickness 1.8

mouse_hide_wait 3.0
detect_urls yes

repaint_delay 10
input_delay 3
sync_to_monitor yes

map ctrl+shift+z toggle_layout stack
tab_bar_style powerline

inactive_tab_background #e06c75
active_tab_background #98c379
inactive_tab_foreground #000000
tab_bar_margin_color black

map ctrl+shift+enter new_window_with_cwd
map ctrl+shift+t new_tab_with_cwd

background_opacity 0.95

shell zsh
```


``color.ini
```ini
cursor_shape          Underline
cursor_underline_thickness 1
window_padding_width  20

# Special
foreground #a9b1d6
background #1a1b26

# Black
color0 #414868
color8 #414868

# Red
color1 #f7768e
color9 #f7768e

# Green
color2  #73daca
color10 #73daca

# Yellow
color3  #e0af68
color11 #e0af68

# Blue
color4  #7aa2f7
color12 #7aa2f7

# Magenta
color5  #bb9af7
color13 #bb9af7

# Cyan
color6  #7dcfff
color14 #7dcfff

# White
color7  #c0caf5
color15 #c0caf5

# Cursor
cursor #c0caf5
cursor_text_color #1a1b26

# Selection highlight
selection_foreground #7aa2f7
selection_background #28344a
```


tambien llevo esa config al usuario root, me pongo como root

```shell
cd .config/kitty
```

copio lo de mi usuario al root

```shell
cp /home/zoso/.config/kitty/* .
```



---

## Zsh

Se puede instalar el zsh dejare las configs de mi zshrc




---


## Polybar

para la polybar se maneja en el directorio .config/polybar/

se ejecuta el Launch.sh

Para editar la configuracion de la polybar debes editar el archivo de configuracion `current.ini` que se encuentra en ese directorio

Tambien puedes editar el `launch.sh` para decidir que barras lanzar.