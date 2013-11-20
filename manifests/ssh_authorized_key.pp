define account::ssh_authorized_key (
  $ensure   = present,
  $type     = 'ssh-rsa',
  $user,
  $key,
  $options  = undef,
  $provider = undef,
  $target   = undef,
) {
  ssh_authorized_key { $name:
    ensure    => $ensure,
    type      => $type,
    name      => $name,
    user      => $user,
    key       => $key,
    options   => $options,
    provider  => $provider,
    target    => $target,
    require   => File["${user}_sshdir"]
  }
}