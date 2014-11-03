class ox_local_repo::local_lustre_server inherits ox_local_repo::params {

  yumbase::ai121yumrepo {
    "Ox-local-lustre-server":
            descr => "OX-local-lustre-server ${operatingsystemmajrelease} base ",
            baseurl => "http://${local_lustre_server_reposerver}/mirrors/oxford-local-lustre-server-2_1/el${operatingsystemmajrelease}/server/RPMS/\$basearch",
            priority => "${local_lustre_server_priority}",
            gpgcheck => '0',
            protect  => '1',
            gpgkey => 'absent',
            enabled => $local_lustre_server_enabled ? {
              true => "1",
              false => "0"
            };
            
     }
  
  
}
