
# Create Project acs

oc new-project acs
# Add developer as an administrator for this project

oc policy add-role-to-user admin developer -n acs

