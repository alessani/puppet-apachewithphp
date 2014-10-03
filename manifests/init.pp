class apachewithphp (
  $allow_from_ips = ["127.0.0.1", "79.38.81.17"]
) {

  class { 'apache':
    mpm_module => 'prefork',
    server_signature => 'Off',
    server_tokens => 'Prod'
  }

  class { 'apache::mod::status':
    allow_from => $allow_from_ips
  }
  
  class { 'apache::mod::php': }

}