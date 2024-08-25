
<<<<<<< HEAD
## Estructura del directorio

```plaintext
~/.config/nvim/
├── init.lua
└── lua/
    ├── plugins/
    │   ├── themes.lua
    │   ├── alpha.lua
    │   └── init.lua
    └── core/
        ├── options.lua
        └── keymaps.lua

```

### Necesitas `lazy.nvim`
=======


### 1. **Instala `lazy.nvim`**
>>>>>>> 06facd8ab114eef4773f7c9b0fb04dcb18cee616

Abre tu terminal y ejecuta:
```bash
git clone https://github.com/folke/lazy.nvim.git ~/.local/share/nvim/site/pack/packer/start/lazy.nvim
```

<<<<<<< HEAD
## Mis atajos de teclado


#### Navegación de Ventanas

- **Moverse a la ventana a la izquierda:** `Ctrl + h`
- **Moverse a la ventana abajo:** `Ctrl + j`
- **Moverse a la ventana arriba:** `Ctrl + k`
- **Moverse a la ventana a la derecha:** `Ctrl + l`

#### Tamaño de Ventana (Neovide)

- **Aumentar tamaño de ventana:** `Ctrl + =`
- **Disminuir tamaño de ventana:** `Ctrl + -`

#### Resaltado de Texto

- **Resaltar (visual) texto:** `v`
- **Resaltar (visual) línea completa:** `V`
- **Resaltar (visual) en bloque:** `Ctrl + v`

#### Edición de Texto

- **Copiar línea actual:** `yy`
- **Pegar después del cursor:** `p`
- **Pegar antes del cursor:** `P`
- **Eliminar línea actual:** `dd`
- **Deshacer:** `u`
- **Rehacer:** `Ctrl + r`

#### Comentarios

- **Comentar línea actual:** `gcc`
- **Descomentar línea actual:** `gcc` (vuelve a ejecutar el comando para descomentar)

#### Buscar y Reemplazar

- **Buscar texto:** `/texto`
- **Buscar siguiente:** `n`
- **Buscar anterior:** `N`

#### Navegación de Buffers

- **Cambiar al buffer anterior:** `:bprev`
- **Cambiar al buffer siguiente:** `:bnext`

#### Visualización de Plugins

- **Nvim-Tree:**
  - **Abrir/ocultar el árbol de archivos:** `Ctrl + n`
  - **Navegar por el árbol de archivos:** `hjkl` (dentro de Nvim-Tree)
  - **Crear nuevo archivo:** `a`
  - **Eliminar archivo:** `d`
  - **Renombrar archivo:** `r`

- **Telescope:**
  - **Buscar archivos:** `Ctrl + p`
  - **Buscar texto en archivos:** `Ctrl + f`
  - **Buscar en buffers:** `Ctrl + b`
  - **Buscar en comandos:** `:Telescope commands`

#### Otros Atajos

- **Guardar archivo:** `:w`
- **Salir de Neovim:** `:q`
- **Guardar y salir:** `:wq`
- **Ir al inicio de la línea:** `0`
- **Ir al final de la línea:** `$`
- **Ir a la línea superior:** `k`
- **Ir a la línea inferior:** `j`
- **En modo Insercion ir a modo Normal:** `jk`

#### Navegacion de a parrafos

- **Ir al parrafo anterior:** `Alt + k`
- **Ir al parrafo siguiente:** `Alt + j`

#### Navegacion de a palabras

- **Ir a la palabra anterior:** `Alt + h`
- **Ir a la palabra siguiente:** `Alt + l`

> Tambien funciona en modo visual

#### Borrar palabras

- **Borrar palabra anterior:** alt + del

> Tambien funciona en modo normal

=======
### 2. **Crea la configuración de Neovim**




```lua
-- ~/.config/nvim/init.lua

-- Asegúrate de que 'lazy.nvim' se carga antes de todo
vim.opt.runtimepath:append(vim.fn.stdpath('data') .. '/site/pack/packer/start/lazy.nvim')

require('lazy').setup({
    -- Aquí puedes listar tus plugins
    {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    },
    'neovim/nvim-lspconfig',
    'hrsh7th/nvim-cmp',
    'hrsh7th/cmp-nvim-lsp',
    'L3MON4D3/LuaSnip',
    -- Añade aquí más plugins
})

-- Opcional: Configura opciones básicas
vim.o.number = true
vim.o.relativenumber = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
```

### 3. **Estructura del directorio**


```plaintext
~/.config/nvim/
├── init.lua
└── lua/
    ├── plugins/
    │   └── init.lua
    └── core/
        ├── options.lua
        ├── keymaps.lua
        └── autocmds.lua
```

### 4. **Configura los plugins**

En `~/.config/nvim/lua/plugins/init.lua`, puedes agregar configuraciones específicas para cada plugin. Aquí hay un ejemplo básico:

```lua
-- ~/.config/nvim/lua/plugins/init.lua

-- Configuración para nvim-treesitter
require('nvim-treesitter.configs').setup({
    ensure_installed = "maintained",
    highlight = {
        enable = true,
    },
})

-- Configuración para nvim-cmp
local cmp = require('cmp')
cmp.setup({
    snippet = {
        expand = function(args)
            require('luasnip').lsp_expand(args.body)
        end,
    },
    mapping = cmp.mapping.preset.insert({
        ['<C-n>'] = cmp.mapping.select_next_item(),
        ['<C-p>'] = cmp.mapping.select_prev_item(),
        ['<C-y>'] = cmp.mapping.confirm({ select = true }),
    }),
    sources = {
        { name = 'nvim_lsp' },
        { name = 'luasnip' },
    },
})
```

### 5. **Configuración adicional**

Si quieres agregar más configuraciones y plugins, simplemente sigue agregando entradas en la sección de `require('lazy').setup({ ... })` en `init.lua` y crea configuraciones específicas en los archivos dentro de `lua/plugins/`.

¡Con esto deberías tener una configuración básica lista para instalar y configurar plugins en Neovim usando `lazy.nvim`! Si necesitas ayuda con algún plugin en particular o más detalles, no dudes en preguntar.
>>>>>>> 06facd8ab114eef4773f7c9b0fb04dcb18cee616
