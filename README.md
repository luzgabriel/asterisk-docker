# Asterisk Docker

Simple Dockerfile and docker-compose file to start an Asterisk instance in a container environment.

```bash
#Clone repo to your home folder
git clone https://github.com/luzgabriel/asterisk-docker.git ~/.asterisk-docker

# Add source ~/.asterisk-docker/aliases.sh to your rc file
echo "source ~/.asterisk-docker/aliases.sh" | tee -a  ~/.bashrc ~/.zshrc

#Set your Asterisk configuration folder with the env ASTERISK_CONF or 
# copy it to ~/.asterisk-docker/conf

env ASTERISK_CONF=my_custom_folder asterisk-up

```

