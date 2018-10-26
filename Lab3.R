write.csv(airquality, file = "airquality.csv")
write.table(airquality, file = "airquality.rds")
write_xlsx(airquality, path = tempfile(fileext = "airquality.xlsx"), col_names = TRUE)
write.csv(airquality, file = gzfile("airquality.csv.gz"))

names<-c("Sophia Abbe", "Olivia Abbett", "Emma Abbey", "Ava Abbitt", "Isabella Abbot", "Mia Abbott", "Aria Abbs", "Riley Abby", "Zoe Abdon", "Amelia Able", "Layla Abner", "Charlotte Abney", "Aubrey Aborn", "Lily Abrahams", "Chloe Abram", "Harper Abram", "Evelyn Ace", "Adalyn Acey", "Emily Acker", "Abigail Ackerley", "Madison Ackerly", "Aaliyah Ackerman", "Avery Ackers", "Ella Ackert", "Scarlett Ackland", "Maya Ackland", "Mila Ackley", "Nora Acklin", "Camilla Ackroyd", "Arianna Acock", "Eliana Acomb", "Hannah Acomb", "Leah Acors", "Ellie Acre", "Kaylee Acreman", "Kinsley Acres", "Hailey Acton", "Madelyn Acuff", "Paisley Acy", "Elizabeth Adams", "Addison Adcock", "Isabelle Adcox", "Anna Addams", "Sarah Adderley", "Brooklyn Adderly", "Mackenzie Addicott", "Victoria Addington", "Luna Addy", "Penelope Ade", "Grace Ades")
nam <- str_split(names, pattern = fixed(" "), simplify = TRUE)
n <- nam [,1]
n2 <- nam [,2]
letters <- str_sub(n, 1, 1)
split_names <- str_c(letters, n2, sep = ". ")
split_names
a <- str_sub(split_names, -1, -1)
str_count(a, pattern = "a")
str_count(a, pattern = "h")
str_count(a, pattern = "s")
str_count(a, pattern = "e")

d1 <- "January 1, 2010"
d2 <- "2015-Mar-07"
d3 <- "06-Jun-2017"
d4 <- c("August 19 (2015)", "July 1 (2015)")
d5 <- "12/30/14" # Dec 30, 2014

a1 <- mdy(d1)
a1
a2 <- ymd(d2)
a2
a3 <- dmy(d3)
a3
a4 <- mdy(d4)
a4
a5 <- mdy(d5)
a5

wday(mdy("3/1/1998"), label = TRUE, abbr = FALSE)
wday(mdy("3/1/2038"), label = TRUE, abbr = FALSE)
my_age <- today() - ymd("1998-Mar-01")
my_age
as.duration(my_age)
