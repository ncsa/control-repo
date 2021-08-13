# @summary log_collector role

class role::log_collector {

  include ::profile::base
  include ::profile_rsyslog::collector

}
