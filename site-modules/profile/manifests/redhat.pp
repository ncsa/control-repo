# Place to include any modules that are needed only on RedHat systems
class profile::redhat {

  # Include some modules based off specific operatingsystem distro (RHEL vs CentOS etc)
  case $facts['operatingsystem'] {
    'RedHat' : {
      include ::rhsm
    }
    default  : { } # do nothing
  }

  include ::yum

}
