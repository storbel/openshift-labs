
# Create Project acs

oc new-project acs
# Add developer as an administrator for this project

oc policy add-role-to-user admin developer -n acs

mkdir myapp
echo "<html><body><p>Hello from nginx based application</p></body></html>" > myapp/index.html
echo "FROM nginx:alpine
ADD . /usr/share/nginx/html
" > myapp/Dockerfile



echo '{
    "apiVersion": "v1",
    "kind": "List",
    "items": [
        {
            "apiVersion": "v1",
            "kind": "PersistentVolume",
            "metadata": {
                "name": "pv-10"
            },
            "spec": {
                "accessModes": [
                    "ReadWriteMany"
                ],
                "capacity": {
                    "storage": "10Gi"
                },
                "hostPath": {
                    "path": "/data/pv-10"
                },
                "persistentVolumeReclaimPolicy": "Recycle"
            }
        }
    ]
}' > pv.yml

oc create -f pv.yml