# Write a function that returns a list of words present in two strings that don't match in case. 

def MismatchedWordsFinder (str1, str2):
    ls1 = str1.split()
    ls2 = str2.split()
    resLs = []
    minLenght = min(len(ls1), len(ls2))
    for i in range(minLenght):
        if ls1[i].lower() == ls2[i].lower() and ls1[i] != ls2[i]:
            resLs.append(ls1[i])
            resLs.append(ls2[i])
    return resLs

str1 = "Datumlabs is an awesome place"
str2 = "Datumlabs.io Is an AWESOME place"
result = MismatchedWordsFinder (str1, str2)
print(result)