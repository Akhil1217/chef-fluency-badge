package 'apache2' do
	action :install
end

service 'apache2' do
	service_name 'apache2'
	action [:start, :enable]
end

