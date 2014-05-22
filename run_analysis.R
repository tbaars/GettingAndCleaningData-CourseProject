# Run_analysis.R created by Tim Baars for Coursera: Getting and Cleaning Data
# May 22, 2014

# load required libraries

require(plyr)
require(reshape)
require(reshape2)

# read in datasets

xtrain <- read.table("./UCI HAR Dataset/train/X_train.txt")
xtest <- read.table("./UCI HAR Dataset/test/X_test.txt")
ytrain <- read.table("./UCI HAR Dataset/train/y_train.txt")
ytest <- read.table("./UCI HAR Dataset/test/y_test.txt")
subjecttrain <- read.table("./UCI HAR Dataset/train/subject_train.txt")
subjecttest <- read.table("./UCI HAR Dataset/test/subject_test.txt")
features <- read.table("./UCI HAR Dataset/features.txt")
activitylabels <- read.table("./UCI HAR Dataset/activity_labels.txt")

# combine datasets into one data frame with variable labels

x <- rbind(xtrain,xtest)
y <- rbind(ytrain,ytest)
subject <- rbind(subjecttrain,subjecttest)
fulldata <- cbind(x,y,subject)
colnames(fulldata) <- features$V2
colnames(fulldata)[562] <- "Activity"
colnames(fulldata)[563] <- "Subject"

# extract only the measurements on the mean and standard deviation for each measurement 

subsetdata <- fulldata[,c(1:6,41:46,81:86,121:126,161:166,200:201,214:215,227:228,240:241,253:254,266:271,345:350,424:429,503:504,516:517,529:530,542:543,562:563)]

# add descriptive activity names to name the activities in the data set

subsetdata["ActivityLabel"] <- "empty"
subsetdata$ActivityLabel[which(subsetdata$Activity == 1)] <- "Walking"
subsetdata$ActivityLabel[which(subsetdata$Activity == 2)] <- "Walking Upstairs"
subsetdata$ActivityLabel[which(subsetdata$Activity == 3)] <- "Walking Downstairs"
subsetdata$ActivityLabel[which(subsetdata$Activity == 4)] <- "Sitting"
subsetdata$ActivityLabel[which(subsetdata$Activity == 5)] <- "Standing"
subsetdata$ActivityLabel[which(subsetdata$Activity == 6)] <- "Laying"

# clean up variable names

colnames(subsetdata) <- gsub("\\()","",colnames(subsetdata))
colnames(subsetdata) <- gsub("-","",colnames(subsetdata))
colnames(subsetdata) <- gsub("mean","Mean",colnames(subsetdata))
colnames(subsetdata) <- gsub("std","StdDev",colnames(subsetdata))

# create a second, independent tidy data set with the average of each variable for each activity and each subject

subsetdata2 <-melt(subsetdata, id=c("Subject","ActivityLabel"))
tidydata <- dcast(subsetdata2, Subject + ActivityLabel ~ variable, fun.aggregate=mean)
write.csv(tidydata,"tidydata.csv")

