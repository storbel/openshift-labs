
# Create Project acs

oc new-project acs
# Add developer as an administrator for this project

oc policy add-role-to-user admin developer -n acs

mkdir myapp
echo "<html><body><p>Hello from nginx based application</p></body></html>" > myapp/index.html
echo "FROM nginx:alpine
ADD . /usr/share/nginx/html
" > myapp/Dockerfile

for pv_dir in /data/pv-frontend /data/pv-database; do mkdir -p $pv_dir; chmod a+rwx $pv_dir; done

echo '{
    "apiVersion": "v1",
    "kind": "List",
    "items": [
        {
            "apiVersion": "v1",
            "kind": "PersistentVolume",
            "metadata": {
                "name": "pv-frontend"
            },
            "spec": {
                "accessModes": [
                    "ReadWriteOnce",
                    "ReadWriteMany",
                    "ReadOnlyMany"
                ],
                "capacity": {
                    "storage": "10Gi"
                },
                "hostPath": {
                    "path": "/data/pv-frontend"
                },
                "persistentVolumeReclaimPolicy": "Recycle"
            }
        },
        {
            "apiVersion": "v1",
            "kind": "PersistentVolume",
            "metadata": {
                "name": "pv-database"
            },
            "spec": {
                "accessModes": [
                    "ReadWriteOnce",
                    "ReadWriteMany",
                    "ReadOnlyMany"
                ],
                "capacity": {
                    "storage": "1Gi"
                },
                "hostPath": {
                    "path": "/data/pv-database"
                },
                "persistentVolumeReclaimPolicy": "Recycle"
            }
        }
    ]
}' > pv.yml

oc create -f pv.yml