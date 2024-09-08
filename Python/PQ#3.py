# Create a function to count the occurrences of a specific character in a string.

def CharFrequencyCounter (inputStr, countChar):
    occurrences = inputStr.count(countChar)
    return occurrences

inputStr = "mississippi"
countChar = "s"
print(CharFrequencyCounter(inputStr, countChar))