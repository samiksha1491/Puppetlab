class package_installation {

   case $::osfamily {
        'redhat': {
                   $pkgname = [ 'screen', 'strace', 'sudo' ]
       }

	'Debian': {
	           $pkgname = [ 'screen', 'strace', 'sudo' ] 
       }
	default: {
	          $pkgname = [ 'screen' ] 
       }
	      
   }


 package { $pkgname:
   ensure => present,
         }
}
include package_installation
