#
# Cookbook Name:: chef-growthforecast
# Recipe:: default
#
# Copyright 2012, Kentaro Kuribayashi
#

node['install_pkg'].each do |p|
  package p
end

execute "cpanm" do
  command "cpanm -n https://github.com/downloads/kazeburo/GrowthForecast/GrowthForecast-$VERSION.tar.gz"
  action :run
end
