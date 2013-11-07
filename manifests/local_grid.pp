class ox_local_repo::local_grid inherits ox_local_repo::params {
  
  yumbase::ai121yumrepo {
    "Ox-local-grid":
            descr => "OX-local-grid ${operatingsystemmajrelease} base ",
            baseurl => "http://${local_grid_reposerver}/mirrors/oxford-local-grid/SL${operatingsystemmajrelease}/\$basearch",
            priority => "${local_grid_priority}",
            gpgcheck => '0',
            protect  => '1',
            gpgkey => 'absent',
            enabled => $local_grid_enabled ? {
              true => "1",
              false => "0"
            };
            
     }
  
  
}