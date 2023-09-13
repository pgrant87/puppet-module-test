class redwoodtest {

vcsrepo { '/opt/src/airbyte:
  ensure   => present,
  provider => git,
  source   => 'git@github.com:airbytehq/airbyte.git',
}

}
