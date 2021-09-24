import collections

_ = input()
magazineDict = collections.Counter(input().split())
noteDict = collections.Counter(input().split())

if noteDict - magazineDict == {}:
    print("Yes")
else:
    print("No")

# _ = input()
# magazine, note = input().split(), input().split()

# magazineDict = {}
# noteDict = {}

# for key in set(magazine):
#     magazineDict[key] = magazine.count(key)

# for key in set(note):
#     noteDict[key] = note.count(key)

# isNoteCanForm = "Yes"
# if set(note).issubset(set(magazine)):
#     for k,v in noteDict.items():
#         if noteDict[k] > magazineDict[k]:
#             isNoteCanForm= "No"
# else:
#     isNoteCanForm= "No" 

# print(isNoteCanForm)
            
        
