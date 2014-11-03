# Class: ox_local_repo
#
# This module manages ox_local_repo
#
# Parameters: none
#
# Actions:
#
# Requires: see Modulefile
#
# Sample Usage:
#
class ox_local_repo inherits ox_local_repo::params {
  tag("repo")
  if $::osfamily == 'RedHat' {
  
  if $local_grid_enabled {
    include ox_local_repo::local_grid
  }
  if $local_lustre_client_enabled {
    include ox_local_repo::local_lustre_client
  }
  if $local_lustre_server_enabled {
    include ox_local_repo::local_lustre_server
  }
  if $local_base_enabled {
    include ox_local_repo::local_base
  }
} else {
   notice (" Your operating system ${::operatingsystem} will not have oxford-local repos installed")
 }
}
