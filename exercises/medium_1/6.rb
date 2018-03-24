=begin
Group 1

A Proc​ object is created with the key word proc, and then a block.
Calling to_s on a Proc object returns the object’s class name (Proc), an encoding of its object id, the file in which it was created, and the line on which it was created.
A Proc object can be called using the #call method.
A Proc object may be passed a parameter, but does not care if no argument is passed even if it has a parameter to receive one. If nothing is passed to it, nil is assigned to the block variable.


Group 2

A lambda is created using the lambda keyword or ->.
A lambda is a Proc object.
Calling to_s on a lambda results in a similar display as a Proc object, however it also includes (lambda) at the end.
A lambda requires the correct number of arguments be passed to it, or it will throw an ArgumentError​
​You cannot create a lambda using Lambda.new, as there is no Lambda class.


Group 3

If a method yields to a block and no block is given upon implementation, we will get a LocalJumpError​

Group 4

A block does not require the correct number of arguments be passed to it. 
A block must have parameters for any arguments that are passed to it.
