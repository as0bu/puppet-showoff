$packages = ['ruby','ruby-dev','build-essential','libxml2-dev','libxslt-dev','zlib1g-dev']

package { $packages:
  ensure => present
}

package { 'showoff':
  ensure => present,
  provider => 'gem',
  require => Package[$packages],
}
