## Coursera R Programming class, week 2 assignment
## Julie Macon
##
##

## this script does this following:
## 0. Reads text files from downloaded data on Coursera site
## 1. Merges the training and the test sets to create one data set.
## 2. Extracts only the measurements on the mean and standard deviation for 
## each measurement.
## 3. Uses descriptive activity names to name the activities in the data set
## 4. Appropriately labels the data set with descriptive variable names.
## 5. From the data set in step 4, creates a second, independent tidy data 
## set with the average of each variable for each activity and each subject.

run_analysis <- function() {
        ## Read txt files
        setwd("test") ## open test folder
        x_test <- read.table("X_test.txt")
        y_test <- read.table("y_test.txt")
        subject_test <- read.table("subject_test.txt")
        setwd("..")
        setwd("train") ## open train folder
        x_train <- read.table("X_train.txt")
        y_train <- read.table("y_train.txt")
        subject_train <- read.table("subject_train.txt")
        
        ## 1. Merge train and test data into one data set
        test_tbl <- cbind(subject_test, y_test, x_test) ## test table
        train_tbl <- cbind(subject_train, y_train, x_train) ## train table
        colnames(test_tbl)[1:2] <- c("subject", "activity")
        colnames(train_tbl)[1:2] <- c("subject", "activity")
        merged <- rbind(test_tbl, train_tbl) ## concat test and train tables
        
        ## 2. Extract mean and st. dev for each measurement
        ## 4. Appropriately labels the data set with descriptive variable names
        
        ## Variables were labeled before extracting mean and standard
        ## dev data, so the following script also labels the variables)
        setwd("..") ## get back to main folder
        features <- read.table("features.txt", sep= "-", header = 
                FALSE, fill = TRUE) ## read features.txt for labels
        features <- paste(features[,1], features[,2], features[,3]) ## combine
                # the three cols of labels into one
        col_names <- as.character(unlist(features))
        colnames(merged) <- c("subject", "activity", col_names) ## set labels
        mean_std <- cbind(merged[,1:2],merged[grepl(
                "[Mm][Ee][Aa][Nn]|[Ss][Tt][Dd]", colnames(merged))])
                ## merge 'subject' and 'activity' cols with cols containing
                ## the text 'mean' or 'std', not case sensitive. Subsetted data
                ## stored in 'mean_std'.
        
        ## 3. Apply descriptive activity names to name the activities 
        activities <- read.table("activity_labels.txt", sep = "\n") ## read txt
        activities <- gsub("^\\d+ ", "", activities[,1]) ## rm digits 
        mean_std[,2] <- activities[mean_std[,2]] ## replace num in activity
                ## col with descriptive label
        
        ## 4. Please see step 2 above
        ## Variables were labeled before extracting mean and standard
        ## dev data, so step 2 also labels the variables. The following
        ## code cleans the variables.
        names(mean_std) <- gsub("^\\d+ ", "", names(mean_std)) ## rm digits
        names(mean_std) <- gsub("[()]", "", names(mean_std)) ## rm ()
        names(mean_std) <- gsub("^t", "time ", names(mean_std)) ## t -> time
        names(mean_std) <- gsub("^f", "freq ", names(mean_std)) ## f -> freq
        names(mean_std) <- gsub("^anglet", "angle time ", names(mean_std))
                ##anglet -> angle time
        names(mean_std) <- gsub("BodyBody", "Body", names(mean_std))
                ## BodyBody -> Body 
        names(mean_std) <- gsub("Body", "body ", names(mean_std))
                ## Body -> body" "
        names(mean_std) <- gsub("Acc", "acc ", names(mean_std))
                ## Acc -> acc" "
        names(mean_std) <- gsub("Jerk", "jerk ", names(mean_std))
                ## Jerk -> jerk" "
        names(mean_std) <- gsub("Gravityacc", "gravity acc", names(mean_std))
                ## space between gravity and acc
        names(mean_std) <- gsub("Gyrojerk", "gyro jerk", names(mean_std))
                ## space between gyro and jerk
        names(mean_std) <- gsub("meanFreq", "mean freq", names(mean_std))
                ## space between mean and freq
        names(mean_std) <- gsub("GyroMag", "gyro mag", names(mean_std))
                ## space between gyro and mag
        names(mean_std) <- gsub(",gravityMean"," gravity mean", names(mean_std))
                ## space between gravity and mean
        names(mean_std) <- gsub(",gravity"," gravity", names(mean_std))
                ## rm comma
        names(mean_std) <- gsub("GyroMean", "gyro mean", names(mean_std))
                ## space between gyro and mean
        names(mean_std) <- tolower(names(mean_std))
                ## convert to all lowercase
        library(stringr) 
        names(mean_std) <- str_trim(names(mean_std)) ## rm extra spaces
        
        ## 5. From the data set in step 4, creates a second, independent 
        ## tidy data set with the average of each variable for each activity 
        ## and each subject.
        library(dplyr) 
        mean_std <- group_by(mean_std, subject, activity) ## group data
                ## by subject then activity
        mean_std_summary <- summarize_all(mean_std, funs(mean))
                ## find average of each variable after grouping
        write.csv(mean_std_summary, "Tidy Data UCI HAR.csv")
}