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
  
  ## Read in activity labels and measurement column names
  activities <- read.table("data/UCI HAR Dataset/activity_labels.txt", col.names = c("activityIndicator", "activity"));
  features <- read.table("data/UCI HAR Dataset/features.txt", col.names = c("columnNumber", "label"));

  ## create a vector of the column names
  colNames <- features[,2];
  
  ## vector of the column that we will keep for the analysis
  keepColumns <- c(1:6, 41:46, 81:86, 121:126, 161:166, 201:202, 214:215, 227:228, 240:241, 253:254, 266:271, 345:350, 424:429, 503:504, 516:517, 529:530, 542:543)
  
  ## read in the test set
  testSubject <- read.table("data/UCI HAR Dataset/test/subject_test.txt", col.names = c("subject"));
  testActivity <- read.table("data/UCI HAR Dataset/test/y_test.txt", col.names = c("activityIndicator"));
  testMeasure <- read.table("data/UCI HAR Dataset/test/X_test.txt", col.names = colNames);
  
  ## trim the unneeded columns
  testMeasure <- testMeasure[, keepColumns];
  
  ## combine the test data tables while still in order
  test <- cbind(testSubject, testActivity);
  test <- cbind(test, testMeasure);
  
  ## merge on the activity labels
  test <- merge(test, activities, by = "activityIndicator");
  
  ## clean up unneeded sets
  rm(testMeasure, testActivity, testSubject);
  
  ## read in the training set
  trainSubject <- read.table("data/UCI HAR Dataset/train/subject_train.txt", col.names = c("subject"));
  trainActivity <- read.table("data/UCI HAR Dataset/train/y_train.txt", col.names = c("activityIndicator"));
  trainMeasure <- read.table("data/UCI HAR Dataset/train/X_train.txt", col.names = colNames);
  
  ## trim the unneeded columns
  trainMeasure <- trainMeasure[, keepColumns];
  
  ## combine the training data tables while still in order
  train <- cbind(trainSubject, trainActivity);
  train <- cbind(train, trainMeasure);
  
  ## merge on the activity labels
  train <- merge(train, activities, by = "activityIndicator");
  
  ## clean up unneeded sets
  rm(trainMeasure, trainActivity, trainSubject);
  
  ## combine the test and train sets
  allData <- rbind(test, train);
  
  ## change the subject to a factor variable
  allData$subject <- factor(allData$subject);
  
  ## remove the unneeded columns
  drops <- c("activityIndicator");
  allData <- allData[, !(names(allData) %in% drops)];
  
  
  colNames <- names(allData);
  idVars <- c("subject", "activity");
  colNames <- colNames[ !(colNames %in% idVars) ];
  
  ## order by subject and activity
  allData <- allData[order(allData$subject, allData$activity), ];
  
  ## save the intermediate tidy set for use
  baseData <<- allData;
  
  ## transform to the long form for calculations
  meltData <- melt(allData, id=idVars, measure.vars = colNames);
  
  ## create the tidy data with a shift back to wide form and summarization as a mean value
  meanData <- dcast(meltData, subject + activity ~ variable, mean);
  
  ## order the data by activity and subject
  meanData <- arrange(meanData, activity, subject)
  
  ## save the final tidy set to the parent frame
  meanData <<- meanData;
 
  ## write the tidy data set
  write.table(meanData, file="data/meanData.txt", row.names = FALSE) 
}

downloadData <- function() {
  if (!file.exists("./data")) {dir.create("./data")}
  fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  download.file(fileUrl, destfile="./data/getdata-projectfiles-UCI HAR Dataset.zip", mode="wb")
  unzip("./data/getdata-projectfiles-UCI HAR Dataset.zip", overwrite = TRUE, exdir = "./data" )
}