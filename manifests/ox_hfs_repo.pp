class ox_local_repo::ox_hfs_repo ( $ox_hfs_priority = $ox_local_repo::params::ox_hfs_priority,
                                   $ox_hfs_enabled = $ox_local_repo::params::ox_hfs_enabled
) inherits ox_local_repo::params {
 
  case $::operatingsystem { 
      default : {} 
      /Scientific/, /CentOS/: {
	  case $::operatingsystemmajrelease { 
	      /6/ : { $stream = "rhel6" }
	      /7/ : { $stream = "current" }
	  }
      }   
  }
  yumbase::ai121yumrepo {
    "OX-HFS":
            descr => "TSM client software for the IT Services HFS service",
            baseurl => "http://downloads.hfs.ox.ac.uk/repo/rpm/streams/${stream}",
            priority => "${ox_hfs_priority}",
            gpgcheck => '0',
            gpgkey => 'absent',
            enabled => $ox_hfs_enabled ? {
              true => "1",
              false => "0"
            };
            
     }
  
  
}
