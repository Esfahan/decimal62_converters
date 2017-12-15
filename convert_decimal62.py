alnum = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJELMNOPQRSTUVWXYZ"

def encode_decimal62(num, chars = alnum):
    base = len(chars)
    string = ""
    while True:
        string = chars[num % base] + string
        num = num // base
        if num == 0:
            break
    return string

def decode_decimal62(string, chars = alnum):
    base = len(chars)
    num = 0
    for char in string:
        num = num * base + chars.index(char)
    return num

print(encode_decimal62(0))
print(encode_decimal62(12345))

print(decode_decimal62('0'))
print(decode_decimal62('3d7'))


