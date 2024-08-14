### Usando `nmcli` (NetworkManager)

1. **Instalar NetworkManager y nmcli**:
   Si no tienes instalado NetworkManager, instálalo usando `pacman`:
   ```sh
   sudo pacman -S networkmanager
   ```

2. **Iniciar y habilitar NetworkManager**:
   Asegúrate de que el servicio de NetworkManager esté activo y habilitado para iniciarse en el arranque:
   ```sh
   sudo systemctl start NetworkManager
   sudo systemctl enable NetworkManager
   ```

3. **Buscar redes WiFi disponibles**:
   Usa `nmcli` para listar las redes WiFi disponibles:
   ```sh
   nmcli device wifi list
   ```

4. **Conectarse a una red WiFi**:
   Conéctate a una red WiFi usando el nombre (SSID) y la contraseña:
   ```sh
   nmcli device wifi connect "SSID" password "CONTRASEÑA"
   ```

   Reemplaza `"SSID"` con el nombre de la red WiFi a la que deseas conectarte y `"CONTRASEÑA"` con la contraseña correspondiente.



### Posible Solucion de Errores

Para error de que no te conecta cuando pones bien el ssid y la password elimina la la conexion existente

```shell
nmcli connection delete id <ssid>
```

despues volve a conectarte




----

### Usando `wpa_supplicant` y `dhcpcd`

Si prefieres no usar NetworkManager, puedes utilizar `wpa_supplicant` y `dhcpcd`:

1. **Instalar `wpa_supplicant` y `dhcpcd`**:
   ```sh
   sudo pacman -S wpa_supplicant dhcpcd
   ```

2. **Crear un archivo de configuración de `wpa_supplicant`**:
   Crea un archivo de configuración para tu red WiFi:
   ```sh
   wpa_passphrase "SSID" "CONTRASEÑA" | sudo tee /etc/wpa_supplicant/wpa_supplicant.conf
   ```

   Reemplaza `"SSID"` y `"CONTRASEÑA"` con los valores correctos para tu red.

3. **Iniciar `wpa_supplicant`**:
   Inicia `wpa_supplicant` con el archivo de configuración que acabas de crear:
   ```sh
   sudo wpa_supplicant -B -i INTERFAZ -c /etc/wpa_supplicant/wpa_supplicant.conf
   ```

   Reemplaza `INTERFAZ` con el nombre de tu interfaz WiFi (por ejemplo, `wlan0`). Puedes encontrar el nombre de tu interfaz usando:
   ```sh
   ip link
   ```

4. **Obtener una dirección IP**:
   Usa `dhcpcd` para obtener una dirección IP:
   ```sh
   sudo dhcpcd INTERFAZ
   ```

   Reemplaza `INTERFAZ` con el nombre de tu interfaz WiFi.


---


### Opcional: Herramientas de interfaz gráfica

Para una administración más fácil de las redes WiFi, puedes usar herramientas con interfaz gráfica como `nmtui` (incluida con NetworkManager) o `wicd`:

1. **Instalar `nmtui`**:
   `nmtui` viene con NetworkManager, así que solo necesitas ejecutarlo:
   ```sh
   nmtui
   ```

2. **Instalar `wicd`**:
   ```sh
   sudo pacman -S wicd
   sudo systemctl start wicd
   sudo systemctl enable wicd
   ```

   Luego, puedes iniciar la interfaz gráfica con:
   ```sh
   wicd-curses
   ```

Estos métodos deberían permitirte conectarte a Internet por WiFi en un entorno `bspwm`.
