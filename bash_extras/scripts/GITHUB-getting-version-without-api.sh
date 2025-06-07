curl -s "https://github.com/pystardust/ani-cli/tags" | grep "Link--primary Link" | awk -F '</a>' '{print $1}' | awk -F '>' '{print $NF}' | tr -d 'v' | head -n 1
