class ox_local_repo::local_lustre_client 
#($local_lustre_client_reposerver = $ox_local_repo::params::local_lustre_client_reposerver,
#$local_lustre_client_enabled =  $ox_local_repo::params::local_lustre_client_enabled,
#$local_lustre_client_priority =  $ox_local_repo::params::local_lustre_client_priority,
#)
inherits ox_local_repo::params {

  yumbase::ai121yumrepo {
    "Ox-local-lustre-client":
            descr => "Ox-local-lustre-client ${operatingsystemmajrelease} base ",
            baseurl => "http://${local_lustre_client_reposerver}/mirrors/oxford-local-lustre-client-2_1/el${operatingsystemmajrelease}/client/RPMS/\$basearch",
            priority => "${local_lustre_client_priority}",
            gpgcheck => '0',
            protect  => '1',
            gpgkey => 'absent',
            enabled => $local_lustre_client_enabled ? {
              true => "1",
              false => "0"
            };
            
     }
  
  
}
