# Dev-Box

A Vagrant configuration to create a basic VM for Rails application development. Loosely
based on [rails-dev-box](https://github.com/rails/rails-dev-box). 

Uses [Puppet](http://puppetlabs.com) to provision the base box:

* RVM (multi-user installation)
* Ruby 1.9.3
* Rails 3.2.x

Port 3000 on the VM is forwarded to port 3000 on the host for access to Rails applications running on the VM.

## Installation

    host $ mkdir myproject && cd myproject
    host $ git clone https://github.com/psteiner/dev-box.git
    host $ cd dev-box
    host $ vagrant up

If the base box is not present on the host machine Vagrant will download it first.

## Requirements

* [VirtualBox](https://www.virtualbox.org)
* [Vagrant](http://vagrantup.com)



# TODO
Add dependencies for puppet modules, perhaps using librarian-puppet
