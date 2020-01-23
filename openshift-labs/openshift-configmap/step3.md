Create ConfigMap using cli


To create a config map you can use oc create configmap, or oc create with a
JSON/YAML resource definition for the config map.
If you only need to store simple key/value pairs, you can create the config map by
running oc create configmap and passing the --from-literal option along with
the names and values for the settings:

`oc create configmap prefs \
 --from-literal hostname=database \
 --from-literal username=acs_user \
 --from-literal password=acs2020 \
  --from-literal dbname=ocpdemo `{{execute}}
  
  
`oc get configmap prefs -o json `{{execute}}


`oc set env dc/nginx-example --from configmap/prefs`{{execute}}



For more complicated data, you can create the config map using a file as input. Create
a file called prefs.json containing:

`echo '
 "hostname"="database",
 "username"="acs_user",
 "password"="acs2020",
 "dbname"="ocpdemo"' > prefs.json `{{execute}}


To create the config map, instead of using --from-literal, use --from-file:


`oc create configmap prefs-file --from-file prefs.json`{{execute}}

Running oc describe on the config map created, the result is:

`oc describe configmap/perfs-file`{{execute}}


The name of the file is used as the key. If it were necessary for the key to be different
from the name of the file used as input, you would use <key>=blog.json as the argu‐
ment to the --from-file option, replacing key with the name you want to use.
To mount a config map into a container as a set of files, run:

`oc set volume dc/nginx-example --add --configmap-name prefs-file  --mount-path=/opt/app-root/src/settings`{{execute}}

 
 This will result in files being created in the directory specified by the --mount-path
option, where the names of the files created correspond to the keys, and the contents
of the files are the values associated with those keys.

`If the path specified by --mount-path is a directory that contains
existing files, those files will be hidden from view and no longer
accessible.`

 