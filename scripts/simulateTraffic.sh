#!/bin/zsh

URL=http://hello-world-python-la-demo-box.apps.cluster-eba8.eba8.example.opentlc.com
COUNT=1

while true; do 
    RESULT=$(curl -s ${URL}  | grep -i "<h1.* Hello World .*h1>")

    case ${RESULT} in
        *"Hello World 2.1"*)
            echo -e "${COUNT}. \e[92mHello World 2.1\e[0m"
        ;;
        *"Hello World 2.0"*)
            echo -e "${COUNT}. \e[93mHello World V2\e[0m"
        ;;
        *"Hello World"*)
            echo -e "${COUNT}. \e[39mHello World V1\e[0m";
        ;;
        *)
            echo -e "${COUNT}. \e[91mError World\e[0m"
        ;;
    esac
    COUNT=$((${COUNT} + 1))
    sleep 1
done