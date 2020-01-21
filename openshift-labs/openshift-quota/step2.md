

oc get quota -n acs

apply quota on project acs

oc create -f add-quota-acs.yml


oc describe quota project-acs-limit -n acs


oc export quota project-acs-limit -n acs



oc get quota -n acs


oc create -f add-quota-developer.yml

oc describe quota user-developer-limit -n acs

oc export quota user-developer-limit -n acs


oc get quota -n acs
