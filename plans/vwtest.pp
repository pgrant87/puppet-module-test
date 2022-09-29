plan redwoodtest::vwtest ($targets) {
  notice("This is a test")
  return run_task('facter_task', $targets)
}
