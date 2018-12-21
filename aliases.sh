# Asterisk Docker aliases

bash asterisk-docker-container(){
    docker-compose -f ~/repos/asterisk-docker/docker-compose.yml $*;
}

bash asterisk-docker(){
    str="$*"
    asterisk-docker-container exec asterisk asterisk -rx $str;
}

alias asterisk-sip-peers='asterisk-docker sip show peers'
alias asterisk-sip-reload='asterisk-docker sip reload'
alias asterisk-sip-debug='asterisk-docker sip set debug on'
alias asterisk-sip-debug-off='asterisk-docker sip set debug off'
alias asterisk-reload='asterisk-docker core restart now'
alias asterisk-dialplan-reload='asterisk-docker dialplan reload'
alias asterisk-cli='asterisk-docker-container exec asterisk rasterisk'
alias asterisk-status='asterisk-docker-container ps'
alias asterisk-up='asterisk-docker-container up -d'
alias asterisk-stop='asterisk-docker-container stop'
alias asterisk-logs='asterisk-docker-container logs -f'
alias asterisk-host='asterisk-docker-container exec asterisk bash'
