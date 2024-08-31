sudo apt update && sudo apt upgrade -y
sudo apt install screen -y
Screen -s NillionGA
sudo apt install apt-transport-https ca-certificates curl software-properties-common -y && curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add - && sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable" && sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin -y
docker pull nillion/retailtoken-accuser:v1.0.0
mkdir -p nillion/accuser
docker run -v ./nillion/accuser:/var/tmp nillion/retailtoken-accuser:v1.0.0 initialise
sudo cat /root/nillion/accuser/credentials.json
