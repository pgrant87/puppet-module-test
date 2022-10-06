class stdlibtest{

$myhash = {'test' => 'val'}

file { '/tmp/config.toml':
  ensure  => file,
  content => to_toml($myhash),
}

}
