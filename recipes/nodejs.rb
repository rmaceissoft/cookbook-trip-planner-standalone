#
# Cookbook Name:: trip-planner-client
# Recipe:: nodejs
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe "nodejs::nodejs_from_source"
include_recipe "nodejs::npm"

# Install Global NPM modules
node["trip-planner-client"]["npm"]["packages"].each do |package|
  nodejs_npm package
end
