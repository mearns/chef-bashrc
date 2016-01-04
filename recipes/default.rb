
username = node['bashrc']['username']
userhomedir = Dir.home(username)

directory userhomedir do
	owner username
	group username
	mode '0755'
	action :create
end

template "#{userhomedir}/.bashrc" do
	source 'bashrc.erb'
end

template "#{userhomedir}/.bash_profile" do
	source 'bash_profile.erb'
end
