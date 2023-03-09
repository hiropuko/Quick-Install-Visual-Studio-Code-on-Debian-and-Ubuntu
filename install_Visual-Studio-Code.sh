#!/bin/bash

# Update packages
# Обновление пакетов
sudo apt-get update

# Скачайте публичный ключ Microsoft для пакетов GPG
# Download the Microsoft public key for GPG packages
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg

# Установите публичный ключ в систему
# Install the public key on the system
sudo install -o root -g root -m 644 packages.microsoft.gpg /usr/share/keyrings/

# Добавьте репозиторий Visual Studio Code в систему
# Add the Visual Studio Code repository to the system
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/vscode stable main" | sudo tee /etc/apt/sources.list.d/vscode.list

# Install dependencies
# Установка зависимостей
sudo apt-get install -y build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libreadline-dev libffi-dev

#Update the package list and install Visual Studio Cod
#Обновите список пакетов и установите Visual Studio Code
sudo apt-get update
sudo apt-get install code
echo
echo
echo ////////////////////////////////////////////////////
echo
echo _ _ _ _ _ _ INSTALLATION COMPLETE _ _ _ _ _ _ _ _ _
echo 
echo JOIN TO TELEGRAM GROUP: t.me/repackScript
echo Visual Studio Code has been successfully installed.
echo Visual Studio Code успешно установлен.
echo ПРИСОЕДИНЯЙТЕСЬ В ГРУППУ: t.me/repackScript
echo https://github.com/repackScript/
echo
echo _ _ _ _ _ _ УСТАНОВКА ЗАКОНЧЕНА _ _ _ _ _ _ _ _ _ _
echo
echo ////////////////////////////////////////////////////
echo
echo
