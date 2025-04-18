# ghostty and nvim
dnf copr enable pgdev/ghostty -y
dnf install ghostty -y
dnf install nvim -y

# install uv
curl -LsSf https://astral.sh/uv/install.sh | sh

# starship
curl -sS https://starship.rs/install.sh | sh

# clone dotfiles and link them to .config
git clone https://github.com/jamwojt/dotfiles ~

rm -r ~/.config/ghostty
ln -s ~/dotfiles/.config/ghostty/ ~/.config/ghostty

rm -r ~/.config/hypr
ln -s ~/dotfiles/.config/hypr ~/.config/hypr

rm -r ~/.config/waybar
ln -s ~/dotfiles/.config/waybar/ ~/.config/waybar

ln -s ~/dotfiles/.config/wofi ~/.config/wofi

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
ln -s ~/dotfiles/.tmux.conf ~/.tmux.conf

rm ~/.config/starship.toml
ln -s ~/dotfiles/.config/starship.toml ~/.config/starship.toml

echo 'eval "$(starship init bash)"' >> ~/.bashrc
echo 'alias ls="ls -a --color=always"'
echo 'alias activate="source .venv/bin/activate"'
