class ox_local_repo::local_base inherits ox_local_repo::params {

  yumbase::ai121yumrepo {
    "Ox-local-base":
            descr => "Ox-local base ${operatingsystemmajrelease} base ",
            baseurl => "http://${local_base_reposerver}/mirrors/oxford-local/el${operatingsystemmajrelease}/\$basearch",
            priority => "${local_base_priority}",
            gpgcheck => '0',
            protect  => '1',
            gpgkey => 'absent',
            enabled => $local_base_enabled ? {
              true => "1",
              false => "0"
            };
            
     }
  
  
}
