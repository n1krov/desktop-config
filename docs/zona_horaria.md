# Establecer la zona horaria en Arch Linux
Para establecer la zona horaria en Arch Linux, puedes seguir los siguientes pasos:

> **Nota**: Estos pasos asumen que tienes permisos de superusuario (root) o que puedes usar `sudo` para ejecutar comandos con privilegios de administrador. Ademas, yo utilizo la zona horaria de Buenos Aires (Argentina) como ejemplo, pero puedes reemplazarla por la zona horaria que necesites.

1. **Configura la zona horaria**:
   Para establecer la zona horaria de Buenos Aires (Argentina), crea un enlace simbólico al archivo de zona horaria correcto:

   ```bash
   sudo ln -sf /usr/share/zoneinfo/America/Argentina/Buenos_Aires /etc/localtime
   ```

2. **Sincroniza la hora con el tiempo universal**:
   Después de configurar la zona horaria, puedes sincronizar la hora de tu sistema con los servidores NTP (Network Time Protocol) para asegurarte de que esté actualizada.

   Primero, instala el servicio `ntp` o `systemd-timesyncd` (si aún no lo tienes):

   ```bash
   sudo pacman -S ntp
   ```

3. **Inicia el servicio de sincronización de tiempo**:
   Una vez instalado, inicia y habilita el servicio:

   ```bash
   sudo systemctl enable --now ntpd
   ```

   Si prefieres `systemd-timesyncd`, puedes habilitarlo y usarlo en su lugar:

   ```bash
   sudo systemctl enable --now systemd-timesyncd
   ```

4. **Verifica la hora**:
   Para asegurarte de que la hora esté configurada correctamente, puedes usar:

   ```bash
   timedatectl status
   ```

   Deberías ver la zona horaria configurada para Buenos Aires y la hora correcta.
