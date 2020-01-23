$ oc help
For details on common options accepted by all commands, run it with the options
command:
$ oc options
Many commands will accept --dry-run as an option. This can be used to validate
that the combination of options you passed the command were correct, without mak‐
ing any changes.

SERVER=`oc whoami --show-server`
TOKEN=`oc whoami --token`
URL="$SERVER/oapi/v1/users/~"
curl -H "Authorization: Bearer $TOKEN" $URL



oc status 


$ oc get all -o name --selector app=blog

oc new-app openshiftkatacoda/blog-django-py --name blog

