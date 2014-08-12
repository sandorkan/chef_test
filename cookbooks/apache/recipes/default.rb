#
# Cookbook Name:: apache
# Recipe:: default
#
# Copyright 2014, ICCLAB
#
# All rights not reserved - Do Redistribute
#

# chef-repo/cookbooks/apache/recipes/default.rb

# Steps that have to be completed (Part of Demo Webcast)
# 1. Install Apache webserver
# 2. Start the apache service
# 3. Make sure that the service starts on reboot
# 4. Write out home page

package_name = "apache2"
service_name = "apache2"
document_root = "/var/www"

if node["platform"] == "centos"
  package_name = "httpd"
  service_name = "httpd"
  document_root = "/var/www/html"
end

package package_name do
	action :install 
end

service service_name do
	action [:start, :enable]
end

template "#{document_root}/index.html" do
  source "index.html.erb"
  mode "0644"
end

# cookbook_file "#{document_root}/index.html" do
#   source "index.html"
#   mode "0644"
# end