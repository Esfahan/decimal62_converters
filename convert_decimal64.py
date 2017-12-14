alnum = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJELMNOPQRSTUVWXYZ"

def encode_decimal64(num, chars = alnum):
  str = ""
  while num != 0:
    str = chars[num % len(chars)] + str
    num = num - num % len(chars)
    num = num / len(chars)
  return str

def decode_decimal64(string, chars = alnum):
  num = 0
  for char in string:
    num = num * len(chars)
    num = num + chars.index(char)
  return num


num = 12345
string = encode_decimal64(num)

print('# Encrypt to decimal62')
print(string)

print('# Decrypt to decimal10')
print(decode_decimal64(string))


