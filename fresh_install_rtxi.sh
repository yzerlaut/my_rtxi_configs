# generate ssh 
ssh-keygen -t rsa -b 4096 -C "yann.zerlaut@gmail.com"
eval "$(ssh-agent -s)"
ssh-add -K ~/.ssh/id_rsa
cat ~/.ssh/id_rsa.pub
read -p "[...] =========== >> Copy the following key in the list of github ssh keys [Press anykey to continue]" none
#install emacs
sudo add-apt-repository ppa:kelleyk/emacs
sudo apt update
sudo apt install emacs25
# install rtxi
git clone git@github.com:yzerlaut/rtxi.git

