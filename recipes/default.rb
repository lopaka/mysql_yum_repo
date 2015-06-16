#
# Cookbook Name:: mysql_yum_repo
# Recipe:: default
#
# Copyright (C) 2015 YOUR_NAME
# 
# All rights reserved - Do Not Redistribute
#

include_recipe 'chef-sugar::default'

compile_time do
  cookbook_file 'mysql-community-release-el7-5.noarch.rpm' do
    path '/tmp/mysql-community-release-el7-5.noarch.rpm'
    action :create_if_missing
  end

  cookbook_file 'mysql-community.repo' do
    path '/etc/yum.repos.d/mysql-community.repo'
    action :create_if_missing
  end

  rpm_package 'mysql repository' do
    source '/tmp/mysql-community-release-el7-5.noarch.rpm'
    action :install
  end

  yum_package 'mysql-community-server'
end
