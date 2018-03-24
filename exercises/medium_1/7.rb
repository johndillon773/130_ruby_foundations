=begin

Group 1
If we return from a Proc, and that Proc is defined in a method, we immediately return from (exit) the method.

Group 2
If we return from a Proc, and that proc is defined outside a method but passed into a method and called, we get a LocalJumpError​.

Group 3
If we return from a lambda, and that lambda is defined in a method, the method continues to execute.

Group 4
If we return from a lambda, and that lambda is defined outside the method but passed into the method and called, the method continues to execute after the lambda call.

Group 5
If we return from a block, we get a LocalJumpError.