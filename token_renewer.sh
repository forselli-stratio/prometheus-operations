#!/bin/bash

source /usr/sbin/kms_utils.sh

source /usr/sbin/b-log.sh
B_LOG --stdout true
DOCKER_LOG_LEVEL=${DOCKER_LOG_LEVEL:-INFO}
eval LOG_LEVEL_"${DOCKER_LOG_LEVEL}"

OLD_IFS=${IFS}
IFS=',' read -r -a VAULT_HOSTS <<< "$STRING_VAULT_HOST"
IFS=${OLD_IFS}

while true;
do
    INFO "Getting token info" 
    
    if data=$(token_info); then
      INFO "Token info acquired successfully"
    else
      ERROR "Token info failed, retrying..."                         
      continue                                  
    fi
    token_info_json=$(echo $data | cut -d',' -f2-) 
    creation_ttl=$(echo $token_info_json | jq .data.creation_ttl)
    ttl=$(echo $token_info_json | jq .data.ttl)
    
    token_life=$(bc <<< "scale=4; ($creation_ttl - $ttl)/$creation_ttl" | awk '{printf "%.4f\n", $0}')
    
    INFO "Token life (0-1): $token_life"
    
    if echo "$token_life > 0.8" | bc -l | grep -q 1
    then
           INFO "Renewing token"
           if renew=$(token_renewal); then
             INFO "Token renewed successfully"
           else
             ERROR "Token renew failed, retrying..."                         
             continue                                  
           fi
    else
           INFO "Token does not need renewal"
    fi

    sleep 59

done
