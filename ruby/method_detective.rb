# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

"iNvEsTiGaTiOn".swapcase
# => “InVeStIgAtIoN”

"zom".sub(/[o]/,'oo')
"zom".gsub(/aeiou/,'oo')
# => “zoom”

"enhance".center("enhance".length+4)
"enhance".ljust("enhance".length+4).rjust("enhance".length+4)
# => "    enhance    "

 "Stop! You’re under arrest!".upcase
# => "STOP! YOU’RE UNDER ARREST!"

# "the usual".<???>
"the usual".insert(9, " suspects")
"the usual".concat(" suspects")
#=> "the usual suspects"

" suspects".prepend("the usual")
" suspects".insert(0, "the usual")
# => "the usual suspects"

"The case of the disappearing last letter".chomp('r')
"The case of the disappearing last letter".delete"r"

# => "The case of the disappearing last lette"

# "The mystery of the missing first letter".<???>
"The case of the disappearing last letter".delete"T"
"The case of the disappearing last letter".slice('he case of the disappearing last letter')
# => "he mystery of the missing first letter"


"Elementary,    my   dear        Watson!".split.join(" ")

# => "Elementary, my dear Watson!"

"z".ord
# => 122
# (What is the significance of the number 122 in relation to the character z?)

"How many times does the letter 'a' appear in this string?".count('a')
"How many times does the letter 'a' appear in this string?".scan(/a/).length
# => 4