# [TeleDark](https://telegram.me/TeleDark) 
**An advance and powerful Administration bot based on [TeleSeed](https://github.com/SEEDTEAM/TeleSeed) licensed under [GNU General public License](https://github.com/SEEDTEAM/TeleSeed/blob/master/LICENSE)**
# Features

* **A powerful Anti spam with custom sensitivity For each group**
* **Multiple Realms(admin groups)**
* **recalcitrant to any kind of spamming(Xy bots,name|photo changers and ...)**
* **Global ban**
* **Broadcast to all groups**
* **Group link**
* **Kick,ban and unban by reply**
* **Groups,ban and global bans list**
* **Logging anything that happens in group !**
* **Invite by username**
* **Group administration in bots private**
* **Only mods,owner and admin can add bots**
* **Arabic lock**
* **And ...**

# Installation 

```bash
# Tested on Ubuntu 14.04, for other OSs check out https://github.com/yagop/telegram-bot/wiki/Installation
sudo apt-get install libreadline-dev libconfig-dev libssl-dev lua5.2 liblua5.2-dev libevent-dev make unzip git redis-server g++ libjansson-dev libpython-dev expat libexpat1-dev
```

```bash
# lets install the bot
cd $HOME
git clone https://github.com/amirhmz/teledark.git
cd teledark
chmod +x launch.sh
./launch.sh install
./launch.sh # Enter a phone number & confirmation code.
```
### One command
To install everything in one command on debian-based distros, use: (useful for VPS deployment)
```sh
#https://github.com/yagop/telegram-bot/wiki/Installation
sudo apt-get update; sudo apt-get upgrade -y --force-yes; sudo apt-get dist-upgrade -y --force-yes; sudo apt-get install libreadline-dev libconfig-dev libssl-dev lua5.2 liblua5.2-dev libevent-dev libjansson* libpython-dev make unzip git redis-server g++ -y --force-yes && git clone https://github.com/amirhmz/teledark.git && cd teledark && chmod +x launch.sh && ./launch.sh install && ./launch.sh
```
### Realm configuration 

After you ran bot for first time,turn it off

create an empty group with it

run it again

obtain that groups id using /id and add its id to realms table in config

```lua
realm = {},--Realms Id
```
then start the bot again

# Our team !

[AmirDark](https://github.com/amirhmz) ([Telegram](https://telegram.me/AmirDark))

[PokerFace](http://github.com/MojtabaMonfared) ([Telegram](https://telegram.me/PokerFace_Dev))

[MR.Flat](http://github.com/telergybot) ([Telegram](https://telegram.me/mr_flat))

Our cahnnel > [@TeleDarkCh](https://telegram.me/teledarkch)
