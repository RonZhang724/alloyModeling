one sig FSM {
  start: set State,
  stop: set State
}

sig State {
  transition: set State
}

// Part (a)
pred OneStartAndStop {
  // FSM only has one start state.
  -- TODO: Your code starts here.

  // FSM only has one stop state.
  -- TODO: Your code starts here.
}

// Part (b)
pred ValidStartAndStop() {
  // The start state is different from the stop state.
  -- TODO: Your code starts here.

  // No transition ends at the start state.
  -- TODO: Your code starts here.

  // No transition begins at the stop state.
  -- TODO: Your code starts here.
}

// Part (c)
pred Reachability() {
  // All states are reachable from the start state.
  -- TODO: Your code starts here.

  // The stop state is reachable from any state.
  -- TODO: Your code starts here.
}

pred RepOk() {
  OneStartAndStop
  ValidStartAndStop
  Reachability
}

run RepOk for 5
