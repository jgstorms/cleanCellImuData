# run_analysis.R

# Read in training data
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt")
X_train <- read.table("UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("UCI HAR Dataset/train/y_train.txt")

# Read in test data
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt")
X_test <- read.table("UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("UCI HAR Dataset/test/y_test.txt")

# Combine training and test data
subject <- rbind(subject_train, subject_test)
X <- rbind(X_train, X_test)
y <- rbind(y_train, y_test)
remove(subject_train, subject_test, X_train, X_test, y_train, y_test)

# Specify indices of columns that contain mean() values
meanColInd <- c(1,2,3,41,42,43,81,82,83,121,122,123,161,162,
                163,201,214,227,240,253,266,267,268,345,346,
                347,424,425,426,503,516,529,542)
# Specify indices of columns that contain std() values
stdColInd <- c(4,5,6,44,45,46,84,85,86,124,125,126,164,165,
                166,202,215,228,241,254,269,270,271,348,349,
                350,427,428,429,504,517,530,543)
colInd <- c(meanColInd, stdColInd)
colInd <- colInd[order(colInd)]

# Grab all mean() and std() values
X <- X[,colInd]

# Read in feature names
con <- file(description = "UCI HAR Dataset/features.txt", open = "r")
features <- readLines(con)
close(con)

# Rename variables in data set with descriptive variable names
for (i in 1:ncol(X)) {
    newName <- strsplit(features[colInd[i]], " ")
    names(X)[i] <- newName[[1]][2]
}
names(subject)[1] <- "subject"

# Add descriptive activity names
activity <- NULL
activities <- c("WALKING","WALKING_UPSTAIRS","WALKING_DOWNSTAIRS",
                "SITTING","STANDING","LAYING")
for (i in 1:nrow(y)) {
    activity <- c(activity, activities[y[i,]])
}


# Combine into one dataframe
mergedData <- cbind(subject,activity,X)


# Create tidy data set that contains the mean value of each variable for each 
# subject x activity combination
tSubject <- NULL
tActivity <- NULL
tidyData <- NULL
for (i in 1:30) {
    for (j in 1:5) {
        tSubject <- c(tSubject, i)
        tActivity <- c(tActivity, activities[j])
        tidyData <- rbind(tidyData, colMeans(mergedData[mergedData$subject==i & 
                        mergedData$activity==activities[j],3:68]))
    }
}

tidyData <- data.frame(tSubject, tActivity, tidyData)

# Rename variables in data set with descriptive variable names
for (i in 1:ncol(X)) {
    newName <- strsplit(features[colInd[i]], " ")
    names(tidyData)[i+2] <- paste("mean-", newName[[1]][2], sep = "")
}

# Write the tidy data set to a text file
write.table(tidyData, file = "tidyData.txt", row.names = FALSE)
