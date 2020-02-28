# Install Terraform
apt-get update
apt-get -y install wget  
apt-get -y install ansible

 wget https://releases.hashicorp.com/terraform/0.12.20/terraform_0.12.20_linux_amd64.zip
 unzip terraform_0.12.20_linux_amd64.zip
 rm -rf terraform_0.12.20_linux_amd64.zip
 mv terraform /usr/local/sbin/
 terraform version

# Install pip
wget https://bootstrap.pypa.io/get-pip.py
python3 get-pip.py
# Install Flask
pip install flask

# Clone Storbel Flask 
git clone https://github.com/storbel/flask.git

# Clone Flasky
git clone https://github.com/miguelgrinberg/flasky.git
cd flasky
git checkout 1a


