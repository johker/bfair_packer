bfair_packer
============

Packer templates for production / development based on Ubuntu Server 12.04 LTS. References the puppet scripts of *bfair_vagrant_puppet* project. 
MongoDB and Puppet are provided by shell provisioning. The following templates are contained: 


* aws-full-provisioning.json: Runs AWS builder with shell scripts and puppet.
* aws-vagrant.json: Runs AWS builder with vagrant post-processor and shell provisioning 
* vbox-vagrant.json: Runs VirtualBox builder with vagrant post-processor and shell provisioning. Serves as development environment


 