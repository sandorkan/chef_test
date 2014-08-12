name "webserver"
description "Apache Webservers"
run_list "recipe[icclab]", "recipe[apache]"
default_attributes({
  "company" => "ICCLABORATORY"
})