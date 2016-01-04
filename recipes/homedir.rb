include_recipe 'bmearns::create_user'

username = node['bmearns']['user']['name']
userhomedir = Dir.home(username)

directory userhomedir do
	owner username
	group username
	mode '0755'
	action :create
end

