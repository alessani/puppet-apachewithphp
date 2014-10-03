class apachewithphp {

  class { 'apache':
    mpm_module => 'prefork',
    server_signature => 'Off',
    server_token => 'Prod'
  }

  class { 'apache::mod::status':
    allow_from => ["127.0.0.1", "79.38.81.17"]
  }
  
  class { 'apache::mod::php': }

}