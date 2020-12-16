#In code that doesn’t use stringr, you’ll often 
#see paste() and paste0(). What’s the difference
#between the two functions? What stringr function are 
#they equivalent to? How do the
#functions differ in their handling of NA?
x <- c("apple", "eggplant", "banana")
?paste()
paste("apple", NA, sep="-")
paste0("apple", NA)

#paste() take sep to sperate betwen strings
#paste0() dosent take sep
# it simmiler to str_replace_na(x,replacement= 'NA')
#the paste()and paste0()handel it like string 
# the str_replace_na() replace the NA with string 

#In your own words, describe the difference
#between the sep and collapse arguments to str_c().

#the sep you shose what sperate every string in the vector
#the collapse conctenat it like one big string


#Use str_length() and str_sub() to extract the middle character from a string.
#What will you do if the string has an even number of characters?
y <-c("abab")
str_length(y)
str_sub(y,str_length(y)/2,str_length(y)/2)
#it worked when the length is 4
y <-c("abcab")
str_length(y)
str_sub(y,ceiling(str_length(y)/2),ceiling(str_length(y)/2))
#when the lenght is 5 it didn,t i search they used ceiling function to 
#raound it to the 3 


#What does str_wrap() do? When might you want to use it?
c<-c("In code that doesn’t use stringr,you’ll often see paste() and paste0().What’s the difference between the two functions?")
str_wrap(c,width = 40, indent =2, exdent =5)
#could use str_wrap() for editing of documents etc.,
#setting width = 1  give each word its own line
#indent give the lins indent space 
#exdent space between sentences

#What does str_trim() do? What’s the opposite of str_trim()?
d<-c("   abab  ")
?str_trim()
str_trim(d)
str_trim(d,side = 'left')
#remove wight space 
#not sure what the opposite

#Write a function that turns (e.g.) a vector c("a", "b", "c") 
#into the string a, b, and c. Think carefully about what it should do 
#if given a vector of length 0, 1, or 2.
u <-function(x){
  
  if(length(x)<=2){
    x<- str_c(x,collapse =",")
    
  
  }
  if(length(x)>2){

         
  x<-str_c(x,collapse  =" and ")
 
  
  }
  x
  }
   

x<-c("a", "b", "c")
u(x)
# x[x(lengt)-1] didnot work

#Explain why each of these strings don’t match a \: "\", "\\", "\\\".
i<-"\apple"
writeLines(i)
# qout
i<-"\\apple"
writeLines(i)
#print\
i<-"\\\apple"
writeLines(i)
#print qout and \
i<-"\apple\\"
writeLines(i)
#close qout

#How would you match the sequence "'\?

i<-"'\'"
writeLines(i)
i<- "\\\"'\\\\"
writeLines(i)
x <- "alfred\"'\\goes"
str_view(x, "\\\"'\\\\")
i<-"\\\"'\\\\"
writeLines(i)
#iam not getting it
#What patterns will the regular expression \..\..\..
#match? How would you represent it as a string?
x <- c("alf.r.e.dd.ss..lsdf.d.kj")
str_view(x, pattern = "\\..\\..\\..")

#How would you match the literal string "$^$"?
x <- "so it goes $^$ here"
str_view(x, pattern ="\\$\\^\\$")

#Given the corpus of common words in stringr::words, create regular 
#expressions that find all words that:
#Start with “y”.
str_view(stringr::words, "^y", match = TRUE)

#End with “x”

str_view(stringr::words, "x$", match = TRUE)

#Are exactly three letters long. (Don’t cheat by using str_length()!)
str_view(stringr::words, "^...$", match = TRUE)

#Have seven letters or more.
str_view(stringr::words, "^........", match = TRUE)

#Create regular expressions to find all words that:

#Start with a vowel.
str_view(stringr::words, "^[aoieo]", match = TRUE)

#That only contain consonants. (Hint: thinking about matching “not”-vowels.)
str_view(stringr::words, "[aoieo]", match =F)

#End with ed, but not with eed.
str_view(stringr::words, "[^e]ed$", match =T)

#End with ing or ise.

str_view(stringr::words, "(ise|ing)$", match =T)
#Empirically verify the rule “i before e except after c”.
#not sure what this mean

#Is “q” always followed by a “u”?
str_view(stringr::words, "q[u]", match =T)
str_view(stringr::words, "q[^u]", match =T)






