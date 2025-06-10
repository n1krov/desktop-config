## 📦 ¿Qué es Ranger?

* Gestor de archivos **vi-like**, basado en la consola.
* Usa teclas similares a **Vim** para moverse y manipular archivos.
* Extremadamente rápido y minimalista.
* Soporta previsualización de archivos (texto, imágenes, PDFs, etc.).
* Se puede **configurar y ampliar** fácilmente.

---

## 🎹 Atajos de teclado útiles en Ranger

Aquí van los más útiles, agrupados por uso:

---

### 📁 Navegación

| Tecla                      | Acción                                |
| -------------------------- | ------------------------------------- |
| `h`                        | Ir al directorio anterior (izquierda) |
| `l`                        | Entrar al directorio / abrir archivo  |
| `j`                        | Bajar (siguiente archivo)             |
| `k`                        | Subir (archivo anterior)              |
| `gg`                       | Ir al principio                       |
| `G`                        | Ir al final                           |
| `^` (Shift+6)              | Ir al directorio padre                |
| `~`                        | Ir al home (`/home/usuario`)          |
| \`\` \` (backtick) + letra | Marcar lugares y volver rápido        |

---

### 🔧 Archivos y directorios

| Tecla | Acción                                     |
| ----- | ------------------------------------------ |
| `yy`  | Copiar archivo (yank)                      |
| `dd`  | Cortar archivo (cut)                       |
| `pp`  | Pegar (paste)                              |
| `dD`  | Borrar archivo                             |
| `a`   | Renombrar archivo                          |
| `cw`  | Cambiar nombre (como "change word" en Vim) |
| `mf`  | Marcar archivos (flag)                     |
| `uv`  | Desmarcar todos                            |

---

### 🖼 Previsualización y utilidades

| Tecla        | Acción                                   |
| ------------ | ---------------------------------------- |
| `i`          | Mostrar información del archivo          |
| `:`          | Modo comando (como en Vim)               |
| `?`          | Ayuda integrada                          |
| `zh`         | Mostrar/ocultar archivos ocultos         |
| `R`          | Refrescar (reload)                       |
| `:open_with` | Elegir con qué programa abrir un archivo |

---

### 🛠️ Comandos útiles (modo `:`)

Puedes escribir estos con `:` como en Vim:

```bash
:bulkrename         # Renombrar múltiples archivos con editor
:delete             # Borrar archivos seleccionados
:mount              # Ver montajes
:shell              # Ejecutar un comando de shell
:cd ~/Descargas     # Cambiar de carpeta
```

---

### 🔥 Extra: Integraciones útiles

* **Vim + Ranger**: Desde Vim puedes lanzar Ranger con `:Ranger`.
* **Previsualización de imágenes**: Si usás `ueberzug` o `kitty`, podés ver imágenes directamente.
* **Plugins**: Hay extensiones para git, abrir archivos con fzf, etc.

