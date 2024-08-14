# Transition from raw to tidy data

## Outline of Transition

The transformation from the raw data files to the file "TidyDataAverages.txt" follows the following five steps which are also indicated in the description of the course project:

1. The training and testing data sets are merged to a single data set.
2. The measurements on the mean and standard deviation for each measurement are extracted from this data set. Here, we do not view the frequency-mean measurements as measurements of the mean.
3. Relabel the numeric values for activity by descriptive character strings.
4. Add descriptive variable names that explain the signals and whether the mean or standard deviation is taken.
5. We create a new table with tidy data containing the average of each variable for each activity and each subject. Then, the data is saved in the file "TidyDataAverages.txt".

## Explanation of the run_analysis.R Script
The "run_analysis.R" script requires the installation of the dplyr-package.



