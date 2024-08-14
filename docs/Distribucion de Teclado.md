
 **Instalar los keymaps necesarios**:
   Asegúrate de tener instalado el paquete `kbd`, que contiene los mapas de teclado para la consola virtual:
   ```sh
   sudo pacman -S kbd
   ```


**IMPORTANTE**
**Configurar el teclado para la consola virtual**:
   Una vez instalado, intenta nuevamente establecer el keymap:
```sh
sudo localectl set-keymap la-latin1
```





---


**Configurar el teclado para X11**:
   Para X11, asegúrate de tener los archivos de configuración correctos. Edita o crea el archivo `/etc/X11/xorg.conf.d/00-keyboard.conf`:
   ```sh
   sudo nano /etc/X11/xorg.conf.d/00-keyboard.conf
   ```
   y agrega el siguiente contenido:
   ```sh
   Section "InputClass"
       Identifier "system-keyboard"
       MatchIsKeyboard "on"
       Option "XkbLayout" "latam"
   EndSection
   ```

4. **Reiniciar sesión o el sistema**:
   Cierra la sesión y vuelve a iniciarla, o reinicia el sistema para aplicar los cambios.

Después de estos pasos, tu teclado debería estar configurado correctamente para español de Latinoamérica en ambos contextos (consola virtual y entorno gráfico).