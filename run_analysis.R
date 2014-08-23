library(reshape2)
# Get files and unzip
target_url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
target_localfile <- "./data/a1.zip"
if (!file.exists(target_localfile)){download.file(target_url, target_localfile)}
unzip(target_localfile, exdir= "data")

# read common files: activity_labels.txt, features.txt
 #file 1
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt") # 6 obs. of 2 variables
colnames(activity_labels) <- c("activity_nbr","activity")  #replaces V1 with activit_nbr and V2 with activity
str(activity_labels)

 #file_2
features <- read.table("./UCI HAR Dataset/features.txt") # 561 obs. of 2 variables

# read train files
 #file_3
X_train <- read.table("./UCI HAR Dataset/train/X_train.txt") # 7352 obs. of 561 variables (v1 : v561)

  #file_4
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt") #7352 obs. of 1 variable; v1 represents the activity_nbr (values 1 - 6)

 #file_5
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt") #7352 obs. of 1 variable; v1 represents the participant (subject) values (1 - 30)


# read test files
 #file_6
X_test <- read.table("./UCI HAR Dataset/test/X_test.txt") #2947 obs. of 561 variables (v1 : v561))

 #file_7
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt") #2947 obs. of 1 varaible; v1 represents acitivity_nbr (values 1 - 6)

 #file_8
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt") # 2947 obs. of 1 variable; v1 represents participant (subject) values (1- 30)

#combine rows in data frames

  # X_train with X_test (files 3 & 6)
newX <- rbind(X_train, X_test)  # 10299 obs. of 561 variables (v1 : v561)

 # y_train with y_test (files 4 & 7)
newy <- rbind(y_train, y_test) #10299 obs. of 1 variable; v1 represents activity+nbr (values 1 - 6)

 # subject_train with subject_test( files 5 & 8)
newSubject <- rbind(subject_train, subject_test) # 10299 obs. of 1 variable; v1 represents participant (subject) values ( 1 - 30)

# combine to create merged dataset before changing column names
 # combine newSubject with newy with newX ( subject, activity, data)
mergedData <- cbind(newy, newX) # 10299 obs.of 562 variables; v1-activity_nbr and (v1 : v561)
mergedData <- cbind(newSubject, mergedData) # 10299 obs of 563 variables; v1 -subject, v1- activity_nbr and (v1:v561)

 # relabel column names
x <- data.frame(V1=1:2, V2=c("subject", "activity_nbr"))
y <- rbind(x, features) 
colnames(mergedData) <- y[1:563,2] #10299 obs. of 563 variables with subject and acitivity_nbr

 # retrieve columns with mean() and Std()
cn<-names(mergedData)
m <- grep("-mean+[(]|-std", cn, value=TRUE )

exDF <- mergedData[, m] #10299 obs. of 66 variables
exDF <-cbind(mergedData[,1:3], exDF) #10299 obs of 69 variables

 # aggregate
exDF_melt <- melt(exDF, id = c("subject","activity_nbr"))
exDF <-dcast(exDF_melt, activity_nbr + subject ~ variable, mean) # good to go,  get 180 observations.  

 # merge and replace activity_nbr with activity (name)
exDF <- merge(activity_labels, exDF, by.x="activity_nbr", by.y="activity_nbr", all=TRUE) #180 obs of 69 variables

 # relabel variable names
names(exDF) <-sub(".mean..|.mean...", "Mean", names(exDF))
names(exDF) <- sub(".std..|.std...", "Std", names(exDF))

# convert to tidy data frame
tidyDF <- exDF[, 2:69] #180 obs of 68 variables
 
# create data file 
write.table(tidyDF, file= "./UCI HAR Dataset/tidy.txt",  quote=FALSE, row.names=FALSE)
rm(tidyDF)

#test read tidy.txt
#DF <- read.table("./UCI HAR Dataset/tidy.txt", sep="", header=TRUE ) #read tidy.txt must have header=TRUE
#str(DF) #180 obs 68 variables (V1 : V561)
