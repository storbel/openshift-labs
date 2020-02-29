# Install Terraform
apt-get update
apt-get -y install wget  
apt-get -y install ansible
apt-get -y install unzip
apt-get -y install sqlite
 wget https://releases.hashicorp.com/terraform/0.12.20/terraform_0.12.20_linux_amd64.zip
 unzip terraform_0.12.20_linux_amd64.zip
 rm -rf terraform_0.12.20_linux_amd64.zip
 mv terraform /usr/local/sbin/
 terraform version

# Install pip
wget https://bootstrap.pypa.io/get-pip.py
python3 get-pip.py
# Install Flask
#for module in flask flask-bootstrap flask-script flask_moment flask_wtf; do pip install $module; done
# Clone Storbel Flask 
git clone https://github.com/storbel/flask.git

# Clone Flasky
git clone https://github.com/miguelgrinberg/flasky.git



	
