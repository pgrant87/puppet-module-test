class redwoodtest {

vcsrepo { '/root/airbyte':
  ensure   => present,
  provider => git,
  source   => 'git@github.com:airbytehq/airbyte.git',
}

}
