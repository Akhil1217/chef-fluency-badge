
if node['platform_family'] == "rhel"
	package = "httpd"
elsif node['platform_family'] == "debian"
	package = "apache2"
end


package 'apache2' do
	package_name package
	action :install
end

service 'apache2' do
	service_name 'apache2'
	action [:start, :enable]
end

