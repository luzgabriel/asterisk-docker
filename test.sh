# aliases
bash asterisk(){
    str="$*"
    docker-compose -f ~/.asterisk/docker-compose.yml exec asterisk asterisk -rx $str;
}
alias asterisk-sip-peers='docker-compose -f ~/.asterisk/docker-compose.yml exec asterisk asterisk -rx "sip show peers"'
alias asterisk-sip-reload='docker-compose -f ~/.asterisk/docker-compose.yml exec asterisk asterisk -rx "sip reload"'
alias asterisk-sip-debug='docker-compose -f ~/.asterisk/docker-compose.yml exec asterisk asterisk -rx "sip set debug on"'
alias asterisk-sip-debug-off='docker-compose -f ~/.asterisk/docker-compose.yml exec asterisk asterisk -rx "sip set debug off"'
alias asterisk-reload='docker-compose -f ~/.asterisk/docker-compose.yml exec asterisk asterisk -rx "core restart now"'
alias asterisk-dialplan-reload='docker-compose -f ~/.asterisk/docker-compose.yml exec asterisk asterisk -rx "dialplan reload"'
alias asterisk-cli='docker-compose -f ~/.asterisk/docker-compose.yml exec asterisk rasterisk'
alias asterisk-status='docker-compose -f ~/.asterisk/docker-compose.yml ps'
alias asterisk-up='docker-compose -f ~/.asterisk/docker-compose.yml up -d'
alias asterisk-stop='docker-compose -f ~/.asterisk/docker-compose.yml stop'
alias asterisk-logs='docker-compose -f ~/.asterisk/docker-compose.yml logs -f'

