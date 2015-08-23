# Getting and Cleaning Data Course Project
## Created 8/23/2015 by JGS

This project merges and cleans up data collected from an IMU in a cell phone. More details about the original data set can be found at the following link:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

The main R script in this project is run_analysis.R. This script will do the following:
1. Merge the training and the test sets to create one data set.
2. Extract only the measurements on the mean() and std() for each measurement. 
3. Add descriptive activity names to name the activities in the data set
4. Label the data set with descriptive variable names. 
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

Note that the folder 'UCI HAR Dataset/' must be in the same directory as run_analysis.R when loading in the test and training data. The folder and file structure should be left the same as the original structure when downloaded from the following link:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

When selecting the measurements on mean and standard deviation, I assumed we only need those with labels that had the phrase 'mean()' or 'std()' in them.
