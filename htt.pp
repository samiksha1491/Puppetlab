class hhtpinstall {

  $pckgname = 'httpd'
  $servicname = 'httpd'

package {$pckgname:
  ensure => present,
  notify => Service[$servicname],
       }

service {$servicname:
  ensure => true,
  enable => true,
      }
}
include hhtpinstall
