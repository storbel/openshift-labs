

wget https://bootstrap.pypa.io/get-pip.py
python3 get-pip.py

pip install flask
git clone https://github.com/storbel/flask.git

 wget https://releases.hashicorp.com/terraform/0.12.20/terraform_0.12.20_linux_amd64.zip
 yum install unzip
 unzip terraform_0.12.20_linux_amd64.zip
 rm -rf terraform_0.12.20_linux_amd64.zip
 mv terraform /usr/local/sbin/
 terraform version
