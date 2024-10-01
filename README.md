# Configuración de Escritorio de Z0SO

Este documento detalla el proceso de instalación y configuración de mi escritorio utilizando **BSPWM** y **SXHKD**, para evitar repetir este proceso.

## Consideraciones Generales

- La configuración de **Polybar** está ajustada para una resolución de 720p. Si usas 1080p, deberás adaptar las configuraciones.
- **BSPWM** y **Polybar** pueden no cargar bien los márgenes y espacios; es posible que tengas que reiniciar **BSPWM** para solucionar esto.
- Para la **Polybar**, las configuraciones están distribuidas en varios archivos `.ini`. Puedes modificarlas según tu creatividad.

## Instalación de Paquetes

Si usas **Endeavour OS** o **Arch**, estos son los paquetes esenciales:

### Paquetes Esenciales
```sh
sudo pacman -S bspwm sxhkd feh rofi base-devel git vim xcb-util xcb-util-wm xcb-util-keysyms xcb-util-xrm alsa-lib libxinerama
```

### Polybar
```sh
sudo pacman -S polybar cmake pkg-config python-sphinx cairo libxcb xcb-util xcb-util-wm xcb-util-keysyms xcb-util-xrm alsa-lib libpulse jsoncpp libmpdclient libuv libnl
```

### Picom
```sh
sudo pacman -S picom libxext libxcb xcb-util xcb-util-renderutil xcb-util-cursor xcb-util-image xcb-util-keysyms xcb-util-render xcb-util-wm xcb-util-xrm pixman dbus libconfig glibc libx11 pcre2 evdev uthash libev
```

Para instalar **BSPWM** y **SXHKD**, sigue las instrucciones de "Get Started", paso 4.

## Fuentes: Hack Nerd Fonts

Las fuentes deben ubicarse en `/usr/share/fonts`. Si no tienes el directorio `fonts`, créalo. En mi caso, uso **Hack Nerd Fonts**, que puedes descargar desde la [página oficial](https://github.com/ryanoasis/nerd-fonts).

Una vez descargada, mueve la fuente al directorio correspondiente y descomprímela:
```bash
mv Hack.zip /usr/share/fonts/
cd /usr/share/fonts/
unzip Hack.zip
```

## Enlazando Configuraciones al Sistema

Te recomiendo crear enlaces simbólicos para cada carpeta de este repositorio (excepto `docs/`, que contiene documentación adicional).

### Enlaces Simbólicos

Para **BSPWM**:
```sh
ln -s $(pwd)/bspwm ~/.config/
```

Para **SXHKD**:
```sh
ln -s $(pwd)/xhkd ~/.config/
```

Para **Kitty**:
```sh
ln -s $(pwd)/kitty ~/.config/
```

Para **Picom**:
```sh
ln -s $(pwd)/picom ~/.config/
```

Para **Polybar**:
```sh
ln -s $(pwd)/polybar ~/.config/
```

> **Nota:** Si ya tienes carpetas en `~/.config/` con esos nombres, bórralas para que se puedan crear los enlaces simbólicos correctamente.

---

# Mi Terminal

## Personalización de ZSH con PowerLevel10K

### Paquetes Necesarios
```sh
sudo pacman -S zsh openssh npm wget lsd bat
```

### Paquetes Adicionales con Yay
```sh
yay -S zsh-autosuggestions zsh-syntax-highlighting scrub
```

En este repositorio encontrarás los archivos `.zshrc` y `.p10k.zsh`. Debes enlazarlos a tu directorio home (`~/`) para aplicar las configuraciones:

```sh
ln -s $(pwd)/.zshrc ~/.zshrc
ln -s $(pwd)/.p10k.zsh ~/.p10k.zsh
```

> **Nota:** Reemplaza `zoso` por tu nombre de usuario si utilizas rutas absolutas.

## Configuración de Kitty

**Kitty** es una terminal ligera y fácil de configurar. En este repositorio encontrarás el archivo de configuración, que deberás enlazar a `~/.config/`:

```sh
ln -s $(pwd)/kitty ~/.config/kitty/
```

> **Nota:** Si ya tienes una carpeta `kitty` en `~/.config/`, elimínala antes de crear el enlace simbólico.

## PowerLevel10k

Clona el repositorio de **PowerLevel10k** y sigue las instrucciones:
```sh
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
```

Para aplicar el tema a **root**, enlaza los archivos de configuración y clona el repositorio:
```sh
sudo ln -s -f /home/zoso/.zshrc /root/.zshrc
sudo ln -s -f /home/zoso/.p10k.zsh /root/.p10k.zsh

sudo git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
sudo chsh -s /bin/zsh
```

> **Nota:** Recuerda cerrar y abrir la terminal para aplicar los cambios.

---

# Plugins de ZSH

## Sudo Plugin

Este plugin te permite agregar `sudo` al inicio de una línea de comandos con `esc esc`. Para instalarlo:

1. Crea la carpeta `/usr/share/zsh-sudo`:
    ```sh
    sudo mkdir /usr/share/zsh-sudo
    ```
2. Descarga el plugin:
    ```sh
    wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/plugins/sudo/sudo.plugin.zsh -P /usr/share/zsh-sudo/
    ```

## Plugin fzf

Este plugin te permite buscar en tu historial de comandos. Para instalarlo:

1. Clona el repositorio:
    ```sh
    git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
    ~/.fzf/install
    ```

> **Nota:** Realiza lo mismo para **root** si lo necesitas.


