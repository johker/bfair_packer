bfair_packer
============

Packer templates for production / development environments based on Ubuntu Server 12.04 LTS. References the puppet scripts of *bfair_vagrant_puppet* project. 
MongoDB and Puppet are provided by shell scripts. The following templates are contained: 


* aws-full-provisioning.json: Runs AWS builder with shell scripts and puppet.
* aws-vagrant.json: Runs AWS builder with vagrant post-processor and shell provisioning. Should create a box file that can be deployed by Vagrant (currently not working)
* vbox-vagrant.json: Runs VirtualBox builder with vagrant post-processor and shell provisioning. Serves as development environment


Production
----
 
 Starts AWS deployment: 
 
 ```sh
packer build -var-file=packerconfig.json aws-full-provisioning.json
```


Development
----
 
 Starts generating the Vagrant box: 
 
 ```sh
packer build -var-file=packerconfig.json vbox-vagrant.json
```