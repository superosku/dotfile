export PYTHONSTARTUP=~/.pythonrc
export PATH="/usr/local/opt/ruby/bin:$PATH"
alias poop='git add -A :/ && git commit -a -m "💩"'
alias worktime='pmset -g log | grep -e " Sleep  " -e " Wake  " | grep -v "Maintenance" | grep -v "Sleep Service Back to Sleep" | tail -15'

