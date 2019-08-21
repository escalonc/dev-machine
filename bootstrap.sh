sudo apt update && sudo apt upgrade
sudo apt install git zsh build-essential httpie htop

# postgresSql install
sudo apt-get install curl ca-certificates gnupg
curl https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt/ $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'
sudo apt-get update
sudo apt-get install postgresql-contrib

# git
git config --global user.name "Christopher Escalon"
git config --global user.email "escalonchristopher@gmail.com"
git config --global core.editor nano

# Oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" "" --unattended

# zsh
chsh --s $(which zsh)

# nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | zsh
source .zshrc
nvm install --lts
