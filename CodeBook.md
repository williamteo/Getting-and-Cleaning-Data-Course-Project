Code Book

1. subjects
    Identifier for each individual who performed the activity for each window sample.
        1..30 .Unique subject identifier assigned to each individual.

2. activities
    Activities each subject were made to perform while wearing the smartphone.
        LAYING 
        SITTING
        STANDING
        WALKING
        WALKING_DOWNSTAIRS
        WALKING_UPSTAIRS

3. features
    The features selected come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 
    Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 
    Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 
    These signals were used to estimate variables of the feature vector for each pattern:  
    '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.
        tBodyAcc-mean()-X .mean of time domain body acceleration signal from accelerometer - X axis
        tBodyAcc-mean()-Y .mean of time domain body acceleration signal from accelerometer - Y axis
        tBodyAcc-mean()-Z .mean of time domain body acceleration signal from accelerometer - Z axis
        tBodyAcc-std()-X .standard deviation of time domain body acceleration signal from accelerometer - X axis
        tBodyAcc-std()-Y .standard deviation of time domain body acceleration signal from accelerometer - Y axis
        tBodyAcc-std()-Z .standard deviation of time domain body acceleration signal from accelerometer - Z axis
        tGravityAcc-mean()-X .mean of time domain gravity acceleration signal from accelerometer - X axis 
        tGravityAcc-mean()-Y .mean of time domain gravity acceleration signal from accelerometer - Y axis 
        tGravityAcc-mean()-Z .mean of time domain gravity acceleration signal from accelerometer - Z axis 
        tGravityAcc-std()-X .standard deviation of gravity domain body acceleration signal from accelerometer - X axis 
        tGravityAcc-std()-Y .standard deviation of gravity domain body acceleration signal from accelerometer - Y axis 
        tGravityAcc-std()-Z .standard deviation of gravity domain body acceleration signal from accelerometer - Z axis 
        tBodyAccJerk-mean()-X .mean of time domain body acceleration Jerk signal from accelerometer - X axis 
        tBodyAccJerk-mean()-Y .mean of time domain body acceleration Jerk signal from accelerometer - Y axis 
        tBodyAccJerk-mean()-Z .mean of time domain body acceleration Jerk signal from accelerometer - Z axis 
        tBodyAccJerk-std()-X .standard deviation of time domain body acceleration Jerk signal from accelerometer - X axis
        tBodyAccJerk-std()-Y .standard deviation of time domain body acceleration Jerk signal from accelerometer - Y axis
        tBodyAccJerk-std()-Z .standard deviation of time domain body acceleration Jerk signal from accelerometer - Z axis
        tBodyGyro-mean()-X .mean of time domain body signal from gyroscope - X axis
        tBodyGyro-mean()-Y .mean of time domain body signal from gyroscope - Y axis
        tBodyGyro-mean()-Z .mean of time domain body signal from gyroscope - Z axis
        tBodyGyro-std()-X .standard deviation of time domain body signal from gyroscope - X axis
        tBodyGyro-std()-Y .standard deviation of time domain body signal from gyroscope - Y axis
        tBodyGyro-std()-Z .standard deviation of time domain body signal from gyroscope - Z axis
        tBodyGyroJerk-mean()-X .mean of time domain body Jerk signal from gyroscope - X axis
        tBodyGyroJerk-mean()-Y .mean of time domain body Jerk signal from gyroscope - Y axis 
        tBodyGyroJerk-mean()-Z .mean of time domain body Jerk signal from gyroscope - Z axis
        tBodyGyroJerk-std()-X .standard deviation of time domain body Jerk signal from gyroscope - X axis
        tBodyGyroJerk-std()-Y .standard deviation of time domain body Jerk signal from gyroscope - Y axis 
        tBodyGyroJerk-std()-Z .standard deviation of time domain body Jerk signal from gyroscope - Z axis
        tBodyAccMag-mean() .mean of the magnitude of the time domain body acceleration signal from accelerometer
        tBodyAccMag-std() .standard deviation of the magnitude of the time domain body acceleration signal from accelerometer
        tGravityAccMag-mean() .mean of the magnitude of time domain gravity acceleration signal from accelerometer 
        tGravityAccMag-std() .standard deviation of the magnitude of time domain gravity acceleration signal from accelerometer 
        tBodyAccJerkMag-mean() .mean of the magnitude of the time domain body acceleration Jerk signal from accelerometer
        tBodyAccJerkMag-std() .standard deviation of the magnitude of the time domain body acceleration Jerk signal from accelerometer
        tBodyGyroMag-mean() .mean of the magnitude of the time domain body signal from gyroscope
        tBodyGyroMag-std() .standard deviation of the magnitude of the time domain body signal from gyroscope
        tBodyGyroJerkMag-mean() .mean of the magnitude of the time domain body Jerk signal from gyroscope
        tBodyGyroJerkMag-std() .standard deviation of the magnitude of the time domain body Jerk signal from gyroscope
        fBodyAcc-mean()-X .mean of frequency domain body acceleration signal from accelerometer - X axis
        fBodyAcc-mean()-Y .mean of frequency domain body acceleration signal from accelerometer - Y axis
        fBodyAcc-mean()-Z .mean of frequency domain body acceleration signal from accelerometer - Z axis
        fBodyAcc-std()-X .standard deviation of frequency domain body acceleration signal from accelerometer - X axis
        fBodyAcc-std()-Y .standard deviation of frequency domain body acceleration signal from accelerometer - Y axis
        fBodyAcc-std()-Z .standard deviation of frequency domain body acceleration signal from accelerometer - Z axis
        fBodyJerkAcc-mean()-X .mean of frequency domain body acceleration Jerk signal from accelerometer - X axis
        fBodyJerkAcc-mean()-Y .mean of frequency domain body acceleration Jerk signal from accelerometer - Y axis
        fBodyJerkAcc-mean()-Z .mean of frequency domain body acceleration Jerk signal from accelerometer - Z axis
        fBodyJerkAcc-std()-X .standard deviation of frequency domain body acceleration Jerk signal from accelerometer - X axis
        fBodyJerkAcc-std()-Y .standard deviation of frequency domain body acceleration Jerk signal from accelerometer - Y axis
        fBodyJerkAcc-std()-Z .standard deviation of frequency domain body acceleration Jerk signal from accelerometer - Z axis
        fBodyGyro-mean()-X .mean of frequency domain body signal from gyroscope - X axis
        fBodyGyro-mean()-Y .mean of frequency domain body signal from gyroscope - Y axis
        fBodyGyro-mean()-Z .mean of frequency domain body signal from gyroscope - Z axis
        fBodyGyro-std()-X .standard deviation of frequency domain body signal from gyroscope - X axis
        fBodyGyro-std()-Y .standard deviation of frequency domain body signal from gyroscope - Y axis
        fBodyGyro-std()-Z .standard deviation of frequency domain body signal from gyroscope - Z axis
        fBodyAccMag-mean() .mean of the magnitude of the frequency domain body acceleration signal from accelerometer 
        fBodyAccMag-std() .standard deviation of the magnitude of the frequency domain body acceleration signal from accelerometer
        fBodyBodyAccJerkMag-mean() .mean of the magnitude of the frequency domain body Jerk acceleration signal from accelerometer
        fBodyBodyAccJerkMag-std() .standard deviation of the magnitude of the frequency domain body Jerk acceleration signal from accelerometer
        fBodyBodyGyroMag-mean() .mean of the magnitude of the frequency domain body signal from gyroscope 
        fBodyBodyGyroMag-std() .standard deviation of the magnitude of the frequency domain body signal from gyroscope
        fBodyBodyGyroJerkMag-mean() .mean of the magnitude of the frequency domain body Jerk signal from gyroscope
        fBodyBodyGyroJerkMag-std() .standard deviation of the magnitude of the frequency domain body Jerk signal from gyroscope 

4. avg_value
    Average value of each feature measured, as described in 3. features, for each activity by each subject.
    -1.00000000000..1.00000000000 .Average value for each normalized value between [-1,1] measured by the smartphone.  