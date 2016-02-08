#
# Cookbook Name:: rserve
# Recipe:: default
#
# Free to distribute
#


# Install the R packages from the base Centos and EPEL repositories.
%w{openssl-devel openssl R R-devel screen}.each do |package|
	yum_package package
end


# Tell R to build the rserve package
#R <<< "install.packages('Rserve',,'http://www.rforge.net/')" --no-save
bash 'Install Rserve package' do
	code <<-EOH
R <<< "install.packages('Rserve',,'http://www.rforge.net/')" --no-save
EOH
	notifies "create", "ruby_block[rserve-setup-complete]"
	not_if { node.attribute?("rserve-setup-complete") }
end


# Setup a script that starts rserve
template '/var/startServer.R' do
  path "/var/startServer.R"
  source 'startServer.R.erb'
  owner 'root'
  group 'root'
  mode '0755'
end


# service template
template "rserve.erb" do
  path "/etc/init.d/rserve"
  source "rserve.erb"
  owner "root"
  group "root"
  mode "0755"
  notifies :enable, "service[rserve]"
  notifies :start, "service[rserve]"
end

# create user for service
user 'rserve' do
  comment 'rserve daemon'
end



# Setup the init script for the rserve service
service "rserve" do
  supports :restart => true, :start => true, :stop => true, :reload => true
  action [ :enable, :start]
end 

# Set rserve-setup-complete flag on node
ruby_block "rserve-setup-complete" do
	block do
		node.set['rserve-setup-complete'] = true
		node.save
	end
	action :run
end

