name             'cq_agent'
maintainer       'Jakub Wadolowski, Karol Drazek'
maintainer_email 'jakub.wadolowski@cognifide.com, karol.drazek@cognifide.com'
license          'Apache 2.0'
description      'Installs/Configures cq and agents'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '1.0.0'

depends          'chef-sugar', '~> 2.4.1'
depends          'java', '= 1.28.0'
depends          'ulimit', '= 0.3.2'
depends          'cq-unix-toolkit', '= 1.2.0'