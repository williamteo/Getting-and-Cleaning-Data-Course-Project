require(dplyr)
require(tidyr)

fileList <- list.files("./UCI HAR Dataset/",recursive = TRUE)
fileList <- fileList[!grepl("Inertial Signals|README|info",fileList)] 

invisible(lapply(fileList, 
                 function (x)
                    assign(
                        gsub("(test/|train/|.txt)","",x), 
                        tbl_df(read.table(paste("./UCI HAR Dataset/",x,sep=''),
                            fill = TRUE, stringsAsFactors = FALSE))
                        ,envir = .GlobalEnv)))

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

#Bind subjects to dataset. Will be renamed by R to 'V1.1' as 'V1' already exists
test_sub_binded <- cbind(test_joined,subject_test)
train_sub_binded <- cbind(train_joined,subject_train)

#Combine test and train sets
dataset <- rbind(train_sub_binded,test_sub_binded)

#==============================================================================
# Step 2 - Extracts only the measurements on the mean and standard deviation 
#          for each measurement.
#==============================================================================

#Extract only mean and standard deviation (as well as Subject and Activity) for each measurement
extract_string <- c("mean","sub","V1")
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
names(dataset_joined)[names(dataset_joined) == "V2"] <- "Activites"

#Rename column label "V1.1" to a more descriptive column label
names(dataset_joined)[names(dataset_joined) == "V1.1"] <- "Subjects"

