# Common bashrc config, source this in ~/.bash_profile

PS1='\[\e[0;32m\]\u\[\e[m\] \[\e[1;31m\]$PWD\[\e[m\] \[\e[1;32m\]\$\[\e[m\] \[\e[1;37m\]'
export PATH="/usr/local/heroku/bin:$PATH"
export PATH="/Library/PostgreSQL/9.3/bin:$PATH"

export PYTHONPATH=/Users/tom/development/marketplace/django_root:.
export DJANGO_SETTINGS_MODULE=server_conf.settings.base_devel_settings
export IPYTHONDIR=/Users/tom/development/common_settings/ipython_config
export PGPASSWORD=element1

MAIN_VENV="/Users/tom/development/virtualenvs/marketplace_venv/bin/activate"
alias venva=". $MAIN_VENV"
alias ls="ls -FG"
alias be="cd /Users/tom/development/marketplace/django_root"
alias fe="cd /Users/tom/development/marketplace/matched2_frontend"
alias root="cd /Users/tom/development/marketplace"
alias cs="cd /Users/tom/development/common_settings"
alias gsu="git status -uno"
alias rb="source ~/.bash_profile"
alias eb="vi /Users/tom/development/common_settings/bashrc"

alias set_sqlite="export DJANGO_SETTINGS_MODULE=server_conf.settings.settings_sqlite"
alias set_postgres="export DJANGO_SETTINGS_MODULE=server_conf.settings.base_devel_settings"
alias set_prod="export DJANGO_SETTINGS_MODULE=server_conf.settings.settings_prod"
alias ph="git subtree push --prefix django_root heroku master"
alias phf="git push heroku \\\`git subtree split --prefix django_root master\\\`:master --force"
if [ -n "$VIRTUAL_ENV" ] 
    then
        source $VIRTUAL_ENV/bin/activate
fi

source /usr/local/bin/virtualenvwrapper.sh
