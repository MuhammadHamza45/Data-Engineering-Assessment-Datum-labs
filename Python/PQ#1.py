# replace None values with the previous non-None value

def ReplaceNoneValue (ls):
    preVal = None
    for i in range(len(ls)):
        if ls[i] == None:
            ls[i] = preVal
            preVal = ls[i]
        else:
            preVal = ls[i]
    return ls

ls = [1, None, 1, 2, None]
ls = ReplaceNoneValue(ls)
print(ls)
