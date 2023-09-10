sudo apt update
sudo apt install unzip wget curl zsh fuse -y
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
git clone https://github.com/zsh-users/zsh-autosuggestions.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zdharma-continuum/fast-syntax-highlighting.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/fast-syntax-highlighting
git clone --depth 1 -- https://github.com/marlonrichert/zsh-autocomplete.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-autocomplete
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/Agave.zip
mkdir ~/.config
mkdir ~/.fonts
mv .config/* ~/.config/
mv .fonts/* ~/.fonts
mv Agave.zip ~/.fonts
mv .p10k.zsh ~
mv .zshrc ~
unzip ~/.fonts/Agave.zip
wget https://github.com/neovim/neovim/releases/download/stable/nvim.appimage
sudo mv nvim.appimage /bin/nvim
sudo chmod 777 /bin/nvim
chsh -s $(which zsh)
