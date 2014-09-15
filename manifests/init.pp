class win-tomcat {

  exec { 'run-win-tomcat.rb':
  command => '/opt/puppet/bin/ruby /etc/puppetlabs/puppet/modules/win-tomcat/manifests/win-tomcat.rb',
  }
}

