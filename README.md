# r-decode_decimal64
Decode decimal64 to decimal10

## Usage

```
decimal10 = 12345
decimal62 = 3d7
```

### Rscript

```
$ Rscript decode_decimal64.r
[1] "# Encrypt to decimal62"
[1] "3d7"
[1] "# Decrypt to decimal10"
[1] 12345
```

### Python

```
$ python convert_decimal64.py
# Encrypt to decimal62
3d7
# Decrypt to decimal10
12345
```

### Java

```
$ java Decimal62Converter
# Encrypt to decimal62
3d7
# Decrypt to decimal10
12345
```
