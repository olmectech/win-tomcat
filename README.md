# tomcat

This module unzips the Tomcat package and starts the service. Configuration information
will be required to completed this module.

- class win-tomcat {

  - exec { 'run-win-tomcat.rb':
  - command => '/opt/puppet/bin/ruby /etc/puppetlabs/puppet/modules/win-tomcat/manifests/win-tomcat.rb',
  - }
- }
