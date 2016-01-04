
include_recipe 'bmearns::homedir'

username = node['bmearns']['user']['name']
userhomedir = Dir.home(username)

template "#{userhomedir}/.bashrc" do
	source 'bashrc.erb'
	action :create_if_missing
end

template "#{userhomedir}/.bash_profile" do
	source 'bash_profile.erb'
	action :create_if_missing
end
