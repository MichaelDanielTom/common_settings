#!/bin/bash
export BIN=/Users/tom/development/virtualenvs/marketplace_venv/bin/
for FILE in $*
do
    $BIN/pyflakes $FILE
    echo "## pyflakes above, pep8 below ##"
    $BIN/pep8 --repeat $FILE
    echo "## pylint below ##"
    $BIN/pylint --rcfile=~/pldb-src/server_setup/pylint.conf --reports=n --msg-template='{abspath}:{line}:{column}: {msg_id} ({symbol}) {obj} {msg}' $FILE
    #rm `dirname $FILE`/dependencies.dot
done
