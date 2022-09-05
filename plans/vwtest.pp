plan vwtest(TargetSpec $targets) {
  # This collects facts on targets and updates the inventory
  run_plan('facts', 'targets' => $targets)
}
