package 'Install tree' do
  package_name 'tree'
end  

package 'Install ntp' do
  package_name 'ntp'
end

package 'Install git' do
  package_name 'git'
end

package 'Install EPEL' do
 package_name 'epel-release'
end

package 'figlet'

file '/etc/motd' do
  content 'Modified by chef recipe
'
  owner 'root'
  group 'root'
end
