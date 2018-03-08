grep -i 'failed pass' /var/log/*.log | grep -o '[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}' | sort | uniq | sed 's/^/blockip /'
#| xargs -i -0 echo '{}'


