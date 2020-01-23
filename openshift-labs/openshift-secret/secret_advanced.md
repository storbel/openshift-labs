Secrets such as database credentials can be stored in a config map and passed to an
application using environment variables or in a configuration file. Because 
secrets is important, OpenShift provides an alternative resource type for handling
secret data called a **secret**.


A generic secret works the same as a config map, but OpenShift manages them inter‐
nally in a more secure manner. 
To create a generic secret you can use oc create secret generic, `or oc create -f`
with a JSON/YAML resource definition for the secret.
If you only need to store simple key/value pairs, you can create the secret by running
oc create secret generic and passing the --from-literal option along with the
names and values for the settings:

`oc create secret generic my-secrets \
 --from-literal DATABASE_USERNAME=user145c30ca \
 --from-literal DATABASE_PASSWORD=EbAYDR1sJsvW`{{execute}}
 
 
You can see the definition of the secret by querying the resource created using oc get
-o json. The key parts of the definition needed to reproduce it are:


` oc get secret my-secrets -o json `{{execute}}


You will note that the value for each key under data has been obfuscated by applying
base64 encoding. If you are creating the resource definition yourself, you will need to
do the encoding yourself when adding the values. You can create the obfuscated val‐
ues using the Unix base64 command.
For convenience, especially when using a secret in a template definition, you can sup‐
ply the values as clear text, as long as you add them under the stringData field rather
than the data field




Even when created in this way, when queried back the secret will always show the
data field with values obfuscated. The Unix base64 command can be used to deob‐
fuscate the values, and an option also exists to reveal the deobfuscated values if view‐
ing the secret through the web console.
To pass the settings in this secret as environment variables in a deployment configu‐
ration, you need to run the extra step of:


`oc set env dc/nginx-example --from secret/my-secrets`{{execute}}

<pre>deploymentconfig.apps.openshift.io/nginx-example updated</pre>

The result of running oc set env on the deployment configuration with the --list
option will now be:

`oc set env dc/nginx-example --list`{{execute}}

`
# deploymentconfigs/nginx-example, container nginx-example
# DATABASE_PASSWORD from secret my-secrets, key DATABASE_PASSWORD
# DATABASE_USERNAME from secret my-secrets, key DATABASE_USERNAME
`


echo '
DATABASE_PASSWORD=RWJBWURSMXNKc3ZX
DATABASE_USERNAME=dXNlcjE0NWMzMGNh
'> secrets.ini
To create the secret using a file, instead of using --from-literal use --from-file,
overriding the key used for the value as necessary:
` oc create secret generic blog-webdav-users --from-file .htdigest=webdav.htdigest `{{execute}}

To mount the secret, use oc set volume, using the --secret-name option to identify
the secret to use:
$ oc set volume dc/blog --add --secret-name blog-webdav-users \
 --mount-path=/opt/app-root/secrets/webdav
To change a secret you can use oc edit on it, or you can save the current resource
definition to a file using oc get -o json or oc get -o yaml, edit the definition in
the file, and replace the original by running oc apply -f with the file as the argu‐
ment.
When you edit the definition of a secret, you will need to trigger a new deployment
for it to be used. The values of a secret when mounted as a file in the container will
not be updated automatically, as is the case when using a config map.
Deleting Conguration and Secrets
When you create config maps or secrets they are created independent from any exist‐
ing build or deployment configuration and are not associated with a specific applica‐
tion. If you want to associate them with a specific application in order to track them,
Deleting Conguration and Secrets | 91
you will need to add a label to them explicitly. This can be done using the oc label
command:
$ oc label secrets/blog-secrets app=blog
When you delete an application using oc delete all and a label selector, any config
maps or secrets to which that label has been applied will not be deleted. This is
because all does not include resource objects of type configmap and secret in the
selection.
To delete all resource objects for an application using a label selector, including
secret and configmap object types, use:
$ oc delete all,configmap,secret --selector app=blog
