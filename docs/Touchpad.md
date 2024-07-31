Para habilitar permanentemente la función de "tapping" en tu touchpad usando `libinput`, necesitas configurar el archivo correspondiente en `Xorg`. Aquí hay cómo puedes hacerlo:

1. **Identificar tu dispositivo de touchpad**:
   Primero, asegúrate de que tienes el identificador correcto para tu touchpad. Puedes usar `xinput` para listar los dispositivos:
   ```sh
   xinput list
   ```
   Busca tu touchpad en la lista y anota su ID y su nombre.

2. **Crear una configuración permanente para `libinput`**:
   Crea un archivo de configuración en `/etc/X11/xorg.conf.d/` para configurar tu touchpad:
   ```sh
   sudo nano /etc/X11/xorg.conf.d/40-libinput.conf
   ```

   Agrega la siguiente configuración al archivo, ajustando el nombre del dispositivo si es necesario:

   ```sh
   Section "InputClass"
       Identifier "libinput touchpad catchall"
       MatchIsTouchpad "on"
       MatchDevicePath "/dev/input/event*"
       Driver "libinput"
       Option "Tapping" "on"
   EndSection
   ```

3. **Reiniciar el servidor X**:
   Guarda el archivo y cierra el editor. Luego, reinicia tu sesión gráfica (cierra sesión y vuelve a iniciarla) o reinicia el sistema para aplicar los cambios.

4. **Verificar la configuración**:
   Después de reiniciar, verifica que la configuración se haya aplicado correctamente:

   ```sh
   xinput list-props <ID_del_touchpad>
   ```

   Asegúrate de que la propiedad "libinput Tapping Enabled" esté configurada en 1.

Estos pasos deberían habilitar el "tapping" de forma permanente en tu touchpad.