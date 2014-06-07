template "/var/www/html/index.html" do
  source "vdd_help.html.erb"
  owner "vagrant"
  group "vagrant"
  mode 00644
  variables(
    :sites => node["vdd"]["sites"]
  )
end

bash "phpinfo" do
  code <<-EOH
  echo "<?php phpinfo();" > /var/www/html/phpinfo.php
  EOH
  not_if { File.exists?("/var/www/html/phpinfo.php") }
end
