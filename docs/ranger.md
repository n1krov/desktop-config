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


## 📂 Crear archivos y directorios

Desde Ranger, entrá al **modo comando** con `:` (como en Vim), y usá estos comandos:

| Acción              | Comando                    |
| ------------------- | -------------------------- |
| Crear archivo       | `:touch nombre.txt`        |
| Crear carpeta       | `:mkdir nueva_carpeta`     |
| Crear árbol de dirs | `:mkdir -p dir1/dir2/dir3` |

---

## 🗑️ Borrar archivos o carpetas

| Tecla     | Acción                                     |
| --------- | ------------------------------------------ |
| `dD`      | Borra archivo/directorio **(te pregunta)** |
| `:delete` | Borra lo seleccionado                      |

> ⚠️ No va a la papelera. Es eliminación directa, así que cuidado.

---

## 📄 Copiar y mover archivos

Ranger usa un sistema tipo "clipboard" con `yy` y `dd`:

| Acción             | Tecla |
| ------------------ | ----- |
| Copiar (yank)      | `yy`  |
| Cortar (cut/mover) | `dd`  |
| Pegar              | `pp`  |

**Ejemplo de mover:**

1. Navegá al archivo → `dd`
2. Navegá al destino → `pp`

**Ejemplo de copiar:**

1. Navegá al archivo → `yy`
2. Navegá al destino → `pp`

---

## 🏷️ Renombrar y mover (más controlado)

| Acción               | Tecla / Comando                     |
| -------------------- | ----------------------------------- |
| Renombrar            | `a` o `cw`                          |
| Mover usando comando | `:rename nuevo_nombre`              |
| Mover a otra ruta    | `:rename ../otra_carpeta/nuevo.txt` |

---

## 🧠 Bonus: Renombrado masivo

Muy útil si querés cambiar nombres en lote:

```bash
:bulkrename
```

Eso abre un editor con todos los nombres de los archivos seleccionados. Cambiás los nombres ahí, y al guardar, Ranger los renombra todos.

