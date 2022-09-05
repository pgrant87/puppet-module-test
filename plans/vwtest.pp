plan hello_world () {
  out::message('hello world')
}
#plan vwtest(TargetSpec $targets) {
  # This collects facts on targets and updates the inventory
#  run_task('facter_task', 'targets' => $targets)
#}
