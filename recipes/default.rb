#
# Cookbook Name:: jmagick
# Recipe:: default
#
# Copyright 2014, Appriss, Inc.
#

include_recipe "imagemagick::devel"
include_recipe "build-essential"

include_recipe "java"

ark "jmagick" do
	url node['jmagick']['url']
	version node['jmagick']['version']
	action :install_with_make
end



