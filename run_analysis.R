## run_analysis.R

## Prepare a tidy dataset for the Getting and Cleaning Data Coursera Course

## The makeCacheMatrix creates a sprecial "matrix" which is really a list of functions to maintain the cached value
##   1. load and merge the training and test data sets
##   2. Extract the mean and standard deviation for each measurement
##   3. Label the dataset variables
##   4. Write a second data set that contains the average of each variable for each activity and each subject

run_analysis <- function() {
  
  ## Download data if necessary
  if (!file.exists("./data/UCI HAR Dataset")) { downloadData() }
  
  
  activities <- read.table("data/UCI HAR Dataset/activity_labels.txt", col.names = c("activityIndicator", "activity"));
  features <- read.table("data/UCI HAR Dataset/features.txt", col.names = c("columnNumber", "label"));

  colNames <- features[,2];
  
  keepColumns <- c(1:6, 41:46, 81:86, 121:126, 161:166, 201:202, 214:215, 227:228, 240:241, 253:252, 266:271, 345:350, 424:429, 503:504, 516:517, 529:530, 542:543)
  
  testSubject <- read.table("data/UCI HAR Dataset/test/subject_test.txt", col.names = c("subject"));
  testSubject$subject <- factor(testSubject$subject);
  testActivity <- read.table("data/UCI HAR Dataset/test/y_test.txt", col.names = c("activityIndicator"));
  testMeasure <- read.table("data/UCI HAR Dataset/test/X_test.txt", col.names = colNames);
  
  testMeasure <- testMeasure[, keepColumns];
  test <- cbind(testSubject, testActivity);
  test <- merge(test, activities, by = "activityIndicator");
  test <- cbind(test, testMeasure);
  
  rm(testMeasure, testActivity, testSubject);
  
  trainSubject <- read.table("data/UCI HAR Dataset/train/subject_train.txt", col.names = c("subject"));
  trainSubject$subject <- factor(trainSubject$subject);
  trainActivity <- read.table("data/UCI HAR Dataset/train/y_train.txt", col.names = c("activityIndicator"));
  trainMeasure <- read.table("data/UCI HAR Dataset/train/X_train.txt", col.names = colNames);
  
  trainMeasure <- trainMeasure[, keepColumns];
  train <- cbind(trainSubject, trainActivity);
  train <- merge(train, activities, by = "activityIndicator");
  train <- cbind(train, trainMeasure);
  
  rm(trainMeasure, trainActivity, trainSubject);
  
  allData <- rbind(test, train);
  
  drops <- c("activityIndicator");
  
  allData <- allData[, !(names(allData) %in% drops)];
  
  colNames <- names(allData);
  idVars <- c("subject", "activity");
  colNames <- colNames[ !(colNames %in% idVars) ];
  
  allData[order(allData$subject, allData$activity), ];
  
  baseData <<- allData;
  
  meltData <- melt(allData, id=idVars, measure.vars = colNames);
  
  meanData <- dcast(meltData, subject + activity ~ variable, mean);
  
  meanData <- arrange(meanData, activity, subject)
  
  meanData <<- meanData;
  
}

downloadData <- function() {
  if (!file.exists("./data")) {dir.create("./data")}
  fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  download.file(fileUrl, destfile="./data/getdata-projectfiles-UCI HAR Dataset.zip", mode="wb")
  unzip("./data/getdata-projectfiles-UCI HAR Dataset.zip", overwrite = TRUE, exdir = "./data" )
}