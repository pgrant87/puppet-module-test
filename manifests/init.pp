class redwoodtest {

file { '/etc/test.txt':
  source => [
    'puppet:///modules/redwoodtest/test.txt'
  ]
}

}
