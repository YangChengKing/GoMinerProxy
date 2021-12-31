#!/bin/bash
mkdir go_miner_proxy
wget https://raw.githubusercontent.com/GoMinerProxy/GoMinerProxy/main/scripts/run.sh -O ./go_miner_proxy/run.sh
chmod 777 ./go_miner_proxy/run.sh

wget https://github.com/GoMinerProxy/GoMinerProxy/releases/download/1.0.2/GoMinerProxy_v1.0.2_linux_amd64.tar.gz -O GoMinerProxy_v1.0.2_linux_amd64.tar.gz
tar -zxvf GoMinerProxy_v1.0.2_linux_amd64.tar.gz -C ./go_miner_proxy
chmod 777 ./go_miner_proxy/GoMinerProxy

screen -dmS go_miner_proxy
sleep 0.2s
screen -r go_miner_proxy -p 0 -X stuff "cd go_miner_proxy"
screen -r go_miner_proxy -p 0 -X stuff $'\n'
screen -r go_miner_proxy -p 0 -X stuff "./run.sh"
screen -r go_miner_proxy -p 0 -X stuff $'\n'
