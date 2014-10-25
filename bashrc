PS1='\[\e[0;32m\]\u\[\e[m\] \[\e[1;31m\]$PWD\[\e[m\] \[\e[1;32m\]\$\[\e[m\] \[\e[1;37m\]'
export PATH="/usr/local/heroku/bin:$PATH"
export PATH="/Library/PostgreSQL/9.3/bin:$PATH"

export PYTHONPATH="Users/tom/development/marketplace/django_root"
export DJANGO_SETTINGS_MODULE=server_conf.settings.base_settings

alias venva=". /Users/tom/development/virtualenvs/main/bin/activate"
alias ls="ls -FG"
alias be="cd /Users/tom/development/marketplace/django_root"
alias fe="cd /Users/tom/development/marketplace/matched2_frontend"
alias gsu="git status -uno"

alias set_sqlite="export DJANGO_SETTINGS_MODULE=server_conf.settings.settings_sqlite"
alias set_prod="export DJANGO_SETTINGS_MODULE=server_conf.settings.settings_prod"
