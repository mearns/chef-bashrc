
include_recipe 'bmearns::homedir'

username = node['bmearns']['user']['name']
userhomedir = Dir.home(username)

template "#{userhomedir}/.gitconfig" do
    source 'gitconfig.erb'
    action :create_if_missing
end

template "#{userhomedir}/.gitignore-global" do
	source 'gitignore-global.erb'
	action :create_if_missing
end

