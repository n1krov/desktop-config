# Configuracion de escritorio de Z0SO

Aqui voy a estar documentando toda la parte de instalacion y configuracion de mi escritorio utilizando BSPWM y SXHKD porque ya me canse de hacer una y otra vez este proceso.

Quiero tambien de asegurarme de que esto contemple para pantallas con resoluciones de 720p y 1080p porque la polybar se ve muy grande con 720 y es un asco.


copiar el contenido de cada carpeta menos docs/ al `~/.config/`
ya sabes como es... `cp -r <carpeta> ~/.config/`

ten en cuenta que la parte de la polybar esta ajustada para la resolucion 720, asi que vas a tener que armar una copia para 1080p

- la polybar y bspwm por ahi con el tema de los espacios (margin y eso) no se cargan bien por loq ue hay que reiniciar bspwm entero

para el tema de la polybar y tema de estilos colores y cofiguraciones. bspwm usa el launch.sh para arrancar las multiples barras, y las configuraciones estan dadas por todos los archivos .ini, asi que puedes perderte en las configuraciones, tu limite es tu propia creatividad.


