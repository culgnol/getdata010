CodeBook
========
Getting and Cleaning Data Course Project

The following explains the data gathered from experiments that have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist.

To clean up the provided dataset "UCI HAR Dataset" involved the following:
1. Merge the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, create a second, independent tidy data set with the average of each variable for each activity and each subject.

Variables
=========
The following variables of particular interest were distilled from the given dataset files "UCI HAR Dataset"

activity
	Activities performed by each subject
		1 WALKING
		2 WALKING_UPSTAIRS
		3 WALKING_DOWNSTAIRS
		4 SITTING
		5 STANDING
		6 LAYING
subject
	Assigned id given to each of the 30 volunteers
		1..30

The remaining variables are the pair of mean and standard deviation values of the accelerometer and gyroscope 3-axial signals with the following patterns:
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.
	tBodyAcc-XYZ
	tGravityAcc-XYZ
	tBodyAccJerk-XYZ
	tBodyGyro-XYZ
	tBodyGyroJerk-XYZ
	tBodyAccMag
	tGravityAccMag
	tBodyAccJerkMag
	tBodyGyroMag
	tBodyGyroJerkMag
	fBodyAcc-XYZ
	fBodyAccJerk-XYZ
	fBodyGyro-XYZ
	fBodyAccMag
	fBodyAccJerkMag
	fBodyGyroMag
	fBodyGyroJerkMag

	i.e.
		"tBodyAcc-XYZ" would yield
			tBodyAcc-mean()-X
			tBodyAcc-mean()-Y
			tBodyAcc-mean()-Z
			tBodyAcc-std()-X
			..
			tBodyAcc-std()-Z
		"tBodyAccMag" would yield
			tBodyAccMag-mean()
			tBodyAccMag-std()

Data
====
A full description is available at the site where the data was obtained: 
	http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

The "UCI HAR Dataset" used in the transformation: 
	https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip