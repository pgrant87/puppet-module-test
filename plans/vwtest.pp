plan redwoodtest::vwtest($targets) {
  return run_task('facter_task', $targets)
}