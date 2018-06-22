# making potentially dangerous commands interactive
alias rm='rm -rf -i'
alias mv='mv -i'
alias cp='cp -r -i'

# adding some git aliases for easy usage
alias branch='git branch'
alias add='git add'
alias status='git status' 
alias diff='git diff'
alias pull='git pull'
alias commit='git commit -m'
alias amend='git commit --amend -m'
alias merge='git merge'
alias fetch='git fetch'
alias remote='git remote'
alias push='git push'
alias log='git log --graph --pretty=custom'

# what now
# ls aliases
if [ -f ~/bin/deviconls.sh ];
then 
		alias ls='bash ~/bin/deviconls.sh'
else
		alias ls='ls --color=auto'
		alias ll='ls -al'
fi

# vim aliases
alias :q='exit'
alias nginxconfig='sudo vim /etc/nginx/sites-available/default'
