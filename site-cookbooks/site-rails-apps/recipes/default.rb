#
# Cookbook Name:: site-unicorn
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

config_path = "/home/apps/#{node['rails_app']['app_name']}/shared/config"

directory config_path do
  owner "root"
  group "root"
  recursive true
end

template config_path + "/database.yml" do
  source "database.yml.erb"
  owner "root"
  group "root"
  mode "0644"
end

template config_path + "/secrets.yml" do
  source "secrets.yml.erb"
  owner "root"
  group "root"
  mode "0644"
end
