# -*- mode: ruby -*-
# vi: set ft=ruby :

# Scripts
# SCRIPTS_PATH = "~/Code/vagrant/scripts/"
SCRIPTS_PATH = "https://raw.githubusercontent.com/aaronlord/vagrant/master/scripts/"

# Server
SERVER_IP       = "192.168.33.101"
SERVER_HOSTNAME = "vagrant.local"
SERVER_MEMORY   = "512"
SERVER_TIMEZONE = "GMT"

# SSH
SSH_KEY = "~/.ssh/id_rsa.pub"

# PHP "5.5", "5.4" or "5.3"
PHP_VERSION = "5.5"

# Ruby
RVM_VERSION      = "stable"
RVM_RUBY_VERSION = "1.9.3"
RVM_RUBY_GEMS    = ["sass"]


Vagrant.configure("2") do |config|

    config.vm.box     = "precise64"

    config.vm.box_url = "http://files.vagrantup.com/precise64.box"

    config.vm.network "private_network", ip: SERVER_IP

    config.vm.synced_folder ".", "/var/www"

    config.vm.provider "virtualbox" do |vb|

        vb.customize ["modifyvm", :id, "--memory", SERVER_MEMORY]

    end

    # Base
    config.vm.provision "shell", path: SCRIPTS_PATH + "base.sh"

    # SSH
    config.vm.provision "shell", path: SCRIPTS_PATH + "base.sh", args: [SSH_KEY]

    # Dotfiles
    config.vm.provision "shell", privileged: false, path: SCRIPTS_PATH + "dotfiles.sh"

    # Vim
    config.vm.provision "shell", privileged: false, path: SCRIPTS_PATH + "vim.sh"

    # PHP
    config.vm.provision "shell", path: SCRIPTS_PATH + "php.sh", args: [PHP_VERSION]

    # Ruby
    config.vm.provision "shell", privileged: false, path: SCRIPTS_PATH + "ruby.sh", args: [RVM_VERSION, RVM_RUBY_VERSION, RVM_RUBY_GEMS.join(' ')]

    # Apache
    config.vm.provision "shell", path: SCRIPTS_PATH + "apache.sh", args: [SERVER_HOSTNAME]

    # MySQL
    config.vm.provision "shell", path: SCRIPTS_PATH + "mysql.sh"

    # Composer
    config.vm.provision "shell", path: SCRIPTS_PATH + "composer.sh"

    # Node
    config.vm.provision "shell", path: SCRIPTS_PATH + "node.sh";

    # Grunt
    config.vm.provision "shell", path: SCRIPTS_PATH + "grunt.sh";

    # Bower
    config.vm.provision "shell", path: SCRIPTS_PATH + "bower.sh";

    # Specific
    # config.vm.provision "shell", path: "provision.sh"
end
