# Place to include any modules that are needed only on RedHat systems
class profile::redhat {

  # Include some modules based off specific operatingsystem distro (RHEL vs CentOS etc)
  case $facts['operatingsystem'] {
    'RedHat' : {
      include ::rhsm
      Class['profile::redhat'] -> Class['rhsm'] -> Class['yum'] -> Class['profile_additional_packages']
    }
    default  : {
      Class['profile::redhat'] -> Class['yum'] -> Class['profile_additional_packages']
    }
  }

  include ::yum

}
