#
# Cookbook Name:: trip-planner-client
# Recipe:: nginx
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'nginx'

template "/etc/nginx/sites-available/#{node["trip-planner-client"]["app_name"]}" do
  #source is an attribute of template resource.
  #Here we source one of the following erb files based on isProd boolean
  source "nginx_site_template.erb"
  owner "root"
  group "root"
  mode 00644
  variables(
    :app_name => node["trip-planner-client"]["app_name"],
    :server_name => node["trip-planner-client"]["server_name"],
    :public_dir => ::File.join( node["trip-planner-client"]["deploy_to"], 'current' ),
  )
  action :create
end

link "/etc/nginx/sites-enabled/#{node["trip-planner-client"]["app_name"]}" do
  to "/etc/nginx/sites-available/#{node["trip-planner-client"]["app_name"]}"
  owner "root"
  group "root"
  action :create
end

# Restart Nginx
service "nginx" do
  action :restart
end
