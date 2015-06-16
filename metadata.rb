name             'mysql_yum_repo'
maintainer       'Lopaka Delp'
maintainer_email 'lopaka@rightscale.com'
license          'Apache 2.0'
description      'Installs/Configures mysql_yum_repo'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

depends 'chef-sugar'

recipe 'mysql_yum_repo::default', 'Install mysql 5.5 from mysql repo'
