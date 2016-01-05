
#Need to make sure the user and their home directory exists.
include_recipe 'bmearns::create_user'
include_recipe 'bmearns::homedir'

package 'bash'

username = node['bmearns']['user']['name']
userhomedir = node['bmearns']['user']['homedir']

#Update the user to set the shell
user username do
    shell '/bin/bash'
    action :modify
end

template "#{userhomedir}/.bashrc" do
    source 'bashrc.erb'
    action :create_if_missing
end

template "#{userhomedir}/.bash_profile" do
    source 'bash_profile.erb'
    action :create_if_missing
end
