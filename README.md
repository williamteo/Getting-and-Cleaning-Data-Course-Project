This project submission includes the following files:
A. 'README.md'
B. 'run_analysis.R'
C. 'tidydata.txt'
D. 'CodeBook.md'

===== A =====
This 'README.md' gives a general overview of what 'run_analysis.R' does and what the other files contains. 'run_analysis.R' assumes that the UCI HAR Dataset is in the working directory of R. It generates a file list containing all the data files and reads in the data from the UCI HAR Dataset.
The UCI HAR Dataset consists of data recorded from the embedded accelerometer and gyroscope in experiments which had been carried out with a group of 30 volunteers wearing a smartphone. Refer to the README.txt of the UCI HAR Dataset for more information.

===== B =====
The 'run_analysis.R' then performs the following 5 steps to generate a secondary tidy data set. 
    1. Merges the training and the test sets to create one data set.
    2. Extracts only the measurements on the mean and standard deviation for each measurement. 
    3. Uses descriptive activity names to name the activities in the data set
    4. Appropriately labels the data set with descriptive variable names. 
    5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

===== C =====
The tidy data text file, 'tidydata.txt', is the final output of the R script. The data set generated is in the long (narrow) form, as according to the principles of tidy data as discussed by Hadley Wickham in his 'Tidy Data' paper; and expounded upon the the Course Forums for the Course Project, especially in the 'Tidy data and the Assignment' thread. A more detailed record of the variables and observations can be found in the accompanying code book.

The data set can be read into R with the following code. 
read.table('tidydata.txt',header = TRUE)

===== D =====
The code book, 'CodeBook.md', contains a record of all the variables and observations that appears in 'tidydata.txt'.  