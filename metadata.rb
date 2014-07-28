name             'jmagick'
maintainer       'Appriss'
maintainer_email 'dpantke@appriss.com'
license          'Apache 2.0'
description      'Installs/Configures jmagick'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

recipe "jmagick", "Installs the JMagick library."

depends "imagemagick"
depends "build-essential"


