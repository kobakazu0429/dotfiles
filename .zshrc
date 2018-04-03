export LANG=en_US.UTF-8

export PATH="$HOME/.rbenv/bin:$HOME/.yarn/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

export ZSH=/Users/kazu/.oh-my-zsh

eval "$(rbenv init -)"

ZSH_THEME="agnoster"

plugins=(
  git
  ruby
  osx
  bundler
  brew
  rails
  emoji-clock
)

source $ZSH/oh-my-zsh.sh

# 自動補完を有効にする
# コマンドの引数やパス名を途中まで入力して <Tab> を押すといい感じに補完してくれる
# 例： `cd path/to/<Tab>`, `ls -<Tab>`
autoload -U compinit; compinit

# 入力したコマンドが存在せず、かつディレクトリ名と一致するなら、ディレクトリに cd する
# 例： /usr/bin と入力すると /usr/bin ディレクトリに移動
setopt auto_cd

# cd した先のディレクトリをディレクトリスタックに追加する
# ディレクトリスタックとは今までに行ったディレクトリの履歴のこと
# `cd +<Tab>` でディレクトリの履歴が表示され、そこに移動できる
setopt auto_pushd

# 入力したコマンドがすでにコマンド履歴に含まれる場合、履歴から古いほうのコマンドを削除する
# コマンド履歴とは今まで入力したコマンドの一覧のことで、上下キーでたどれる
setopt hist_ignore_all_dups

# <Tab> でパス名の補完候補を表示したあと、
# 続けて <Tab> を押すと候補からパス名を選択できるようになる
# 候補を選ぶには <Tab> か Ctrl-N,B,F,P
zstyle ':completion:*:default' menu select=1

# ビープ音の停止
setopt no_beep
 
# ビープ音の停止(補完時)
setopt nolistbeep

# alias
# cd
alias ...='cd ../..'
alias ....='cd ../../..'
alias cdc="cd ~/workspace/cho_kure_web"
alias cdmap="cd ~/workspace/kure_kosen_map"

# git
alias g="git"
alias gp="git push"

# python
alias p="python3"

# ruby
alias r="rails"
alias b="bundle"
alias be="bundle exec"
