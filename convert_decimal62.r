encode_decimal62 <- function(num, chars=c(0:9, letters, LETTERS)) {
    base <- length(chars)
    str <- NULL
    repeat {
        str <- c(chars[num %% base+1], str)
        num <- num %/% base
        if (num == 0) {
            break
        }
    }
    paste(str, collapse="")
}

decode_decimal62 <- function(str, chars=c(0:9, letters, LETTERS)) {
    base <- length(chars)
    str_list <- unlist(strsplit(str, split = ""))
    num <- 0
    for (char in str_list) {
        num <- num * base + which(chars == char) - 1
    }
    num
}

encode_decimal62(0)
encode_decimal62(12345)

decode_decimal62("0")
decode_decimal62("3d7")
