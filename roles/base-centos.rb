name "base-centos"
description "Base role for centos servers"
run_list "recipe[chef-client::cron]"