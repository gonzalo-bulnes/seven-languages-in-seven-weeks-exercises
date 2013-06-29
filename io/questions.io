#!/usr/local/bin/io

# Evaluate 1 + 1 and then 1 + "one". Is Io strongly typed or weakly
# typed? Support your answer with code.

1 + 1
# ==> 2

1 + "one"
# Exception: argument 0 to method '+' must be a Number, not a 'Number'
# ---------
# message '+' in 'Command Line' on line 1


# Trying to change the "one" type does not succeed

"one" type
# ==> Sequence

1 type
# ==> Number

"one" type = 1 type
# ==> Number

1 + "one"
# Exception: argument 0 to method '+' must be a Number, not a 'Number'
# ---------
# message '+' in 'Command Line' on line 1

# Since...

1 type type
# ==> Sequence

"one" type
# ==> Number

"one" type type
# ==> Sequence

# I find a bit weird the distinction between Number and 'Number', yet
# I suppose the underlying C code is imposing it's strong typing.


# Is 0 true or false? What about the empty string? Is nil true or false?
# Support your answer with code.

# 0 and "" are true

0 or false
# ==> true

true and 0
# ==> true

"" or true
# ==> true

# nil is false

nil and true
# ==> false

# How can you tell what slots a prototype supports?

Vehicle := Object clone
Vehicle description := "Something which transports you to places"
Car := Vehicle clone

Car proto slotNames


# What is the difference between = (equals), := (colon equals), and ::=
# (colon colon equals)? When would you use each one?

# = assignment, can't be used with inexistent slots

"Hello" description = "A pne-word Sequence"
# Exception: Slot description not found. Must define slot using := operator before updating.
# ---------
# message 'updateSlot' in 'Command Line' on line 1

"Hello" asUppercase = "This is not the original asUppercase method!"
"Hello" asUppercase
# ==> "This is not the original asUppercase method!"

# := Creates a slot if necessary, assigns a value but doent create a setter (::= does)

"Hello" asSecretCode := "34523 23353"


# Run an Io program from a file. (See hello_world.io)


# Execute the code in a slot given its name.

Interpreter := Object clone
Interpreter code_name := method("Hello, Io." println)
Interpreter code_name
# ==> "Hello, Io."
