# Manual de uso de GitHub CLI (`gh`)

## Instalación en Arch Linux

Para instalar `gh` en Arch Linux, puedes usar `pacman` o `yay`:

### Instalación con `pacman`
```bash
sudo pacman -S github-cli
```

### Instalación con `yay`
Si no está disponible en los repos oficiales:
```bash
yay -S github-cli
```

## Configuración inicial

Una vez instalado, debes autenticarte con tu cuenta de GitHub.

### Autenticación
Ejecuta el siguiente comando para iniciar sesión en tu cuenta de GitHub:
```bash
gh auth login
```

Sigue las instrucciones en pantalla para autenticarte, eligiendo entre el uso de un navegador o un token de acceso personal.

---

## Comandos básicos de `gh`

### Ver repositorios

Para listar todos tus repositorios:
```bash
gh repo list <tu_usuario>
```

Ejemplo:

```bash
gh repo list lautaro
```

### Clonar un repositorio

Para clonar un repositorio de GitHub a tu máquina local:
```bash
gh repo clone <usuario>/<nombre_repositorio>
```
Ejemplo:
```bash
gh repo clone lautaro/proyecto-ejemplo
```

### Ver detalles de un repositorio

Puedes ver detalles de un repositorio con el siguiente comando:
```bash
gh repo view <usuario>/<nombre_repositorio>
```
Ejemplo:
```bash
gh repo view lautaro/proyecto-ejemplo
```

---

## Gestión de Issues

### Ver lista de issues

Para listar todos los issues abiertos en el repositorio actual:
```bash
gh issue list
```

### Ver detalles de un issue específico

Para ver los detalles de un issue:
```bash
gh issue view <número_issue>
```
Ejemplo:
```bash
gh issue view 42
```

### Crear un nuevo issue

Para crear un nuevo issue en el repositorio actual:
```bash
gh issue create
```

---

## Gestión de Pull Requests

### Ver lista de pull requests

Para listar todos los pull requests abiertos en el repositorio actual:
```bash
gh pr list
```

### Ver detalles de un pull request específico

Para ver los detalles de un pull request:
```bash
gh pr view <número_pr>
```
Ejemplo:
```bash
gh pr view 12
```

### Crear un nuevo pull request

Para crear un nuevo pull request en el repositorio actual:
```bash
gh pr create
```

---

## Creación y Gestión de Repositorios

### Crear un nuevo repositorio

Para crear un nuevo repositorio en tu cuenta de GitHub:
```bash
gh repo create <nombre_repositorio> --public
```
Ejemplo:
```bash
gh repo create nuevo-repo --public
```

### Eliminar un repositorio

Para eliminar un repositorio desde la terminal:
```bash
gh repo delete <usuario>/<nombre_repositorio>
```
**Nota**: Este comando te pedirá confirmación antes de eliminar el repositorio.

---

## Visualización y Gestión de Gists

### Ver tus gists

Para listar todos tus gists:
```bash
gh gist list
```

### Crear un nuevo gist

Para crear un nuevo gist desde la terminal:
```bash
gh gist create <archivo> --public
```
Ejemplo:
```bash
gh gist create notas.md --public
```

---

## Gestión de ramas (branches)

### Ver todas las ramas de un repositorio

Para listar todas las ramas de un repositorio:
```bash
gh repo view --branch
```

### Crear una nueva rama

Para crear una nueva rama en el repositorio actual:
```bash
gh repo create-branch <nombre_rama>
```

---

## Alias útiles para `gh`

Puedes crear alias para facilitar el uso de `gh`:
```bash
gh alias set cl 'repo clone'
gh alias set pl 'pr list'
```

---

## Fuentes adicionales

Para más información, puedes consultar la documentación oficial de GitHub CLI:
- [Documentación oficial de GitHub CLI](https://cli.github.com/manual/)

