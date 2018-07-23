

# powerline config
# if [ -f /usr/share/powerline/bindings/bash/powerline.sh  ]; then
 #    source /usr/share/powerline/bindings/bash/powerline.sh
  #   fi
. /usr/share/powerline/bindings/bash/powerline.sh

# end powerline

#fix vim color schemes in tmux
alias tmux='tmux -2'
# end

alias ls='ls -lFGh --color'
alias mv="mv -i"
alias sshtop="ssh topic@dev.topicdesign.com"
alias apache="sudo /etc/init.d/apache2"
alias o="gnome-open"
export EDITOR=/usr/bin/vi



# command prompt
# export PS1="\[\e[32;1m\]\u@\[\e[32;1m\]\h \[\e[33;1m\]\W> \[\e[0m\]"
# export PS1="\h:\W \u\$"

