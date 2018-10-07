class package_installation{
  $pkgname = [ 'screen' , 'strace' , 'sudo' ]

package { $pkgname:
  ensure => absent,
     }
}
include package_installation
