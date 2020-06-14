## Check Netowrk configurations :


Identify whith Network Plugin we are using on this Lab :

`ocat /etc/origin/node/node-config.yaml| grep networkPluginName`{{execute}}

Get the MTU used :

`cat /etc/origin/node/node-config.yaml | grep mtu:`{{execute}}