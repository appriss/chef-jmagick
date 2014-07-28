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
	#Clients that have a /usr/local/lib64 dir should be 64-bit; otherwise fallback to /usr/local/lib
	if File.directory?("/usr/local/lib64")
		autoconf_opts ['--libdir=/usr/local/lib64']
	end
end




