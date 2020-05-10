# !/bin/bash

## brew 周りのインストール

# brew本体ののインストール
/bin/bash -c "\$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"  
brew update  

# catの強いやつの
brew install bat  

# vim
brew install vim  

#　コンテナ一覧・イメージ一覧・ログ・ボリュームが一つの画面に標示される
brew install jesseduffield/lazydocker/lazydocker

# git
brew install git  

# anyenv
brew install anyenv  

# path通すよ.zshrcのところは要修正
echo 'eval "$(anyenv init -)"' >> ~/.zshrc
anyenv init  
anyenv install --init https://github.com/foo/anyenv-install.git  
anyenv install rbenv  
anyenv install pyenv  
anyenv install nodenv  
anyenv install goenv  
exec $SHELL -l  
rbenv install ...  
nodenv install ...  
pyenv install ...  
goenv install ...  


brew install awscli  
brew install tree  
brew install mysql  
brew install imagemagick
brew install yarn  
export PATH=$HOME/.yarn/bin:$PATH

brew tap homebrew/cask-fonts  
brew cask install alfred  
brew cask install visual-studio-code  
brew cask install font-source-han-code-jp  
brew cask install google-chrome  
brew cask install docker  
brew cask install virtualbox  
brew cask install vagrant  
brew cask install slack  
brew cask install discord
