class redwoodtest {

notify{"The value is: ${envtestvar}": }

$myhash = {'test' => 'val'}

file { '/tmp/config.toml':
  ensure  => file,
  content => to_toml($myhash),
}

}
