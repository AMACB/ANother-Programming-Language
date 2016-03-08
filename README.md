ANother-Programming-Language, by AMACB
======================================
(see LICENSE for copyright information)

A stack-based language intended for code golfing.

The Basics
==========

"string" - pushes "string" to the stack (also sets target to this index)
number - sets the target to the numberth index
(less than) < - shift the stack over to the left by one (i.e. index 2 becomes 1, 1 becomes 0, 0 becomes length(stack)...)
(greater than) > - shift the stack over to the right by one (i.e. index length(stack) becomes 0, 0 becomes 1, 1 becomes 2...)
x - pop the target off the stack
r - reverse target
u - upcase target
d - downcase target
e - expand string (i.e. split string into chars; e.g. ["abc"] becomes ["a","b","c"])
v - evaluate target
l - length of target
n - number of elements in the stack
s - convert to string
p - print target
number="string" - set index number to string

By default, the program prints the target at the end

Example
=======

INPUT:  
"hi"rpu

OUTPUT:  
ih
IH

