#
# Cookbook:: users
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

search(:users, "*:*").each do | data|
	user data["id"] do
		comment data["comment"]
		uid data["uid"]
		gid data["gid"]
		home data["home"]
		shell data["shell"]
		password data["password"]
		manage_home true
	end
end


include_recipe "users::groups"
