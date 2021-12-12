Installation
============
To install this setup on any Linux or Mac machine, execute the following
commands:

1. Install git
```bash
sudo apt-get install -y git-core
```
2. Create an SSH key and add it to Github (manually)
```bash
ssh-keygen -t rsa
cat ~/.ssh/id_rsa.pub
```
Then visit https://github.com/settings/keys

3. Clone and run setup
```bash
mkdir -p $HOME/code
git clone git@github.com:millerjohnp/dotfiles.git $HOME/code/dotfiles

# Run setup
$HOME/code/dotfiles/init.sh

# Source the bashrc
source ~/.bashrc
```

4. Install Anaconda (TODO: Move into `init.sh` next time I do this)
```
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
sh Miniconda3-latest-Linux-x86_64.sh
```
