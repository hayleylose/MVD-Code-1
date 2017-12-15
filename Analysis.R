##Hayley Lose

##graphs from the text files
##focus on car registrations as compared against population
library(Hmisc)
install.packages("plyr")
library(plyr)

####HIGHEST POPULATION####
##yellowstone
yellowstone <- read.delim("Yellowstone County.txt", header = TRUE, sep = "\t")
yellowstonetitles <- subset(yellowstone, FeeDesc == "Registration Fee")
describe(yellowstonetitles$TitleNumber) #101016

count(yellowstone[1:length(yellowstone)], vars = "UserName")

yellowstone2 <- read.delim("dlb Yellowstone.txt", header = TRUE, sep = "\t")
yellowstonedl <- subset(yellowstone2, TransactionType == "Mainframe J900 Transaction")
describe(yellowstonedl$TranID) #34457


##missoula
missoula <- read.delim("Missoula County.txt", header = TRUE, sep = "\t")
missoulatitles <- subset(missoula, FeeDesc == "Registration Fee")
describe(missoulatitles$TitleNumber) #67418

count(missoula[1:length(missoula)], vars = "UserName")

missoula2 <- read.delim("dlb Missoula.txt", header = TRUE, sep = "\t")
missouladl <- subset(missoula2, TransactionType == "Mainframe J900 Transaction")
describe(missouladl$TranID) #22331

##gallatin
gallatin <- read.delim("Gallatin County.txt", header = TRUE, sep = "\t")
gallatintitles <- subset(gallatin, FeeDesc == "Registration Fee")
describe(gallatintitles$TitleNumber) #66386

count(gallatin[1:length(gallatin)], vars = "UserName")

gallatin2 <- read.delim("dlb gallatin.txt", header = TRUE, sep = "\t")
gallatindl <- subset(gallatin2, TransactionType == "Mainframe J900 Transaction")
describe(gallatindl$TranID) #16861

##flathead
flathead <- read.delim("Flathead County.txt", header = TRUE, sep = "\t")
flatheadtitles <- subset(flathead, FeeDesc == "Registration Fee")
describe(flatheadtitles$TitleNumber) #62163

count(flathead[1:length(flathead)], vars = "UserName")

flathead2 <- read.delim("dlb flathead.txt", header = TRUE, sep = "\t")
flatheaddl <- subset(flathead2, TransactionType == "Mainframe J900 Transaction")
describe(flatheaddl$TranID) #18804

##cascade
cascade <- read.delim("Cascade County.txt", header = TRUE, sep = "\t")
cascadetitles <- subset(cascade, FeeDesc == "Registration Fee")
describe(cascadetitles$TitleNumber) #46871

count(cascade[1:length(cascade)], vars = "UserName")

cascade2 <- read.delim("dlb cascade.txt", header = TRUE, sep = "\t")
cascadedl <- subset(cascade2, TransactionType == "Mainframe J900 Transaction")
describe(cascadedl$TranID) #15846

######MEDIUM POPULATION######
##blaine
blaine <- read.delim("Blaine County.txt", header = TRUE, sep = "\t")
blainetitles <- subset(blaine, FeeDesc == "Registration Fee")
describe(blainetitles$TitleNumber) #4096

count(blaine[1:length(blaine)], vars = "UserName")

#blaine2 <- read.delim("dlb blaine.txt", header = TRUE, sep = "\t")
#blainedl <- subset(blaine2, TransactionType == "Mainframe J900 Transaction")
#describe(blainedl$TranID) #15846

##powell
powell <- read.delim("Powell County.txt", header = TRUE, sep = "\t")
powelltitles <- subset(powell, FeeDesc == "Registration Fee")
describe(powelltitles$TitleNumber) #4214

count(powell[1:length(powell)], vars = "UserName")

powell2 <- read.delim("dlb powell.txt", header = TRUE, sep = "\t")
powelldl <- subset(powell2, TransactionType == "Mainframe J900 Transaction")
describe(powelldl$TranID) #1061

##valley
valley <- read.delim("Valley County.txt", header = TRUE, sep = "\t")
valleytitles <- subset(valley, FeeDesc == "Registration Fee")
describe(valleytitles$TitleNumber) #5118

count(valley[1:length(valley)], vars = "UserName")

valley2 <- read.delim("dlb valley.txt", header = TRUE, sep = "\t")
valleydl <- subset(valley2, TransactionType == "Mainframe J900 Transaction")
describe(valleydl$TranID) #2791

##madison
madison <- read.delim("madison County.txt", header = TRUE, sep = "\t")
madisontitles <- subset(madison, FeeDesc == "Registration Fee")
describe(madisontitles$TitleNumber) #7207

count(madison[1:length(madison)], vars = "UserName")

##madison2 <- read.delim("dlb madison.txt", header = TRUE, sep = "\t")
##madisondl <- subset(madison2, TransactionType == "Mainframe J900 Transaction")
##describe(madisondl$TranID) #15846

##deer lodge
deerlodge <- read.delim("deer lodge County.txt", header = TRUE, sep = "\t")
deerlodgetitles <- subset(deerlodge, FeeDesc == "Registration Fee")
describe(deerlodgetitles$TitleNumber) #6722

count(deerlodge[1:length(deerlodge)], vars = "UserName")

##deerlodge2 <- read.delim("dlb deer lodge.txt", header = TRUE, sep = "\t")
##cascadedl <- subset(cascade2, TransactionType == "Mainframe J900 Transaction")
##describe(cascadedl$TranID) #15846

####LOWEST POPULATION####
##petroleum
petroleum <- read.delim("petroleum County.txt", header = TRUE, sep = "\t")
petroleumtitles <- subset(petroleum, FeeDesc == "Registration Fee")
describe(petroleumtitles$TitleNumber) #421

count(petroleum[1:length(petroleum)], vars = "UserName")

#petroleum2 <- read.delim("dlb petroleum.txt", header = TRUE, sep = "\t")
#petroleumdl <- subset(petroleum2, TransactionType == "Mainframe J900 Transaction")
#describe(petroleumdl$TranID) #15846

##treasure
treasure <- read.delim("treasure County.txt", header = TRUE, sep = "\t")
treasuretitles <- subset(treasure, FeeDesc == "Registration Fee")
describe(treasuretitles$TitleNumber) #573

count(treasure[1:length(treasure)], vars = "UserName")

#treasure2 <- read.delim("dlb treasure.txt", header = TRUE, sep = "\t")
#cascadedl <- subset(cascade2, TransactionType == "Mainframe J900 Transaction")
#describe(cascadedl$TranID) #15846

##golden valley
goldenvalley <- read.delim("golden valley County.txt", header = TRUE, sep = "\t")
goldenvalleytitles <- subset(goldenvalley, FeeDesc == "Registration Fee")
describe(goldenvalleytitles$TitleNumber) #647

count(goldenvalley[1:length(goldenvalley)], vars = "UserName")

#goldenvalley2 <- read.delim("dlb golden valley.txt", header = TRUE, sep = "\t")
#cascadedl <- subset(cascade2, TransactionType == "Mainframe J900 Transaction")
#describe(cascadedl$TranID) #15846

##wibaux
wibaux <- read.delim("wibaux County.txt", header = TRUE, sep = "\t")
wibauxtitles <- subset(wibaux, FeeDesc == "Registration Fee")
describe(wibauxtitles$TitleNumber) #817

count(wibaux[1:length(wibaux)], vars = "UserName")

#wibaux2 <- read.delim("dlb wibaux.txt", header = TRUE, sep = "\t")
#cascadedl <- subset(cascade2, TransactionType == "Mainframe J900 Transaction")
#describe(cascadedl$TranID) #15846

##prairie
prairie <- read.delim("prairie County.txt", header = TRUE, sep = "\t")
prairietitles <- subset(prairie, FeeDesc == "Registration Fee")
describe(prairietitles$TitleNumber) #877

count(prairie[1:length(prairie)], vars = "UserName")

cascade2 <- read.delim("dlb cascade.txt", header = TRUE, sep = "\t")
cascadedl <- subset(cascade2, TransactionType == "Mainframe J900 Transaction")
describe(cascadedl$TranID) #15846





