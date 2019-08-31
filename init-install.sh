HOME='/home/ubuntu'

# install
sudo apt-get install software-properties-common
sudo apt-get update
sudo apt-get install emacs nginx jq git memcached wget curl tree unzip tig vim

# alp install
cd /tmp; wget  https://github.com/tkuchiki/alp/releases/download/v1.0.0/alp_linux_amd64.zip
unzip alp_linux_amd64.zip
sudo mv alp /usr/bin/
cd

# ssh config
if [ ! -e $HOME/.ssh/authorized_keys ]; then
    touch $HOME/.ssh/authorized_keys
fi

for i in 1 2 3
    do
        read -p "enter a pubkey: " pk
        echo $pk >> $HOME/.ssh/authorized_keys
    done
cd $HOME/.ssh; ssh-keygen
echo "register this pub key at GitHub\n";
cat $HOME/.ssh/id_rsa.pub

chmod 700 $HOME/.ssh;
chmod 600 $HOME/.ssh/authorized_keys;

echo "plz register root's public key at GitHub";
