
package { 'unzip': ensure => 'present'} ->
package { 'net-tools': ensure => 'present'} ->

class { '::vault':
  backend => {
    'file' => {
      'path' => '/tmp',
    }
  },
  listener => {
    'tcp' => {
      'address' => '0.0.0.0:8200',
      'tls_disable' => 1,
    }
  }
}
