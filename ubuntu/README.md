# Ubuntu

### Neovim

- Para instalar neovim con mi configuracion personalizada necesitaras la ultima version de neovim, para ello puedes seguir los siguientes pasos:

```bash
wget https://github.com/neovim/neovim/releases/download/stable/nvim.appimage
chmod u+x nvim.appimage
./nvim.appimage
```

para agregarlo al path puedes hacerlo de la siguiente manera:

```bash
sudo mv nvim.appimage /usr/local/bin/nvim
```


###  Batcat

Lastimosamente batcat no se encuentra en los repositorios de ubuntu, por lo que tendras que instalarlo manualmente, para ello puedes seguir los siguientes pasos:

Necesitas instalar Rust, para ello puedes hacerlo de la siguiente manera:
```bash
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```

Luego de instalar Rust, puedes instalar batcat de la siguiente manera:

```bash
cargo install bat
```

### ZSH

Para instalar zsh puedes hacerlo de la siguiente manera:

```bash
sudo apt install zsh zsh-syntax-highlighting zsh-autosuggestions
```

#### Powerlevel10k
Clona el repositorio de powerlevel10k en la carpeta powerlevel10k de tu carpeta personal:

```bash
sudo git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
```

Cambiamos a zsh por defecto:

```bash
chsh -s $(which zsh)
```

Ahora si estas listo para hace los enlaces simbolicos del .zshrc y el .p10k.zsh:


```bash
rm ~/.zshrc
rm ~/.p10k.zsh


ln -s $(pwd)/.zshrc ~/.zshrc
ln -s $(pwd)/.p10k.zsh ~/.p10k.zsh
```

### Sudo Plugin

Instala el plugin de sudo para zsh:

```bash
sudo mkdir /usr/share/zsh-sudo
wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/plugins/sudo/sudo.plugin.zsh -P /usr/share/zsh-sudo/
```

### FZF

Para instalar fzf puedes hacerlo de la siguiente manera:

```bash
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
```

> Nota: Para root debes hacer lo mismo pero en la carpeta /root/.fzf


