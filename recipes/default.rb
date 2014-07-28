#
# Cookbook Name:: jmagick
# Recipe:: default
#
# Copyright 2014, Appriss, Inc.
#

include_recipe "imagemagick::devel"
include_recipe "build-essential"

include_recipe "java"

execute "Test Java Version" do
	command ". /etc/profile; java -version >/tmp/version.out"
end


