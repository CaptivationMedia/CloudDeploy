# $1 ==> the php version
curl -L -O https://github.com/phpbrew/phpbrew/raw/master/phpbrew
chmod +x phpbrew
sudo mv phpbrew /usr/local/bin/phpbrew
phpbrew -v
phpbrew init
vim ~/.bashrc
# Paste this: [[ -e ~/.phpbrew/bashrc ]] && source ~/.phpbrew/bashrc
phpbrew lookup-prefix homebrew
phpbrew self-update
phpbrew --debug install $1 +default+apxs2+mysql
source ~/.phpbrew/bashrc
phpbrew switch $1
phpbrew use $1
phpbrew ext install curl
php -v
