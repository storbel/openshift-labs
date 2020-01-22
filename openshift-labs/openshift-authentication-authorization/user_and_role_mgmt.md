#### Create a user :

`oc login -u developer1 -p developer1  [[HOST_SUBDOMAIN]]-8443-[[KATACODA_HOST]].environments.katacoda.com`{{execute}}


`oc login -u developer2 -p developer2  [[HOST_SUBDOMAIN]]-8443-[[KATACODA_HOST]].environments.katacoda.com`{{execute}}

`oc login -u admin1 -p admin1  [[HOST_SUBDOMAIN]]-8443-[[KATACODA_HOST]].environments.katacoda.com`{{execute}}

`oc login -u admin2 -p admin2  [[HOST_SUBDOMAIN]]-8443-[[KATACODA_HOST]].environments.katacoda.com`{{execute}}

`oc login -u master -p master  [[HOST_SUBDOMAIN]]-8443-[[KATACODA_HOST]].environments.katacoda.com`{{execute}}

#### Create User groups


For the purpose of this lab, we will create 2 groups, one for developers and one for administrators


`oc adm groups new developers developer1 developer2 --as system:admin`{{execute}}

`oc adm groups new admins admin1 admin2 --as system:admin`{{execute}}


#### Create projects : 

`oc new-project developer2-project --as system:admin`{{execute}}

`oc new-project developer1-project --as system:admin`{{execute}}

#### List policies 

List **clusterroles** : 

`oc get clusterroles --as system:admin`{{execute}}
List **clusterpolicy** :

`oc get clusterpolicy --as system:admin`{{execute}}

List **clusterrolebindings** :

`oc get clusterrolebindings --as system:admin`{{execute}}

List **roles** :

`oc get roles --as system:admin`{{execute}}

List **policy** :

`oc get policy --as system:admin`{{execute}}

List **rolebindings** :

`oc get scc --as system:admin`{{execute}}

List **scc** :

#### Assign roles to users and groups


Give **admins** group the ability to administer the cluster : 


`oc adm policy add-cluster-role-to-group admin admins --as system:admin`{{execute}}


Finally we no longer want **admin2** to be admin of the cluster :  

oadm policy remove-role-from-user <role> developer

`oc adm policy remove-cluster-role-to-user admin admin2 --as system:admin`{{execute}}


`oc adm policy add-role-to-user admin developer1 -n developer1-project --as system:admin`{{execute}}

`oc adm policy add-role-to-user admin developer2 -n developer2-project --as system:admin`{{execute}}

**developer1** is a confirmed storage administrator, and we want to give him the ability to manage storageClasses too :

`oc login -u developer1 -p developer1  [[HOST_SUBDOMAIN]]-8443-[[KATACODA_HOST]].environments.katacoda.com`{{execute}}

`oc get sc`{{execute}}

`oc get pvc`{{execute}}

`oc get pv`{{execute}}

`oc adm policy add-cluster-role-to-user storage-admin developer1 -n developer1-project --as system:admin`{{execute}}

`oc get sc`{{execute}}

`oc get pvc`{{execute}}

`oc get pv`{{execute}}
 

Add the **developer1** the ability to view the content of the **developer2-project** : 

`oc adm policy add-role-to-user view developer1 -n developer2-project`{{execute}}

Finally we changed our mind and  **developer1** should no longer be able to view the content of the **developer2-project** : 

`oc adm policy remove-role-from-user view developer1 -n developer2-project`{{execute}}

Cluster administrator is a very powerful role, which has ultimate control within the cluster, including the power to destroy that cluster. You can grant this role to other users if they absolutely need to have ultimate control. However, you may first want to examine the other available roles if you do not want to create such a powerful user. For example, admin is a constrained role that has the power to do many things inside of their project, but cannot affect (or destroy) the entire cluster.


Consider the **master** user to be the cluster master administrator : 

oc adm policy add-cluster-role-to-user cluster-admin master --as system:admin

login with the **master** account : 

`oc adm policy add-cluster-role-to-user cluster-admin master --as system:admin`{{execute}}


Be very careful when granting cluster administrator role to a user. Ensure that the user truly needs that level of power within the cluster. When OpenShift is first installed, a certificate based user is created and the credentials are saved in admin.kubeconfig. This cluster administrator user can do absolutely anything to any resource on the entire cluster, which can result in destruction if not used carefully.

