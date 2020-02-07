
# Create Project acs

oc new-project acs
# Add developer as an administrator for this project

oc adm policy add-cluster-role-to-user cluster-admin developer -n acs

mkdir /data;  chmod a+rwx  /data

for pv_dir in 01 02 03 04 05 06 07 08 09 10 mypv; do mkdir -p /data/pv-$pv_dir; chmod a+rwx  /data/pv-$pv_dir; done

 wget https://releases.hashicorp.com/terraform/0.12.20/terraform_0.12.20_linux_amd64.zip
 yum install unzip -y
 unzip terraform_0.12.20_linux_amd64.zip
 mv terraform /usr/local/sbin/
 terraform version
