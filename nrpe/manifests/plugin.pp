# @summary Installs additional plugins for NRPE
#
# @example Install a `check_mem` plugin from a file hosted in your `site` module
#  nrpe::plugin { 'check_mem':
#    ensure => present,
#    source => 'puppet:///modules/site/nrpe/check_mem',
#  }
#
# @param name
#   The name of the plugin.
# @param ensure
#   Whether to install or remove the plugin.
# @param content
#   Defines the actual content of the plugin file.  Should not be used in conjunction with `source`.
# @param source
#   Defines the source of the plugin file. Should not be used in conjunction with `content`.
define nrpe::plugin (
  Enum['present', 'absent']    $ensure  = present,
  Optional[String[1]]          $content = undef,
  Optional[Stdlib::Filesource] $source  = undef,
) {
  include nrpe

  if $ensure == 'present' {
    if $content and $source { fail('Use one of `content` or `source`, not both') }
    unless $content or $source { fail('One of `content` or `source` should be specified') }
  }

  file { "${nrpe::params::libdir}/${title}":
    ensure  => $ensure,
    content => $content,
    source  => $source,
    owner   => 'root',
    group   => $nrpe::params::nrpe_files_group,
    mode    => $nrpe::params::nrpe_plugin_file_mode,
  }
}
