#
# Cookbook Name:: trip-planner-client
# Recipe:: deploy
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

# Install npm modules
execute 'install npm modules' do
  command "npm install"
  cwd ::File.join(node["trip-planner-client"]["deploy_to"], 'current')
end

# build static resources
execute 'build static resources' do
  command "gulp build"
  cwd ::File.join(node["trip-planner-client"]["deploy_to"], 'current')
end
