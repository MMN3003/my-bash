apt update -y
apt install zsh -y
zsh --version
echo "current shell: "
echo $SHELL
chsh -s $(which zsh)
echo "shell after change is: "
echo $SHELL
echo "start to install oh my zsh..."
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
echo "system env is: "
env
echo "install font powerline..."
apt install fonts-powerline -y
source ~/.zshrc
echo "install highlighter..."
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
echo "source ${(q-)PWD}/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc
source ./zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
