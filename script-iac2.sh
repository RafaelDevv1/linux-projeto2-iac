#!/bin/bash

echo "Atualizando o Servidor"

# Remover a referência problemática do repositório
sudo sed -i '/file:\/cdrom/d' /etc/apt/sources.list

# Atualizar a lista de pacotes
sudo apt-get update

# Corrigir o dpkg interrompido
sudo dpkg --configure -a

# Instalar o unzip se não estiver instalado
sudo apt-get install -y unzip

# Baixar e extrair o arquivo ZIP
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip

# Criar o diretório de destino, se não existir
sudo mkdir -p /var/www/html

# Copiar os arquivos para o diretório de destino
sudo cp -r linux-site-dio-main/* /var/www/html/

