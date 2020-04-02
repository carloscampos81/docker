git clone https://github.com/SelecaoGlobocom/carlos-antonio.git

cd /folder


Instalando o Terraform

0) Instalando a versão 0.11.13 no Ubuntu 18.04 64 bits.

sudo su

apt-get update

apt-get install -y unzip

wget https://releases.hashicorp.com/terraform/0.11.13/terraform_0.11.13_linux_amd64.zip

unzip terraform_0.11.13_linux_amd64.zip -d /usr/bin/

terraform -v

terraform --help