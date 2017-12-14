alnum <- '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJELMNOPQRSTUVWXYZ'

encode_decimal64 <- function(num, chars = alnum) {
    chars_list <- unlist(strsplit(chars, split = ""))

    str <- ''
    while(num != 0) {
        str = gsub(" ", "", paste(chars_list[num %% nchar(chars) + 1], str), fixed = TRUE)
        num = num - num %% nchar(chars)
        num = num / nchar(chars)
    }

    str
}

decode_decimal64 <- function(str, chars = alnum) {
    chars_list <- unlist(strsplit(chars, split = ""))
    str_list <- unlist(strsplit(str, split = ""))

    num <- 0
    for (char in str_list) {
        num = num * nchar(chars)
        num = num + which(chars_list == char) - 1
    }

    num
}


num <- 12345
str <- encode_decimal64(num)

print('# Encrypt to decimal62')
print(str)

res <- decode_decimal64(str)

print('# Decrypt to decimal10')
print(res)
