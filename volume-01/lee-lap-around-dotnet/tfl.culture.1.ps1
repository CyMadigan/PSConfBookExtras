
# Create two culture information objects
# We use a hash table to spat the arguments to simplify layout ion this book.
$HT = @{}
$HT.Typename     = 'System.Globalization.CultureInfo'
$HT.ArgumentList = 'en-GB'

# Create UK culture object and display it
$UKCulture = New-Object @HT
$UkCulture

# Now create a Swedish culture object and display it
$HT.ArgumentList = 'sv'
$SeCulture = New-Object @HT
$SeCulture

#  Expected output from this fragment
#
#  LCID             Name             DisplayName
#  ----             ----             -----------
#  2057             en-GB            English (United Kingdom)
#
#  LCID             Name             DisplayName
#  ----             ----             -----------
#  29               sv               Swedish

