#Load required R packages
require(dplyr)
require(tidyr)

#Write a list of the files with the required data 
fileList <- list.files("./UCI HAR Dataset/",recursive = TRUE)
fileList <- fileList[!grepl("Inertial Signals|README|info",fileList)] 

#Load the data into R using recursively as a data frame 
invisible(lapply(fileList, 
                 function (x)
                    assign(
                        gsub("(test/|train/|.txt)","",x), 
                        tbl_df(read.table(paste("./UCI HAR Dataset/",x,sep=''),
                            fill = TRUE, stringsAsFactors = FALSE))
                        ,envir = .GlobalEnv)))


#Naming the columns by its features so that it will be easier to extract data in
#Step 2

for (i in 1:(ncol(X_test))) {
    if (gsub("V","",names(X_test)[i]) == features[i,1]) 
    {names(X_test)[i] <- features[i,2]}
}

for (i in 1:(ncol(X_train))) {
    if (gsub("V","",names(X_train)[i]) == features[i,1]) 
    {names(X_train)[i] <- features[i,2]}
}

#==============================================================================
# Step 1 - Merges the training and the test sets to create one data set.
#==============================================================================

# Bind the activity labels to the respective data rows as 'V1'
test <- cbind(X_test,y_test)
train <- cbind(X_train,y_train)

#Bind subjects to data set. Will be renamed by R to 'V1.1' as 'V1' already exists
test_sub_binded <- cbind(test,subject_test)
train_sub_binded <- cbind(train,subject_train)

#Combine test and training sets
dataset <- rbind(train_sub_binded,test_sub_binded)

#==============================================================================
# Step 2 - Extracts only the measurements on the mean and standard deviation 
#          for each measurement.
#==============================================================================

#Extract only mean and standard deviation (as well as Subject and Activity) for each measurement
extract_string <- c("mean\\(\\)","std\\(\\)","V1")
dataset_extracted <- dataset[,grepl(paste(extract_string, collapse = "|"),colnames(dataset))]

#==============================================================================
# Step 3 - Uses descriptive activity names to name the activities 
#          in the data set.
#==============================================================================

#Join the activity labels from numerical values to their descriptive activity names (as 'V2')
dataset_joined <- left_join(dataset_extracted,activity_labels)

#==============================================================================
# Step 4 - Appropriately labels the data set with descriptive variable names.
#==============================================================================

#Drop numerical values for activity labels (under column 'V1') and change to a more descriptive column label for 'V2'
dataset_joined$V1 <- NULL
names(dataset_joined)[names(dataset_joined) == "V2"] <- "activities"

#Rename column label "V1.1" to a more descriptive column label
names(dataset_joined)[names(dataset_joined) == "V1.1"] <- "subjects"

#==============================================================================
# Step 5 - From the data set in step 4, creates a second, 
#          independent tidy data set with the average of each variable 
#          for each activity and each subject.
#==============================================================================

#Gather all columns into key-value pairs
dataset2 <- gather(dataset_joined, features, value, -subjects, -activities)

#Group the data set by activity, subject and variable
dataset2_grouped <- group_by(dataset2,subjects,activities,features)

#Summarizing the data set by the average for each group created earlier
final_dataset <- summarize(dataset2_grouped, avg_value = mean(value))

#Finally outputting the final tidy data set 
write.table(final_dataset,'./tidydata.txt',row.name = FALSE)