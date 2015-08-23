This code book describes the variables and operations performed to create two data sets. The first data set is a data frame named mergedData and contains all mean and standard deviation measurements from the Human Activity Recognition Using Smartphones Data Set provided by a group at University of California, Irvine. Additional information about the original source of the data can be found from the link included in README.md. The second data set is a data frame named tidyData and contains the mean values of each variable for each subject x activity combination.

The run_analysis.R script combines both the training and test data sets together into one data frame for all 30 subjects and all 6 activities. Aside from subject number and activity name, only variables that had the phrase 'mean()' and 'std()' were included in the merged data frame. The variable names were set to match those in the 'UCI HAR Dataset/features.txt' file. A complete list of the column number and variable names is shown below:

List of mergedData data frame variables

1 subject

2 activity

3 tBodyAcc-mean()-X

4 tBodyAcc-mean()-Y

5 tBodyAcc-mean()-Z

6 tBodyAcc-std()-X

7 tBodyAcc-std()-Y

8 tBodyAcc-std()-Z

9 tGravityAcc-mean()-X

10 tGravityAcc-mean()-Y

11 tGravityAcc-mean()-Z

12 tGravityAcc-std()-X

13 tGravityAcc-std()-Y

14 tGravityAcc-std()-Z

15 tBodyAccJerk-mean()-X

16 tBodyAccJerk-mean()-Y

17 tBodyAccJerk-mean()-Z

18 tBodyAccJerk-std()-X

19 tBodyAccJerk-std()-Y

20 tBodyAccJerk-std()-Z

21 tBodyGyro-mean()-X

22 tBodyGyro-mean()-Y

23 tBodyGyro-mean()-Z

24 tBodyGyro-std()-X

25 tBodyGyro-std()-Y

26 tBodyGyro-std()-Z

27 tBodyGyroJerk-mean()-X

28 tBodyGyroJerk-mean()-Y

29 tBodyGyroJerk-mean()-Z

30 tBodyGyroJerk-std()-X

31 tBodyGyroJerk-std()-Y

32 tBodyGyroJerk-std()-Z

33 tBodyAccMag-mean()

34 tBodyAccMag-std()

35 tGravityAccMag-mean()

36 tGravityAccMag-std()

37 tBodyAccJerkMag-mean()

38 tBodyAccJerkMag-std()

39 tBodyGyroMag-mean()

40 tBodyGyroMag-std()

41 tBodyGyroJerkMag-mean()

42 tBodyGyroJerkMag-std()

43 fBodyAcc-mean()-X

44 fBodyAcc-mean()-Y

45 fBodyAcc-mean()-Z

46 fBodyAcc-std()-X

47 fBodyAcc-std()-Y

48 fBodyAcc-std()-Z

49 fBodyAccJerk-mean()-X

50 fBodyAccJerk-mean()-Y

51 fBodyAccJerk-mean()-Z

52 fBodyAccJerk-std()-X

53 fBodyAccJerk-std()-Y

54 fBodyAccJerk-std()-Z

55 fBodyGyro-mean()-X

56 fBodyGyro-mean()-Y

57 fBodyGyro-mean()-Z

58 fBodyGyro-std()-X

59 fBodyGyro-std()-Y

60 fBodyGyro-std()-Z

61 fBodyAccMag-mean()

62 fBodyAccMag-std()

63 fBodyBodyAccJerkMag-mean()

64 fBodyBodyAccJerkMag-std()

65 fBodyBodyGyroMag-mean()

66 fBodyBodyGyroMag-std()

67 fBodyBodyGyroJerkMag-mean()

68 fBodyBodyGyroJerkMag-std()


The tidy data set was created by finding the mean value of each variable in the merged data set for each user and activity combination. This was calculated primarily using the colMeans function in R. Similar variable names were used in the tidy data set. The one difference was that the string 'mean-' was added in front of each variable name to indicate that each value is the mean value of the measurements for that particular subject x activity combination. A complete list of the column number and variable names is shown below:

List of tidyData data frame variables

1 tSubject

2 tActivity

3 mean-tBodyAcc-mean()-X

4 mean-tBodyAcc-mean()-Y

5 mean-tBodyAcc-mean()-Z

6 mean-tBodyAcc-std()-X

7 mean-tBodyAcc-std()-Y

8 mean-tBodyAcc-std()-Z

9 mean-tGravityAcc-mean()-X

10 mean-tGravityAcc-mean()-Y

11 mean-tGravityAcc-mean()-Z

12 mean-tGravityAcc-std()-X

13 mean-tGravityAcc-std()-Y

14 mean-tGravityAcc-std()-Z

15 mean-tBodyAccJerk-mean()-X

16 mean-tBodyAccJerk-mean()-Y

17 mean-tBodyAccJerk-mean()-Z

18 mean-tBodyAccJerk-std()-X

19 mean-tBodyAccJerk-std()-Y

20 mean-tBodyAccJerk-std()-Z

21 mean-tBodyGyro-mean()-X

22 mean-tBodyGyro-mean()-Y

23 mean-tBodyGyro-mean()-Z

24 mean-tBodyGyro-std()-X

25 mean-tBodyGyro-std()-Y

26 mean-tBodyGyro-std()-Z

27 mean-tBodyGyroJerk-mean()-X

28 mean-tBodyGyroJerk-mean()-Y

29 mean-tBodyGyroJerk-mean()-Z

30 mean-tBodyGyroJerk-std()-X

31 mean-tBodyGyroJerk-std()-Y

32 mean-tBodyGyroJerk-std()-Z

33 mean-tBodyAccMag-mean()

34 mean-tBodyAccMag-std()

35 mean-tGravityAccMag-mean()

36 mean-tGravityAccMag-std()

37 mean-tBodyAccJerkMag-mean()

38 mean-tBodyAccJerkMag-std()

39 mean-tBodyGyroMag-mean()

40 mean-tBodyGyroMag-std()

41 mean-tBodyGyroJerkMag-mean()

42 mean-tBodyGyroJerkMag-std()

43 mean-fBodyAcc-mean()-X

44 mean-fBodyAcc-mean()-Y

45 mean-fBodyAcc-mean()-Z

46 mean-fBodyAcc-std()-X

47 mean-fBodyAcc-std()-Y

48 mean-fBodyAcc-std()-Z

49 mean-fBodyAccJerk-mean()-X

50 mean-fBodyAccJerk-mean()-Y

51 mean-fBodyAccJerk-mean()-Z

52 mean-fBodyAccJerk-std()-X

53 mean-fBodyAccJerk-std()-Y

54 mean-fBodyAccJerk-std()-Z

55 mean-fBodyGyro-mean()-X

56 mean-fBodyGyro-mean()-Y

57 mean-fBodyGyro-mean()-Z

58 mean-fBodyGyro-std()-X

59 mean-fBodyGyro-std()-Y

60 mean-fBodyGyro-std()-Z

61 mean-fBodyAccMag-mean()

62 mean-fBodyAccMag-std()

63 mean-fBodyBodyAccJerkMag-mean()

64 mean-fBodyBodyAccJerkMag-std()

65 mean-fBodyBodyGyroMag-mean()

66 mean-fBodyBodyGyroMag-std()

67 mean-fBodyBodyGyroJerkMag-mean()

68 mean-fBodyBodyGyroJerkMag-std()
