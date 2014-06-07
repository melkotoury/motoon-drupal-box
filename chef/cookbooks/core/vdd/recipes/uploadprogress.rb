directory "/etc/php5/conf.d" do
  owner "root"
  group "root"
  mode 00644
  action :create
end

php_pear "uploadprogress" do
  action :install
end
