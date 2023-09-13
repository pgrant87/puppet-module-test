class redwoodtest {

vcsrepo { 'opt/src/airbyte':
  ensure   => present,
  provider => git,
  source   => 'https://github.com/airbytehq/airbyte.git',
}

}
