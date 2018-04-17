# Tidy-Data
Coursera project week 4 of class 3, Getting and Cleaning Data
==================================================================
Human Activity Recognition Using Smartphones Dataset
Version 1.0
Modified by Julie Macon, April 2018
==================================================================
Original Dataset:
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws
==================================================================
THE ORIGINAL DATA:
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'Human Activity Recognition Using Smartphones Dataset Code Book.pdf' for more details. 

THE ASSIGNMENT SCRIPT:
With the 'run_analysis.R' file saved into the 'UCI HAR Dataset' folder as originally downloaded from Coursera, the script opens and reads relevant train and test files. For step 1, I made made use of binding to merge the two databases. For step 2, I applied labels to the merged dataset and then subset those variables referencing mean or standard deviation. Note that this labeling of the variables was also step 4 of the assignment. For step 3, I read the acitivity label file and applied it to the acitivity column in the merged data. For step 4, I cleaned the variable names, mostly using gsub. Finally, for step 5, I grouped the data by Subject and then by Activity, then summarized the data using dplyr's summarize_all function, and exported the new tidy dataset to a csv file called 'tidy data UCI HAR.csv'. 

I applied the four tidy data principles:
1. Each variable you measure should be in one column
2. Each different observation of that variable should be in a different row
3. There should be one table for each kind of variable
4. If you have multiple tables, they should include a column in the table that allows them to be linked



The dataset includes the following files:
=========================================

- 'README.txt'

- 'Human Activity Recognition Using Smartphones Dataset Code Book.pdf': Shows information about the variables used on the feature vector.

- 'run_analysis.R': script to perform the following:
	1. Merges the training and the test sets to create one data set.
	2. Extracts only the measurements on the mean and standard deviation for each measurement.
	3. Uses descriptive activity names to name the activities in the data set
	4. Appropriately labels the data set with descriptive variable names.
	5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

- 'Tidy Data UCI HAR.csv': Tidy data output of R file 'run_analysis.R'


Notes: 
======
- 'run_analysis.R' makes use of the dplyr and stringr packages in R
- Special thanks to https://thoughtfulbloke.wordpress.com/2015/09/09/getting-and-cleaning-the-assignment/ for guidance and clarification
- Also thanks to https://drive.google.com/file/d/0B1r70tGT37UxYzhNQWdXS19CN1U/view for guidance




License:
========
Use of the original dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
