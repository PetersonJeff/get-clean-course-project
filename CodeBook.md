#                 Data Dictionary - Human Activity Recognition Using Smartphones Dataset
          
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

##Data set Description
                            
                
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
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


1. subject     
    * Subject ID
      * Factor 1...30
                
2. activity
    * Activity label
      * LAYING
      * SITTING
      * STANDING
      * WALKING
      * WALKING_DOWNSTAIRS
      * WALKING_UPSTAIRS
                
3. tBodyAcc.mean...X
    * Mean of the mean signal in the direction of the X axis
4. tBodyAcc.mean...Y
    * Mean of the mean signal in the direction of the Y axis
5. tBodyAcc.mean...Z
    * Mean of the mean signal in the direction of the Z axis
      
6.  tBodyAcc.std...X
    * Mean of the Standard deviation of the signal in the direction of the X axis
7.  tBodyAcc.std...Y
    * Mean of the Standard deviation of the signal in the direction of the X axis
8.  tBodyAcc.std...Z
    * Mean of the Standard deviation of the signal in the direction of the X axis

9.  tGravityAcc.mean...X
    * Mean of the mean signal in the direction of the X axis
10. tGravityAcc.mean...Y
    * Mean of the mean signal in the direction of the Y axis
11. tGravityAcc.mean...Z
    * Mean of the mean signal in the direction of the Z axis

12. tGravityAcc.std...X
    * Mean of the Standard deviation of the signal in the direction of the X axis
13. tGravityAcc.std...Y
    * Mean of the Standard deviation of the signal in the direction of the Y axis
14. tGravityAcc.std...Z
    * Mean of the Standard deviation of the signal in the direction of the Z axis

15. tBodyAccJerk.mean...X
    * Mean of the mean signal in the direction of the X axis
16. tBodyAccJerk.mean...Y
    * Mean of the mean signal in the direction of the Y axis
17. tBodyAccJerk.mean...Z
    * Mean of the mean signal in the direction of the Z axis

18. tBodyAccJerk.std...X
    * Mean of the Standard deviation of the signal in the direction of the X axis
19. tBodyAccJerk.std...Y
    * Mean of the Standard deviation of the signal in the direction of the Y axis
20. tBodyAccJerk.std...Z
    * Mean of the Standard deviation of the signal in the direction of the Z axis

21. tBodyGyro.mean...X
    * Mean of the mean signal in the direction of the X axis
22. tBodyGyro.mean...Y
    * Mean of the mean signal in the direction of the Y axis
23. tBodyGyro.mean...Z
    * Mean of the mean signal in the direction of the Z axis

24. tBodyGyro.std...X
    * Mean of the Standard deviation of the signal in the direction of the X axis
25. tBodyGyro.std...Y
    * Mean of the Standard deviation of the signal in the direction of the Y axis
26. tBodyGyro.std...Z
    * Mean of the Standard deviation of the signal in the direction of the Z axis

27. tBodyGyroJerk.mean...X
    * Mean of the mean signal in the direction of the X axis
28. tBodyGyroJerk.mean...Y
    * Mean of the mean signal in the direction of the Y axis
29. tBodyGyroJerk.mean...Z
    * Mean of the mean signal in the direction of the Z axis

30. tBodyGyroJerk.std...X
    * Mean of the Standard deviation of the signal in the direction of the X axis
31. tBodyGyroJerk.std...Y
    * Mean of the Standard deviation of the signal in the direction of the Y axis
32. tBodyGyroJerk.std...Z
    * Mean of the Standard deviation of the signal in the direction of the Z axis

33. tBodyAccMag.mean..
    * Mean of the mean observed signal
34. tBodyAccMag.std..
    * Mean of the Standard deviation of the signal

35. tGravityAccMag.mean..
    * Mean of the mean observed signal
36. tGravityAccMag.std..
    * Mean of the Standard deviation of the signal

37. tBodyAccJerkMag.mean..
    * Mean of the mean observed signal
38. tBodyAccJerkMag.std..
    * Mean of the Standard deviation of the signal

39. tBodyGyroMag.mean..
    * Mean of the mean observed signal
40. tBodyGyroMag.std..
    * Mean of the Standard deviation of the signal

41. tBodyGyroJerkMag.mean..
    * Mean of the mean observed signal
42. tBodyGyroJerkMag.std..

43. fBodyAcc.mean...X
    * Mean of the mean signal in the direction of the X axis
44. fBodyAcc.mean...Y
    * Mean of the mean signal in the direction of the Y axis
45. fBodyAcc.mean...Z
    * Mean of the mean signal in the direction of the Z axis

46. fBodyAcc.std...X
    * Mean of the Standard deviation of the signal in the direction of the X axis
47. fBodyAcc.std...Y
    * Mean of the Standard deviation of the signal in the direction of the Y axis
48. fBodyAcc.std...Z
    * Mean of the Standard deviation of the signal in the direction of the Z axis

49. fBodyAccJerk.mean...X
    * Mean of the mean signal in the direction of the X axis
50. fBodyAccJerk.mean...Y
    * Mean of the mean signal in the direction of the Y axis
51. fBodyAccJerk.mean...Z
    * Mean of the mean signal in the direction of the Z axis

52. fBodyAccJerk.std...X
    * Mean of the Standard deviation of the signal in the direction of the X axis
53. fBodyAccJerk.std...Y
    * Mean of the Standard deviation of the signal in the direction of the Y axis
54. fBodyAccJerk.std...Z
    * Mean of the Standard deviation of the signal in the direction of the Z axis

55. fBodyGyro.mean...X
    * Mean of the mean signal in the direction of the X axis
56. fBodyGyro.mean...Y
    * Mean of the mean signal in the direction of the Y axis
57. fBodyGyro.mean...Z
    * Mean of the mean signal in the direction of the Z axis

58. fBodyGyro.std...X
    * Mean of the Standard deviation of the signal in the direction of the X axis
59. fBodyGyro.std...Y
    * Mean of the Standard deviation of the signal in the direction of the Y axis
60. fBodyGyro.std...Z
    * Mean of the Standard deviation of the signal in the direction of the Z axis

61. fBodyAccMag.mean..
    * Mean of the mean observed signal
62. fBodyAccMag.std..
    * Mean of the Standard deviation of the signal

63. fBodyBodyAccJerkMag.mean..
    * Mean of the mean observed signal
64. fBodyBodyAccJerkMag.std..
    * Mean of the Standard deviation of the signal

65. fBodyBodyGyroMag.mean..
    * Mean of the mean observed signal
66. fBodyBodyGyroMag.std..
    * Mean of the Standard deviation of the signal

67. fBodyBodyGyroJerkMag.mean..
    * Mean of the mean observed signal
68. fBodyBodyGyroJerkMag.std..
    * Mean of the Standard deviation of the signal
