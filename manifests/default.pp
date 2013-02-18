$rubyver = 'ruby-1.9.3-p385'
Exec {
  path => "/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"
}

stage {
  'preinstall':
    before => Stage['main']
}

class apt_get_update {
  exec { 'apt-get -y update':
    unless => "test -e /usr/local/rvm"
  }
}

class { 'apt_get_update':
  stage => preinstall
}

import "nodes.pp"

rvm::system_user { vagrant:; }

rvm_system_ruby {
  'ruby-1.9.3-p385':
    ensure      => present,
    default_use => false;
}
rvm_gemset {
  'ruby-1.9.3-p385@site':
    ensure  => present,
    require => Rvm_system_ruby['ruby-1.9.3-p385'];
}
rvm_gem {
 'ruby-1.9.3-p385@site/bundler':
    ensure  => latest,
    require => Rvm_gemset['ruby-1.9.3-p385@site'];
}
rvm_gem {
 'ruby-1.9.3-p385@site/rails':
    ensure  => latest,
    require => Rvm_gemset['ruby-1.9.3-p385@site'];
}
