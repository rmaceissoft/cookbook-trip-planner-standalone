#
# Cookbook Name:: trip-planner-client
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe "apt::default"
include_recipe "build-essential"

# Server Packages
["vim", "htop"].each do |pkg|
  package pkg do
    action :install
  end
end


include_recipe "trip-planner-client::nodejs"
include_recipe "trip-planner-client::nginx"
include_recipe "trip-planner-client::deploy"