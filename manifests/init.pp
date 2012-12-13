class rvm_box {
  $ruby_version = $::ruby_version

  Exec {
    path => "/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"
  }

  include rvm

  rvm::system_user { ubuntu: ; www-data: ; }

  rvm_system_ruby {
    "$ruby_version":
      ensure => 'present',
      default_use => true;
  }

}
