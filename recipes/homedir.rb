include_recipe 'bmearns::create_user'

username = node['bmearns']['user']['name']
userhomedir = node['bmearns']['user']['homedir']

directory userhomedir do
	owner username
	group username
	mode '0755'
	action :create
	recursive true
end

