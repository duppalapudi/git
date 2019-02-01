#
# Cookbook:: learn_chef
# Recipe:: motd
#
# Copyright:: 2019, The Authors, All Rights Reserved.
file '/home/vagrant/environment.txt' do
			action :create
			env = node['chef_environment']
			content "This node belongs to environment : #{env}\n"
		end 