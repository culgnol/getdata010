## The purpose of this project is to demonstrate the ability to collect, work with, and clean a data set.
## The goal is to prepare tidy data that can be used for later analysis. 
library(dplyr)

if(!file.exists("UCI HAR Dataset")) {
    paste("directory not found: UCI HAR Dataset")
} else {
##Prep
    #Read Common
    features<-read.table("./UCI HAR Dataset/features.txt",header=FALSE, col.names=c("id", "feature"))
    activity<-read.table("./UCI HAR Dataset/activity_labels.txt",header=FALSE, col.names=c("id","activity"))
    #Read Test
    testSet<-read.table("./UCI HAR Dataset/test/X_test.txt",header=FALSE)
    colnames(testSet)<-features[,"feature"]
    testLabels<-read.table("./UCI HAR Dataset/test/y_test.txt",header=FALSE, col.names=c("activityId"))
    testSubject<-read.table("./UCI HAR Dataset/test/subject_test.txt",header=FALSE, col.names=c("subject"))
    #Read Training
    trainSet<-read.table("./UCI HAR Dataset/train/X_train.txt",header=FALSE)
    colnames(trainSet)<-features[,"feature"]
    trainLabels<-read.table("./UCI HAR Dataset/train/y_train.txt",header=FALSE, col.names=c("activityId"))
    trainSubject<-read.table("./UCI HAR Dataset/train/subject_train.txt",header=FALSE, col.names=c("subject"))

#1. Merges the training and the test sets to create one data set.
    testDT<-cbind(testSubject, testLabels, testSet) #combine test files
    trainDT<-cbind(trainSubject, trainLabels, trainSet) #combine train files
    mergedData<-rbind(trainDT, testDT) #merge into one dataset

#2. Extracts only the measurements on the mean and standard deviation for each measurement.
    colMeanStd<-grep("mean\\(\\)|std\\(\\)", colnames(mergedData), value=TRUE)
    extractDT<-mergedData[,c("subject", "activityId",colMeanStd)]

#3. Uses descriptive activity names to name the activities in the data set
    activityNames<-activity[extractDT[,"activityId"], "activity"] #create new vector
    extractDT[,"activityId"]<-activityNames #push names into existing column
    names(extractDT)[names(extractDT)=="activityId"]<-"activity" #rename column

#4. Appropriately labels the data set with descriptive variable names.
    #...See prep work

#5. From the data set in step 4, creates a second,
#   independent tidy data set with the average of each variable for each activity and each subject.
    dataMelt<-melt(extractDT, id=c("activity", "subject"))
    tidyData<-dcast(dataMelt,activity+subject~variable,mean)
    write.table(tidyData, "UCI_HAR_Dataset_tidy.txt", row.names=FALSE)
}