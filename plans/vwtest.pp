plan redwoodtest::vwtest ($targets) {
  $test = ${test_key}
  return "$test"
  #return run_task('facter_task', $targets)
}
