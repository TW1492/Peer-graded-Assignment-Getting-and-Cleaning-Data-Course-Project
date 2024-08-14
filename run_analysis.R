#Date: 12.08.2024
#Author: T.W.

#Load dplyr package
library(dplyr)


#Read training data
train_total <- read.table("./UCI HAR Dataset/train/X_train.txt", header=FALSE)
train_activities <- read.table("./UCI HAR Dataset/train/y_train.txt", header=FALSE)
train_subject_ids <- read.table("./UCI HAR Dataset/train/subject_train.txt", header=FALSE)


#Read testing data
test_total <- read.table("./UCI HAR Dataset/test/X_test.txt", header=FALSE)
test_activities <- read.table("./UCI HAR Dataset/test/y_test.txt", header=FALSE)
test_subject_ids <- read.table("./UCI HAR Dataset/test/subject_test.txt", header=FALSE)

#Rename the variables in train_activities and test_activities to "Activity"
names(train_activities) <- "activity"
names(test_activities) <- "activity"

#Rename the variables in train_subject_ids and test_subject_ids to "Subject"
names(train_subject_ids) <- "subject"
names(test_subject_ids) <- "subject"

#Add activitiy and subjectcolumn to test_total and train_total respectively
train_total <- cbind(train_subject_ids, train_activities, train_total)
test_total <- cbind(test_subject_ids, test_activities, test_total)

#Merging train_total and test_total to a single data frame called total_data 
#This concludes step 1 in the outline of the exercise
total_data <- rbind(train_total, test_total)

#Define a vector that contains all column indices of measurements on the mean and standard 
#deviation as well as subject identity and activity. Note at this point that we do not count frequence means
#as measurements on the mean. Only data which are evaluated via the mean() function in the raw data set are 
#considered as measurements on the mean.

wanted_columns <-c(1:8,43:48,83:88,123:128,163:168,203:204,216:217,229:230,242:243,255:256,268:273,
347:352,426:431, 505:506, 518:519, 531:532, 544:545)

#Select the wanted columns from total_data.
#This concludes step 2 in the outline of the exercise.
total_data <- select(total_data, all_of(wanted_columns))

#Replace the numeric values in the activity column of total_data by descriptive activity names.
#This concludes step 3 in the outline of the exercise.
total_data <- mutate(total_data, activity=factor(activity, levels=1:6, labels= c("walking", "walking upstairs", 
"walking downstairs", "sitting", "standing", "laying")))

#Label the columns of total_data that correspond to mean and standard deviation measurements with descriptive
#variable names. Note that there are 66 column names that have to be introduced. 
#This concludes step 4 in the outline of the exercise.

names(total_data)[3:68] <- c("mean_body_acc_X",
"mean_body_acc_Y",
"mean_body_acc_Z",
"sd_body_acc_X",
"sd_body_acc_Y",
"sd_body_acc_Z",
"mean_gravity_acc_X",
"mean_gravity_acc_Y",
"mean_gravity_acc_Z",
"sd_gravity_acc_X",
"sd_gravity_acc_Y",
"sd_gravity_acc_Z",
"mean_body_jerk_X",
"mean_body_jerk_Y",
"mean_body_jerk_Z",
"sd_body_jerk_X",
"sd_body_jerk_Y",
"sd_body_jerk_Z",
"mean_body_ang_velocity_X",
"mean_body_ang_velocity_Y",
"mean_body_ang_velocity_Z",
"sd_body_ang_velocity_X",
"sd_body_ang_velocity_Y",
"sd_body_ang_velocity_Z",
"mean_body_ang_jerk_X",
"mean_body_ang_jerk_Y",
"mean_body_ang_jerk_Z",
"sd_body_ang_jerk_X",
"sd_body_ang_jerk_Y",
"sd_body_ang_jerk_Z",
"mean_body_acc_mag",
"sd_body_acc_mag",
"mean_gravity_acc_mag",
"sd_gravity_acc_mag",
"mean_body_jerk_mag",
"sd_body_jerk_mag",
"mean_body_ang_velocity_mag",
"sd_body_ang_velocity_mag",
"mean_body_ang_jerk_mag",
"sd_body_ang_jerk_mag",
"mean_fastFourier_body_acc_X",
"mean_fastFourier_body_acc_Y",
"mean_fastFourier_body_acc_Z",
"sd_fastFourier_body_acc_X",
"sd_fastFourier_body_acc_Y",
"sd_fastFourier_body_acc_Z",
"mean_fastFourier_body_jerk_X",
"mean_fastFourier_body_jerk_Y",
"mean_fastFourier_body_jerk_Z",
"sd_fastFourier_body_jerk_X",
"sd_fastFourier_body_jerk_Y",
"sd_fastFourier_body_jerk_Z",
"mean_fastFourier_body_ang_velocity_X",
"mean_fastFourier_body_ang_velocity_Y",
"mean_fastFourier_body_ang_velocity_Z",
"sd_fastFourier_body_ang_velocity_X",
"sd_fastFourier_body_ang_velocity_Y",
"sd_fastFourier_body_ang_velocity_Z",
"mean_fastFourier_body_acc_mag",
"sd_fastFourier_body_acc_mag",
"mean_fastFourier_body_jerk_mag",
"sd_fastFourier_body_jerk_mag",
"mean_fastFourier_body_ang_velocity_mag",
"sd_fastFourier_body_ang_velocity_mag",
"mean_fastFourier_body_ang_jerk_mag",
"sd_fastFourier_body_ang_jerk_mag")

#Create a new data frame which is a tidy data set and contains the average of each variable of total_data
#for each activity and each subject.
#This concludes step 5 in the outline of the exercise.

averages <- total_data %>%group_by(subject, activity)%>%summarise_all(mean)

#Adjust column names of averages by adding avg_ to the column names containing averages of
#means and standard deviations

names(averages)[3:68]<- paste("avg_", names(averages)[3:68])

#Write the tidy data set into a table
write.table(averages, "TidyDataAverages.txt", row.name=FALSE)






