#### Create a user :

`oc login -u developer1 -p developer1  [[HOST_SUBDOMAIN]]-8443-[[KATACODA_HOST]].environments.katacoda.com`{{execute}}


`oc login -u developer2 -p developer2  [[HOST_SUBDOMAIN]]-8443-[[KATACODA_HOST]].environments.katacoda.com`{{execute}}

`oc login -u admin1 -p admin1  [[HOST_SUBDOMAIN]]-8443-[[KATACODA_HOST]].environments.katacoda.com`{{execute}}

`oc login -u admin2 -p admin2  [[HOST_SUBDOMAIN]]-8443-[[KATACODA_HOST]].environments.katacoda.com`{{execute}}

`oc login -u master -p master  [[HOST_SUBDOMAIN]]-8443-[[KATACODA_HOST]].environments.katacoda.com`{{execute}}

#### Create User groups


For the purpose of this lab, we will create 2 groups, one for developers and one for administrators


`oc adm groups new developers developer1 developer2`{{execute}}

`oc adm groups new developers developer1 developer2`{{execute}}

#### Assign roles to users and groups

For a complete list of all available roles:

$ oadm policy
The following section includes examples of some common operations related to adding (binding) and removing roles from users and groups. For a complete list of available local policy operations, see Managing Role Bindings.

Adding a Role to a User
To bind a role to a user for the current project:

$ oadm policy add-role-to-user <role> developer
You can specify a project with the -n flag.

Removing a Role from a User
To remove a role from a user for the current project:

$ oadm policy remove-role-from-user <role> developer
You can specify a project with the -n flag.

Adding a Cluster Role to a User for All Projects
To bind a cluster role to a user for all projects:

$ oadm policy add-cluster-role-to-user <role> developer
Removing a Cluster Role from a User for All Projects
To remove a cluster role from a user for all projects:

$ oadm policy remove-cluster-role-from-user <role> developer
Adding a Role to a Group
To bind a role to a specified group in the current project:

$ oadm policy add-role-to-group <role> developers
You can specify a project with the -n flag.

Removing a Role from a Group
To remove a role from a specified group in the current project:

$ oadm policy remove-role-from-group <role> developers
You can specify a project with the -n flag.

Adding a Cluster Role to a Group for All Projects
To bind a role to a specified group for all projects in the cluster:

$ oadm policy add-cluster-role-to-group <role> developers
Removing a Cluster Role from a Group for All Projects
To remove a role from a specified group for all projects in the cluster:

$ oadm policy remove-cluster-role-from-group <role> developers


Creating a Cluster Administrator User
Cluster administrator is a very powerful role, which has ultimate control within the cluster, including the power to destroy that cluster. You can grant this role to other users if they absolutely need to have ultimate control. However, you may first want to examine the other available roles if you do not want to create such a powerful user. For example, admin is a constrained role that has the power to do many things inside of their project, but cannot affect (or destroy) the entire cluster.

Creating an Administrator Within a Project
To create a basic administrator role within a project:

$ oadm policy add-role-to-user admin developer -n <project_name>
Creating a Cluster Administrator
To create a cluster administrator with ultimate control over the cluster:

Be very careful when granting cluster administrator role to a user. Ensure that the user truly needs that level of power within the cluster. When OpenShift is first installed, a certificate based user is created and the credentials are saved in admin.kubeconfig. This cluster administrator user can do absolutely anything to any resource on the entire cluster, which can result in destruction if not used carefully.

$ oadm policy add-cluster-role-to-user cluster-admin master

