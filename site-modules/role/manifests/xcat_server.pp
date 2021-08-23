# @summary Role xcat_server

class role::xcat_server {

  include ::profile::base
  include ::profile_xcat::master

}
