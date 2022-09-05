plan run_with_facts(TargetSpec $targets) {
  # This collects facts on targets and updates the inventory
  run_plan('facts', 'targets' => $targets)

}
