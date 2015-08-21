# get-clean-course-project
Course Project for the Getting and Cleaning Data Course

The objective on this package is create two tidy dataset from the provided data.


To replicate the analysis:

1.  unzip the raw data from "getdata-projectfiles-UCI HAR Dataset.zip" to your {working_directory}/data
    The function will download and expand the data if it is not already available

2.  source('{your location}/get-clean-course-project/run_analysis.R')

3.  run_analysis()

This will produce 2 data sets:
    baseData - primary tidy data set
    meanData - average of each varialbe for each activity and subject
    
run_analysis is dependent on the reshape2 and dplyr libraries

there is a seperate function to download and unzip the data if it is not already available

    downloadData()
    
This will download the dataset from the coursera site into a data directory in the current working directory and 
unzip the archive to the same data directory