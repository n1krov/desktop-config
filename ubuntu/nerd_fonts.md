### **Instalación de Hack Nerd Font**

#### **Método 1: Usando Nerd Fonts directamente**
1. **Descarga la fuente**  
   Puedes descargar la fuente directamente desde el repositorio oficial:
   ```bash
   mkdir -p ~/.local/share/fonts
   wget -P ~/.local/share/fonts "https://github.com/ryanoasis/nerd-fonts/releases/latest/download/Hack.zip"
   ```

2. **Extrae la fuente**  
   Extrae el contenido del archivo descargado:
   ```bash
   unzip ~/.local/share/fonts/Hack.zip -d ~/.local/share/fonts
   ```

3. **Recarga la caché de fuentes**  
   Actualiza la caché de fuentes para que el sistema reconozca la nueva fuente:
   ```bash
   fc-cache -fv
   ```

4. **Verifica la instalación**  
   Comprueba si la fuente está instalada ejecutando:
   ```bash
   fc-list | grep "Hack Nerd Font"
   ```

---

#### **Método 2: Usando Nerd Fonts Installer**
Este método utiliza un script automatizado para instalar cualquier fuente Nerd Font.

1. **Clona el repositorio del instalador**  
   ```bash
   git clone https://github.com/ryanoasis/nerd-fonts.git --depth 1
   ```

2. **Ejecuta el instalador para Hack Nerd Font**  
   ```bash
   cd nerd-fonts
   ./install.sh Hack
   ```

3. **(Opcional) Instala todas las fuentes Nerd Fonts**  
   Si deseas instalar todas las fuentes disponibles:
   ```bash
   ./install.sh
   ```

---

#### **Método 3: Usando un Gestor de Paquetes (PPA o APT)**
Algunos repositorios comunitarios pueden tener las fuentes Nerd Fonts empaquetadas:

1. **Añade el PPA y actualiza los paquetes**  
   ```bash
   sudo add-apt-repository ppa:ubuntuhandbook1/fonts
   sudo apt update
   ```

2. **Instala Hack Nerd Font**  
   ```bash
   sudo apt install fonts-hack-ttf
   ```

---

### **Configuración**
1. **Selecciona Hack Nerd Font en tu terminal o editor**  
   - Si usas **Kitty**, **Alacritty** o **Gnome Terminal**, ve a la configuración y selecciona `Hack Nerd Font`.

2. **Usa Hack Nerd Font con Neovim u otras herramientas**  
   Actualiza tu configuración para que la fuente se aplique en interfaces como **Powerlevel10k** o **Neovim**.

