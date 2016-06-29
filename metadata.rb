name             'trip-planner-client'
maintainer       'Reiner Marquez'
maintainer_email 'rmarquez@zehnergroup.com'
license          'All rights reserved'
description      'Installs/Configures trip-planner-client'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'


depends 'apt', '= 2.9.2'
depends 'build-essential', '= 2.3.1'
depends 'nginx', '= 2.7.6'
depends 'nodejs', '= 2.4.2'
