# Instantiate a StringBuilder object
$Sb = New-Object -TypeName System.Text.StringBuilder

# Add some test to the $Sb object
$Sb.Append("Start of my cool new string")
$Sb.Append("`n")
$Sb.Append("More Greatness to this string! `n")
$Sb.Append("And yet more")

# Now view the final string
$Sb.ToString()


There are a number of other methods in the StringBuilder class for you to play with.

## Optimizing StringBuilder Method Output

A small issue you may find is that each time you use the `Append` method (and others!), StringBuilder returns a StringBuilder object which PowerShell renders to the console.
This can create a lot of unhelpful output if you use it in a script.
To avoid this, you can piping the results to `Out-Null` or by casting to [void], as follows:



There are a number of other methods in the StringBuilder class for you to play with.

## Optimizing StringBuilder Method Output

A small issue you may find is that each time you use the `Append` method (and others!), StringBuilder returns a StringBuilder object which PowerShell renders to the console.
This can create a lot of unhelpful output if you use it in a script.
To avoid this, you can piping the results to `Out-Null` or by casting to [void], as follows:



There are a number of other methods in the StringBuilder class for you to play with.

## Optimizing StringBuilder Method Output

A small issue you may find is that each time you use the `Append` method (and others!), StringBuilder returns a StringBuilder object which PowerShell renders to the console.
This can create a lot of unhelpful output if you use it in a script.
To avoid this, you can piping the results to `Out-Null` or by casting to [void], as follows:



There are a number of other methods in the StringBuilder class for you to play with.

## Optimizing StringBuilder Method Output

A small issue you may find is that each time you use the `Append` method (and others!), StringBuilder returns a StringBuilder object which PowerShell renders to the console.
This can create a lot of unhelpful output if you use it in a script.
To avoid this, you can piping the results to `Out-Null` or by casting to [void], as follows:


# Instantiate a StringBuilder object
$Sb = New-Object -TypeName System.Text.StringBuilder

# Add some test to the $Sb object
$Sb.Append("Start of my cool new string")
$Sb.Append("`n")
$Sb.Append("More Greatness to this string! `n")
$Sb.Append("And yet more")

# Now view the final string
$Sb.ToString()

# Instantiate a StringBuilder object
$Sb = New-Object -TypeName System.Text.StringBuilder

# Add some test to the $Sb object
$Sb.Append("Start of my cool new string")
$Sb.Append("`n")
$Sb.Append("More Greatness to this string! `n")
$Sb.Append("And yet more")

# Now view the final string
$Sb.ToString()

# Instantiate a StringBuilder object
$Sb = New-Object -TypeName System.Text.StringBuilder

# Add some test to the $Sb object
$Sb.Append("Start of my cool new string`n")
$Sb.Append("More Greatness to this string!`n")
$Sb.Append("And yet more")

# Now view the final string
$Sb.ToString()

#  Expected output from this fragment
#  Capacity MaxCapacity Length
#  -------- ----------- ------
#        32  2147483647     28
#        64  2147483647     60
#       128  2147483647     72
#  Start of my cool new string
#  More Greatness to this string!
#  And yet more
