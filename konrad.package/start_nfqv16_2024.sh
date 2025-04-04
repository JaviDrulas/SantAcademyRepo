#!/bin/bash
# Mykola change Konrad script
echo Inicializando entorno...
sleep 2s

echo Inicializando Event Server
nohup ./eventServer.sh &
sleep 30s

echo Inicializando Data Server
nohup ./dataServer.sh &
sleep 30s

echo Inicializando Engine Server
nohup ./engineServer.sh &
sleep 30s

echo Inicializando Risk Server
nohup ./riskServer.sh &
sleep 30s

echo Inicializando webstart
nohup ./webstart.sh &
sleep 10s

echo Inicializando scheduler
nohup ./scheduler.sh &

echo Ambiente Inicializado

echo some text