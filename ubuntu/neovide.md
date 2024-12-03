# Neovide

### 1. **Instala las dependencias necesarias**
Ejecuta este comando para asegurarte de que tienes todas las dependencias necesarias instaladas:

```bash
sudo apt update
sudo apt install -y git build-essential curl wget \
    libx11-dev libxcb1-dev libxcb-render0-dev libxcb-shape0-dev libxcb-xfixes0-dev \
    libxi-dev libxrandr-dev libgl1-mesa-dev libegl1-mesa-dev \
    libfontconfig1-dev libfreetype6-dev
```

---

### 2. **Instala Rust y Cargo**
Neovide se compila usando Rust, así que necesitas instalarlo. Usa este comando para instalar Rust:

```bash
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```

Cuando el script te pregunte, elige la opción por defecto (`1`). Luego, actualiza el entorno:
```bash
source $HOME/.cargo/env
```

Verifica que Rust se instaló correctamente:
```bash
rustc --version
cargo --version
```

---

### 3. **Clona el repositorio de Neovide**
Descarga el código fuente de Neovide desde su repositorio oficial de GitHub:

```bash
git clone https://github.com/neovide/neovide.git
cd neovide
```

---

### 4. **Compila Neovide**
Compila Neovide en modo de lanzamiento para obtener el mejor rendimiento:

```bash
cargo build --release
```

---

### 5. **Ejecuta Neovide**
Después de compilar, el binario estará disponible en el directorio `target/release`. Ejecuta Neovide con el siguiente comando:

```bash
./target/release/neovide
```

---

### 6. **Instalación global (opcional)**
Si deseas instalar Neovide para que esté disponible como un comando global, mueve el binario a `/usr/local/bin`:

```bash
sudo mv ./target/release/neovide /usr/local/bin/
```

Ahora puedes ejecutar Neovide simplemente escribiendo:
```bash
neovide
```

---

### 7. **Solución de problemas comunes**
- Si obtienes errores durante la compilación, asegúrate de que todas las dependencias estén instaladas.
- Si ves mensajes como "Cannot find -lfontconfig", instala las bibliotecas faltantes:
  ```bash
  sudo apt install -y libfontconfig1 libfontconfig1-dev
  ```

---

Con estos pasos, deberías tener **Neovide** funcionando correctamente en Ubuntu. ¡Dime si necesitas más ayuda! 😊
