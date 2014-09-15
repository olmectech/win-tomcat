#!/usr/bin/env ruby
#
# This program downloads a package and untars it.
#

require 'yaml'


class Getfile 

class_variable_set(:@@test, 'C:\ProgramData\chocolatey\bin\wget.exe http://mirrors.axint.net/apache/tomcat/tomcat-7/v7.0.42/bin/apache-tomcat-7.0.42-windows-x64.zip')
class_variable_set(:@@install, '7z x apache-tomcat-7.0.42-windows.x64.zip -oc:\soft *.cpp -r')
class_variable_set(:@@remove, 'C:\Users\vagrant\Documents\usr\local\wbin\rm.exe apache-tomcat*')
class_variable_set(:@@dir, 'C:\Users\vagrant\Documents\apache-tomcat-7.0.42-windows.x64.zip')

 def download_file
%x[#{@@test}]
  end

def install_file
%x[#{@@install}]
end

#def remove_file
#%x[#{@@remove}]
#end

if Dir.exists?("#{@@dir}") 
#exec 'Test-Path("#{@@dir}")' 
puts "Directory #{@@dir} exists. Exiting program."
else
o = Getfile.new
o.download_file
o.install_file
#o.remove_file
end
end
