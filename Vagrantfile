# -*- mode: ruby -*-
# vi: set ft=ruby :

# Server
SERVER_IP       = "192.168.33.101"
SERVER_MEMORY   = "512"
SERVER_HOSTNAME = "app.dev"
SERVER_TIMEZONE = "GMT"

# PHP "5.5", "5.4" or "5.3"
PHP_VERSION = "5.5"

Vagrant.configure("2") do |config|

    config.vm.box     = "precise64"

    config.vm.box_url = "http://files.vagrantup.com/precise64.box"

    config.vm.network "private_network", ip: SERVER_IP

    config.vm.synced_folder ".", "/var/www", type: "rsync"

    config.vm.provider "virtualbox" do |vb|

        vb.customize ["modifyvm", :id, "--memory", SERVER_MEMORY]

    end

    # Base
    config.vm.provision "shell", path: "scripts/base.sh"

    # PHP
    config.vm.provision "shell", path: "scripts/php.sh", args: [PHP_VERSION]

    # Apache
    config.vm.provision "shell", path: "scripts/apache.sh"

    # MySQL
    config.vm.provision "shell", path: "scripts/mysql.sh"

    # Dotfiles
    config.vm.provision "shell", path: "scripts/dotfiles.sh"

    # Vim
    config.vm.provision "shell", path: "scripts/vim.sh"

    # Composer
    config.vm.provision "shell", path: "scripts/composer.sh"

end
