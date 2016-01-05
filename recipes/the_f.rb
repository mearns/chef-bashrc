include_recipe 'python'

python_pip "thefuck"

username = node['bmearns']['user']['name']
userhomedir = node['bmearns']['user']['homedir']

#Install custom rules.
remote_directory "#{userhomedir}/.thefuck/rules" do
    source 'the_f/rules'
    owner username
    group username
    mode '0755'
    recursive true
    action :create
end



