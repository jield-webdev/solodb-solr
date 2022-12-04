# SoloDB SOLR

Dedicated SOLR docker container for SOLR search engines, based on SOLR latest

## Bulk update cores

```bash
find ./ -name 'core.properties' -type f -exec sed -i 's/name=solodb_/name=qutech_solodb_/g' {} \;
```

## Create a dedicated server on Azure for a SOLR service

Follow these instructions to create a dedicated Debian VM to host an SOLR instance on Azure.

Pre-requirements are a VLAN with an own subnet for intranet services

### Create VLAN

Go to azure and create new Virtual network and create a dedicated subnet for the website services (App service and SOLR)
Create 10.254.0.0/16 as address space and create

- 10.254.0.0/24 as subnet for production. (Web)
- 10.254.1.0/24 as subnet for VM

### Create VM

Create a Debian based virtual machine (D2s v3) and use a public key pair. Connect the VM to the production subnet

Install SOLR (latest version)

```shell
sudo apt-get update && sudo apt-get upgrade
sudo apt-get install default-jdk
wget https://www.apache.org/dyn/closer.lua/solr/solr/9.1.0/solr-9.1.0.tgz?action=download
mv solr-9.1.0.tgz?action=download solr-9.1.0.tgz
tar xzf solr-9.1.0.tgz
sudo bash solr-9.1.0/bin/install_solr_service.sh solr-9.1.0.tgz
```

Change /etc/default/solr.in.sh so solr listens to 0.0.0.0

```shell
# Sets the network interface the Solr binds to. To prevent administrators from
# accidentally exposing Solr more widely than intended, this defaults to 127.0.0.1.
# Administrators should think carefully about their deployment environment and
# set this value as narrowly as required before going to production. In
# environments where security is not a concern, 0.0.0.0 can be used to allow
# Solr to accept connections on all network interfaces.
SOLR_JETTY_HOST="0.0.0.0"
```

Create a private/public key pair and save this in GitHub for deployment. Do this for solr and azureuser

```shell
ssh-keygen
```

```shell
sudo apt-get install git
```

Install PHP 8.1 cli to have cli operations

```shell
sudo apt-get install gnupg2
sudo echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main" | sudo tee /etc/apt/sources.list.d/sury-php.list
sudo wget -qO - https://packages.sury.org/php/apt.gpg | sudo apt-key add -
sudo apt-get update && sudo apt-get upgrade
sudo apt-get install redis-server php8.1-cli php8.1-common php8.1-intl php-redis php8.1-gd php-igbinary php8.1-mysql php8.1-mbstring php8.1-zip php8.1-xml php8.1-curl php8.1-opcache php8.1-readline php8.1-soap php8.1-bcmath php8.1-redis php8.1-gmp
```

(c) 2022, Dr. Ir. Johan van der Heide (info@jield.nl)