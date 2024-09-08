# Write a function to find the key of the nth largest value in a dictionary. 

def NthLargestValueKeyFinder (inputDic, n):
    sortDic = sorted(inputDic.items(), key = lambda item: item[1], reverse = True)
    if n <= len(inputDic):
        return sortDic[n-1][0]
    else:
        return None

inputDic = {
    "a": 1, 
    "b": 2, 
    "c": 100, 
    "d": 30
}
n = 2
result = NthLargestValueKeyFinder(inputDic, n)
print(result)