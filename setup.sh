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

# USB やネットワークストレージに .DS_Store ファイルを作成しない
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true


# タブバーを表示する
defaults write com.apple.finder ShowTabView -bool true

# アドレスバーに完全な URL を表示する
defaults write com.apple.Safari ShowFullURLInSmartSearchField -bool true

## ユーザー辞書(変換前=a, 変換後=b)
defaults write -g NSUserDictionaryReplacementItems -array-add '{on=1;replace=te;with=test;}'
# defaults write -g NSUserDictionaryReplacementItems -array-add '{on=1;replace=te;with=test;}'
# defaults write -g NSUserDictionaryReplacementItems -array-add '{on=1;replace=te;with=test;}'
# defaults write -g NSUserDictionaryReplacementItems -array-add '{on=1;replace=te;with=test;}'
# defaults write -g NSUserDictionaryReplacementItems -array-add '{on=1;replace=te;with=test;}'
# defaults write -g NSUserDictionaryReplacementItems -array-add '{on=1;replace=te;with=test;}'

# capslockをcontrolに割り当て
# capslockが30064771129、controlが30064771300に割り当て
vid=$(ioreg -r -n 'Apple Internal Keyboard / Trackpad' | grep -E 'idVendor' | awk '{ print $4 }')
pid=$(ioreg -r -n 'Apple Internal Keyboard / Trackpad' | grep -E 'idProduct' | awk '{ print $4 }')
keyboard_id=${vid}-${pid}-0
defaults -currentHost write -g com.apple.keyboard.modifiermapping.${keyboard_id} -array-add '
<dict>
  <key>HIDKeyboardModifierMappingDst</key>
  <integer>30064771300</integer>
  <key>HIDKeyboardModifierMappingSrc</key>
  <integer>30064771129</integer>
</dict>
'

## brew 周りのインストール

# brew本体ののインストール
/bin/bash -c "\$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
brew update

# iterm2
brew install iterm2 --cask

# oh my zshのインストール
curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh

# mas appストアからのダウンロードをするためのbrew
brew install mas

# xcode
mas install 497799835

# line
mas install 539883307

# Messenger
mas install 1480068668

# Magnet
mas install 441258766

# Be Focused(ポモドーロタイマー)
mas install 973134470

# homebrew-cask
brew install brew-cask

# catの強いやつ
brew install bat

# vim
brew install vim

#　コンテナ一覧・イメージ一覧・ログ・ボリュームが一つの画面に標示される
brew install jesseduffield/lazydocker/lazydocker

# git
brew install git

brew install peco

# anyenv
brew install anyenv

# path通すよ.zshrcのところは要修正
echo 'eval "$(anyenv init -)"' >> ~/.zshrc
anyenv init
anyenv install --init
anyenv install rbenv
anyenv install pyenv
anyenv install nodenv
anyenv install goenv
anyenv install tfenv
exec $SHELL -l
rbenv install 2.5.1
rbenv install 2.6.4
rbenv global 2.6.4

nodenv install 8.16.0
nodenv install 12.6.0
nodenv global 12.6.0

pyenv install 3.6.1
pyenv global 3.6.1

goenv install 1.11.4
goenv global 1.11.4
tfenv install 0.15.5

echo '
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$PATH
' >> ~/.zshrc

# go migrationツール
brew install golang-migrate

# go lint
brew install golangci/tap/golangci-lint

# aws cli系統
# メインcli
brew install awscli

# eks cli
brew tap weaveworks/tap
brew install weaveworks/tap/eksctl

# sam
brew tap aws/tap
brew install aws-sam-cli
echo 'export PATH="/usr/local/opt/python@3.7/bin:$PATH"' >> ~/.zshrc

# kubectx
brew install kubectx

# tree
brew install tree

# git-secrets
brew install git-secrets

# grpcurl
brew install grpcurl

# mysql
brew install mysql

# imagemagick
brew install imagemagick

# wget
brew install wget

# plantUMLに必要なやつ
brew install graphviz
echo 'export PATH="/usr/local/opt/gnu-getopt/bin:$PATH"' >> ~/.zshrc

# Protocol buffers formatter
brew install clang-format

# json見やすく
brew install jq

# direnv環境変数
brew install direnv
eval "$(direnv hook zsh)"

# yarn
brew install yarn
export PATH=$HOME/.yarn/bin:$PATH

# フォントの追加
brew tap homebrew/cask-fonts

# アルフレッド
brew install alfred --cask

# vscode
brew install visual-studio-code --cask

# javaのインストール
brew install java --cask

# font
brew install font-source-han-code-jp --cask

# chrome
brew install google-chrome --cask

# docker
brew install docker --cask

# slack
brew install slack --cask

# discord
brew install discord --cask

# copyclip
brew install copyclip --cask

# sublime
brew install sublime-text --cask

# firefox
brew install firefox --cask

# skitch
brew install skitch --cask

# adobe
brew install adobe-creative-cloud --cask

# skype
brew install skype --cask

# zoom
brew install zoomus --cask

# Android-studio
brew install android-studio --cask

#notion
brew install notion --cask

# workplace
brew install workplace-chat --cask

# clipy
brew install clipy --cask

# imageoptim　画像軽量化ツール
brew install imageoptim --cask

# k8sの設定をyamlで記述するためのモジュール
brew install kubernetes-helm

brew install k9s

# gcloud
brew install google-cloud-sdk --cask
echo "
# gcloud path
source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc'
source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc'
" >> ~/.zshrc

# gcloud kubernetes cli
gcloud components install kubectl


# トラックパッドの速度を速める
defaults write -g com.apple.trackpad.scaling 5


# シェルの設定を追加.zshrc
# shell_profile=.zshrc

# git系
echo '
# git alias
alias g="git"
' >> ~/.zshrc

# docker系
echo '
# docker alias
alias d="docker"
alias dc="docker-compose"
' >> ~/.zshrc

# kubernetes系
echo '
# kubernetes系
alias k="kubectl"
' >> ~/.zshrc
# kubernetesコマンド補完
source <(kubectl completion zsh)
echo "if [ $commands[kubectl] ]; then source <(kubectl completion zsh); fi" >> ~/.zshrc

# terraform系
echo '
# terraform系
alias t="terraform"
' >> ~/.zshrc

# その他使える系
echo '
# other alias
alias la="ls -la"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
' >> ~/.zshrc

# vscode
echo'alias v="code"' >> ~/.zshrc

# git alias
# user名を修正すること
echo "
[alias]
  st  = status
  com = commit -m
  coam  = commit --amend -m
  ch  = checkout
  b = branch
  difff = diff --word-diff
  d = diff
  re  = reset
  hard  = reset --hard
  soft  = reset --soft
  ph  = push origin HEAD
[user]
	name = hogehoge
	email = fugafuga.com
" >> ~/.gitconfig

## 設定反映のためmacを再起動
sudo reboot
