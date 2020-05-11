# !/bin/bash

## mac本体の設定
# 全ての拡張子のファイルを表示する
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# キーリピートの速度
defaults write NSGlobalDomain KeyRepeat -int 2

# キーリピート開始までのタイミング
defaults write NSGlobalDomain InitialKeyRepeat -int 15

# クラッシュレポートを無効化する
defaults write com.apple.CrashReporter DialogType -string "none"

# Finder のタイトルバーにフルパスを表示する
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true

# パスバーを表示する
defaults write com.apple.finder ShowPathbar -bool true

# ステータスバーを表示する
defaults write com.apple.finder ShowStatusBar -bool true

# タブバーを表示する
defaults write com.apple.finder ShowTabView -bool true

# アドレスバーに完全な URL を表示する
defaults write com.apple.Safari ShowFullURLInSmartSearchField -bool true




## brew 周りのインストール

# brew本体ののインストール
/bin/bash -c "\$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
brew update

# homebrew-cask
brew install brew-cask

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
rbenv install 2.5.1
rbenv install 2.6.4
nodenv install 8.16.0
nodenv install 12.6.0
pyenv install 3.6.1
goenv install 1.11.4

# aws cli
brew install awscli

# tree
brew install tree

# mysql
brew install mysql

# imagemagick
brew install imagemagick

# json見やすく
brew install jq

# yarn
brew install yarn
export PATH=$HOME/.yarn/bin:$PATH

# フォントの追加
brew tap homebrew/cask-fonts

# アルフレッド
brew cask install alfred

# vscord
brew cask install visual-studio-code

# font
brew cask install font-source-han-code-jp

# chrome
brew cask install google-chrome

# docker
brew cask install docker

# slack
brew cask install slack

# discord
brew cask install discord

# copyclip
brew cask install copyclip

# sublime
brew cask install sublime-text

# iterm2
brew cask install iterm2

# firefox
brew cask install firefox

# skitch
brew cask install skitch

# adobi
brew cask install adobe-creative-cloud

# skype
brew cask install skype

# zoom
brew cask install zoomus

# Android
brew cask install android-studio

#notion
brew cask install notion

#intellij
brew cask install intellij-idea-ce




