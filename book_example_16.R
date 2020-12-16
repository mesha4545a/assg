library(tidyverse)

string1 <- "This is a string"
string2 <- 'If I want to include a "quote" inside a string, I use single quotes'
writeLines(string2)
x <- c("\"", "\\")
x
writeLines(x)

str_length(c("a", "R for data science", NA))
str_c("x", "y")

str_c("x", "y", "z")
str_c("x", "y", sep = "/// ")

x <- c("abc", NA)
str_c("|-", x, "-|")
str_replace_na(x,replacement= 'NA')

str_c("|-", str_replace_na(x), "-|")
#As shown above, str_c() is vectorised, and it automatically recycles 
#shorter vectors to the same length as the longest:(what it mean)

str_c("prefix-", c("a", "b", "c"), "-suffix")

name <- "Hadley"
time_of_day <- "morning"
birthday <- FALSE

str_c(
  "Good ", time_of_day, " ", name,
  if (birthday) " and HAPPY BIRTHDAY",
  "."
)
str_c(c("x", "y", "z"), collapse = "")

x <- c("Apple", "Banana", "Pear")
str_sub(x, 1, 3)

str_sub(x, -3, -1)

str_sub("a", 2, 5)
str_sub(x, 1, 1) <- str_to_lower(str_sub(x, 1, 1))
x
# Turkish has two i's: with and without a dot, and it
# has a different rule for capitalising them:
str_to_upper(c("i"))

str_to_upper(c("i"), locale = "tr")

?str_to_upper()
#14.2.4 Locales (whay tow sring?)
x <- c("apple", "eggplant", "banana")

str_sort(x, locale = "en")  # English


str_sort(x, locale = "haw") # Hawaiian
library("htmlwidgets")

x <- c("apple", "banana", "pear")
x
str_view(x, "an")
str_view(x, ".a.")
# To create the regular expression, we need \\
dot <- "\\."

# But the expression itself only contains one:
writeLines(dot)
#> \.

# And this tells R to look for an explicit .
str_view(c("abc", "a.c", "bef"), "a\\.c")
x <- "a\\b"
writeLines(x)
#> a\b

str_view(x, "\\\\")

x <- c("apple", "banana", "pear")
str_view(x, "^a")
str_view(x, "a$")

x <- c("apple pie", "apple", "apple cake")
str_view(x, "apple")
str_view(x, "^apple$")
# Look for a literal character that normally has special meaning in a regex
str_view(c("abc", "a.c", "a*c", "a c"), "a[.]c")
str_view(c("abc", "a.c", "a*c", "a c"), ".[*]c")
str_view(c("abc", "a.c", "a*c", "a c"), "a[ ]")
str_view(c("grey", "gray"), "gr(e|a)y")
