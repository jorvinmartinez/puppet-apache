# @summary A short summary of the purpose of this class
#   Operating System-related varialbes and others
class apache::params {
  $install_ensure = 'present'
  case $::osfamily {
    'Redhat': {
      $install_name = 'httpd'
      }
      'Debian': {
        $install_name = 'apache2'
      }
    }
}
