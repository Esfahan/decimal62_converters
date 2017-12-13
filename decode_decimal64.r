decode_decimal64 <- function(str) {
    chars <- '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJELMNOPQRSTUVWXYZ'
    chars_list <- unlist(strsplit(chars, split = ""))
    str_list <- unlist(strsplit(str, split = ""))

    num <- 0
    for (char in str_list) {
        num = num * nchar(chars)
        num = num + which(chars_list == char) - 1
    }

    num
}
