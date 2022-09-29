plan redwoodtest::vwtest ($targets) {
  $outside_apply = lookup('test_key')
  #$test = ${test_key}
  return "$outside_apply"
  #return run_task('facter_task', $targets)
}
