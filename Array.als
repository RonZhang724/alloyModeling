sig Element {}

one sig Array {
  // Maps indexes to elements of Element.
  i2e: Int -> Element,
  // Represents the length of the array.
  length: Int
}

// Assume all objects are in the array.
fact Reachable {
  Element = Array.i2e[Int]
}

// Part (a)
fact InBound {
  // All indexes should be greater than or equal to 0 and less than
  // the array length.
  -- TODO: Your code starts here.	
	all a : Array | a.i2e.Element >= 0 and a.i2e.Element < a.length
  // Array length should be greater than or equal to 0.
  -- TODO: Your code starts here.
	all a : Array | a.length >= 0
}

// Part (b)
pred NoConflict() {
  // Each index maps to at most one element.
  -- TODO: Your code starts here.
	all a : Array | lone a.i2e.Element and lone a.i2e[Int]
}

run NoConflict for 5
