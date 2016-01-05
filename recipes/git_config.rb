
include_recipe 'bmearns::homedir'

username = node['bmearns']['user']['name']
userhomedir = node['bmearns']['user']['homedir']

template "#{userhomedir}/.gitconfig" do
    source 'gitconfig.erb'
    action :create_if_missing
end

template "#{userhomedir}/.gitignore-global" do
	source 'gitignore-global.erb'
	action :create_if_missing
end

