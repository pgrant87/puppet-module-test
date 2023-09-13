class redwoodtest {

vcsrepo { '/root/airbyte':
  ensure   => present,
  provider => git,
  source   => 'https://github.com/airbytehq/airbyte.git',
}

}
