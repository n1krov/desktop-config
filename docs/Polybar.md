
Para instalar la polybar

clonar este repo

```shell
git clone git@github.com:VaughnValle/blue-sky.git
```

y copias la carpeta polybar de ese repo a `~/.config/polybar`

haces `cd blue-sky/polybar`
```shell
cp -r * ~/.config/polybar
```


no olvidar poner en el `bspwmrc` para uqe ejecute la polybar

#### Tema de las fuentes

por las dudas copiar de este repositorio las fuentes que estan dentro del directorio de polybar para que acepte algunas fuentes

```shell
cd .config/polybar/fonts/
```

```shell
sudo cp * /usr/share/fonts/truetype
```

si no tenes el directorio truetype debes crearlo

para que cargue las fuentes nuevas
```shell
fc-cache -v
```


