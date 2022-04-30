a = int (input ('input a:'))
b = int (input ('input b:'))
sum = 0

for i in range(a, b+1):
    k = 2
    if i >= 2:
        while i % k != 0:
            k +=1
        if i==k:
            print(i)
            sum += i

print(sum)