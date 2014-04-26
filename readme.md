# Vagrant

Vagrant is pretty rad. Here's my `Vagrantfile` and provisioning scripts.

## Installation

By default, the scripts are pulled down from Github, so you only _really_ need to pull the `Vagrantfile` into your root:

```
$ curl -O https://raw.githubusercontent.com/aaronlord/vagrant/master/Vagrantfile
```

### Default

A `$ vagrant up`, will install the following on an Ubuntu 12.04 box:

- Sensible defaults (git, curl, wget)
- PHP 5.5\*
- Apache 2.4
- MySQL 5.5
- Composer
- RVM, Ruby 1.9.3\* and Gems
- Node.js
- Grunt.js
- Bower
- [Sexy dotfiles](https://github.com/aaronlord/.dotfiles)

`192.168.33.101` will point to the `public/` folder next to your `Vagrantfile`. 

_Bonus points: add `vagrant.local` to your hosts file._

### Configuration

Before you `vagrant up`, you'll probably want to edit the `Vagrantfile` to configure things like the PHP version, server hostname or Ruby gems.

Also, you can comment out the provisioning scripts that aren't useful to you.
