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
