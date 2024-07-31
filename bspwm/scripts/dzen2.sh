   #!/bin/sh

   # Configurar la ubicación y el tamaño de la barra
   BAR_HEIGHT=24
   BAR_WIDTH=1920
   BAR_Y=0

   # Iniciar dzen2
   dzen2 -h $BAR_HEIGHT -w $BAR_WIDTH -y $BAR_Y -fn 'xft:Monospace:size=10' -bg '#222222' -fg '#ffffff' &
