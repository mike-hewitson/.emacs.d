
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

source /usr/local/share/antigen/antigen.zsh

# Override environment variables here:
# export DATOMIC_PATH=$COGNICIAN_PATH/Datomic

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle brew
antigen bundle autojump
antigen bundle lein
antigen bundle mvn

antigen bundle ~/Code/Cognician/zsh-plugin --no-local-clone

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
antigen theme awesomepanda

# Tell antigen that you're done.
antigen apply

# aliases

alias e="open -a /Applications/Emacs.app"

alias serv="python -m SimpleHTTPServer"
alias ll="ls -on"
alias c="clear"

alias gd="git difftool"
alias gdc="git difftool --cached"
alias gb="git branch -v -v -a"

# clojure

alias le="lein"
alias lrh="le repl :headless"
alias jps="jps -lvm"
alias kaj="killall java"
alias cdc="cn datomic console"

# cognician

alias cgn=/Users/mikehewitson/Code/Cognician
alias ba=/Users/mikehewitson/Code/Cognician/Base
alias ch=/Users/mikehewitson/Code/Cognician/Chat
alias hs=/Users/mikehewitson/Code/Cognician/Highstorm
alias is=/Users/mikehewitson/Code/Cognician/Insights
alias re=/Users/mikehewitson/Code/Cognician/Reactions
alias mn=/Users/mikehewitson/Code/Cognician/Monolith
alias ma=/Users/mikehewitson/Code/Cognician/Manage
alias se=/Users/mikehewitson/Code/Cognician/Semaphore
alias tk=/Users/mikehewitson/Code/Cognician/Tock
alias b2=/Users/mikehewitson/Code/Cognician/Builder2

alias tra=/Users/mikehewitson/Code/Cognician/Terra

# sublime

alias st="subl ."
alias stz="st ~/.zshrc"

# atom

alias a="atom ."

# env

export PATH=$PATH:~/bin

#export COGNICIAN_USE_MEM_DATABASES=true

export AWS_PROFILE=cgn-production

export COGNICIAN_PATH=$HOME/Code/Cognician
export DATOMIC_PATH=$HOME/Datomic
export S3_PATH=$COGNICIAN_PATH/S3

export COGNICIAN_COG_MEDIA_URL="https://cog-media.cognician.com"
export COGNICIAN_AWARDS_MEDIA_URL="https://awards-media.cognician.com"
export COGNICIAN_USER_MEDIA_URL="https://user-media.cognician.com"
export COGNICIAN_WEB_MEDIA_URL="https://web-media.cognician.com"
export COGNICIAN_STATIC_MEDIA_URL=""
export COGNICIAN_EMAIL_IMAGE_URL="https://web-media.cognician.com/email-assets"

export COGNICIAN_DATOMIC_URI="datomic:dev://localhost:4334/cognician_transit"
export COGNICIAN_TRANSIT_DATOMIC_URI="datomic:dev://localhost:4334/cognician_transit"
export COGNICIAN_DATOMIC_FULL_URI="datomic:dev://localhost:4334/cognician"

export COGNICIAN_MEMCACHED_URI="localhost:11211"

export COGNICIAN_ENV="dev"
