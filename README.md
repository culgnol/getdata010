# Getting and Cleaning Data (getdata010)

The purpose of this project is to demonstrate the ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis.

Project Files:
-CodeBook.md
	This codebook describes the variables, data, and any transformations performed to clean up the data.

-run_analysis.R
	The R script called run_analysis.R does the following: 
	1. Merges the training and the test sets to create one data set.
	2. Extracts only the measurements on the mean and standard deviation for each measurement. 
	3. Uses descriptive activity names to name the activities in the data set
	4. Appropriately labels the data set with descriptive variable names. 
	5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

***** The R script expects that the dataset directory "UCI HAR Dataset" is in the working directory (unzipped). *****

-UCI_HAR_Dataset_tidy.txt
	Tidy data output from the r script "run_analysis.R" with the average of each variable for each activity and each subject.

License
=======
Dataset provided by [1]

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.