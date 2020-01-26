
# Create Project acs

oc new-project acs
# Add developer as an administrator for this project

oc policy add-cluster-role-to-user cluster-admin developer -n acs


for pv_dir in 01 02 03 04 05 06 07 08 09 10; do mkdir -p /data/pv-$pv_dir; chmod a+rwx /data/pv-$pv_dir; done
