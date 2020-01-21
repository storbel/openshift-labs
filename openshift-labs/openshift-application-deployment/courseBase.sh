
# Create Project acs

oc create -f init.yaml

# Add developer as an administrator for this project

oc policy add-role-to-user admin developer -n acs

