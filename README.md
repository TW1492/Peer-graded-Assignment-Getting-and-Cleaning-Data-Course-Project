# Transition from raw to tidy data

This file explains the transition from the raw data resulting from the experiment explained in the code book to the tidy data file "TidyDataAverages.txt". We first explain the general outline of the transition and then give a detailed description of the "run_analysis.R"-script which performes the transition. The raw data can be dowloaded from http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones. 

## Outline of Transition

The transformation from the raw data files to the file "TidyDataAverages.txt" follows the following five steps which are also indicated in the description of the course project:

1. The training and testing data sets are merged to a single data set.
2. The measurements on the mean and standard deviation for each measurement are extracted from this data set. Here, we do not view the frequency-mean measurements as measurements of the mean.
3. Relabel the numeric values for activity by descriptive character strings.
4. Add descriptive variable names that explain the signals and whether the mean or standard deviation is taken.
5. We create a new table with tidy data containing the average of each variable for each activity and each subject. Then, the data is saved in the file "TidyDataAverages.txt".

## Explanation of the run_analysis.R Script

It is assumed that the raw data is dowloaded and unzipped in the working directory. 

The "run_analysis.R" script requires the installation of the dplyr-package.

First, we read the data from the folders contained in "UCI HAR Dataset". Note that the raw data is separated into test data and training data. The file "subject_train" contains the subject identities of each measurement, "X_train" the explicit measurements and "y_train" the activity that is performed during each measurement all corresponding to the subjects that belong to the training set. We read the files "subject_train", "X_train", "y_train" and save them into the data frames train_subject_ids, train_total, train_activities. Then, we use the cbind() command to append train_subject_ids and train_activities to train_total. The new columnes are named "subjects" and "activity". We perform the same steps with the testing data sets which yields the data frame test_total.

Next, we follow the 5-step outline from the previous section:

1. We merge the data frames test_total and training_total to a single data frame called total_data using the rbind() command.
2. The relevant column indices of total_data that contain the measurements of the mean and standard deviation can be read off from the "feature.txt" file. Using the select() command, we extract these data from total_data and save them again in total_data.
3. Via the mutate() and factor() commands, we relabel the numeric values for activity by descriptive character strings.
4. Using the names() command, we relabel the column names of total_data with the descriptive variable names from the code book.
5. Applying the group_by() and summarize_all() commands yields a new data set containing the average of each variable for each activity and each subject. We store these data in a data frame called averages. Then, using the write() command, we create the file "TidyDataAverages.txt" in the working directory.

## Why is the data set tidy?

In general, a data set is considered as tidy if the following three conditions are satisfied:

1. Each variable forms a column.
2. Each observation forms a row.
3. Each type of observational unit forms a table.

All observable variables as well as the subject identity and the activity have their own column. Therefore, the first condition is satisfied. In our table each row contains a single observation, namely the subject identity, the activity and several average values based on the measurements that belong to that pair of subject identity and activity. Hence the second condition is also satisfied. The whole table can be viewed as a single observational unit as we consider all pairs of subject identities and activities and their respective attached average values based on the measurements from the experiment. Consequently, all desired properties are satisfied.


