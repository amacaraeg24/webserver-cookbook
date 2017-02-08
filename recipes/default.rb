#
# Cookbook Name:: webserver
# Recipe:: default
#

package "httpd24" do
  action :install
end

service "httpd" do
  action [:start, :enable]
end

cookbook_file "/var/www/html/index.html" do
  source 'index.html'
  mode 0644
end
