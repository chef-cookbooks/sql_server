# Test install of SQL Defaults

sql_server_install 'Install SQL' do
  sa_password node['sql_server']['server_sa_password']
  sysadmins node['sql_server']['sysadmins']
  action :install
end

include_recipe 'sql_server::configure'
