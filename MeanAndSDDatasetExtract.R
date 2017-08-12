# MeanAndSDDatasetExtract.R

# clean space - FOR TESTING ONLY
rm(list = ls())
message("environment cleared")


setwd("C:\\cdjProgramming\\coursera\\getting and cleaning data\\week4\\progassignment\\week4GaCdataproject")


# load activities
colnames <- c("id", "activity")
activity_labels <- read.table("..\\UCI HAR Dataset\\activity_labels.txt", col.names=colnames)
message("activity labels loaded")


# load features
colnames <- c("id", "feature")
features <- read.table("..\\UCI HAR Dataset\\features.txt", col.names=colnames)
message("features loaded")


# load TEST datasets
colnames <- c("id")
subject_test <- read.table("..\\UCI HAR Dataset\\test\\subject_test.txt", col.names=colnames)
x_test <- read.table("..\\UCI HAR Dataset\\test\\x_test.txt")
y_test <- read.table("..\\UCI HAR Dataset\\test\\y_test.txt")
message("x/y test loaded")


#not needed
#body_acc_x_test <- read.table("..\\UCI HAR Dataset\\test\\Inertial Signals\\body_acc_x_test.txt")
#body_acc_y_test <- read.table("..\\UCI HAR Dataset\\test\\Inertial Signals\\body_acc_y_test.txt")
#body_acc_z_test <- read.table("..\\UCI HAR Dataset\\test\\Inertial Signals\\body_acc_z_test.txt")
#body_gyro_x_test <- read.table("..\\UCI HAR Dataset\\test\\Inertial Signals\\body_gyro_x_test.txt")
#body_gyro_y_test <- read.table("..\\UCI HAR Dataset\\test\\Inertial Signals\\body_gyro_y_test.txt")
#body_gyro_z_test <- read.table("..\\UCI HAR Dataset\\test\\Inertial Signals\\body_gyro_z_test.txt")
#total_acc_x_test <- read.table("..\\UCI HAR Dataset\\test\\Inertial Signals\\total_acc_x_test.txt")
#total_acc_y_test <- read.table("..\\UCI HAR Dataset\\test\\Inertial Signals\\total_acc_y_test.txt")
#total_acc_z_test <- read.table("..\\UCI HAR Dataset\\test\\Inertial Signals\\total_acc_z_test.txt")
#message("test inertial loaded")


# load TRAIN datasets
colnames <- c("id")
subject_train <- read.table("..\\UCI HAR Dataset\\train\\subject_train.txt", col.names=colnames)
x_train <- read.table("..\\UCI HAR Dataset\\train\\x_train.txt")
y_train <- read.table("..\\UCI HAR Dataset\\train\\y_train.txt")
message("x/y training loaded")


#not needed
#body_acc_x_train <- read.table("..\\UCI HAR Dataset\\train\\Inertial Signals\\body_acc_x_train.txt")
#body_acc_y_train <- read.table("..\\UCI HAR Dataset\\train\\Inertial Signals\\body_acc_y_train.txt")
#body_acc_z_train <- read.table("..\\UCI HAR Dataset\\train\\Inertial Signals\\body_acc_z_train.txt")
#body_gyro_x_train <- read.table("..\\UCI HAR Dataset\\train\\Inertial Signals\\body_gyro_x_train.txt")
#body_gyro_y_train <- read.table("..\\UCI HAR Dataset\\train\\Inertial Signals\\body_gyro_y_train.txt")
#body_gyro_z_train <- read.table("..\\UCI HAR Dataset\\train\\Inertial Signals\\body_gyro_z_train.txt")
#total_acc_x_train <- read.table("..\\UCI HAR Dataset\\train\\Inertial Signals\\total_acc_x_train.txt")
#total_acc_y_train <- read.table("..\\UCI HAR Dataset\\train\\Inertial Signals\\total_acc_y_train.txt")
#total_acc_z_train <- read.table("..\\UCI HAR Dataset\\train\\Inertial Signals\\total_acc_z_train.txt")
#message("training inertial loaded")



# slap column names horizontally on top of the tables
colnames(x_train) <- features[,2] 
colnames(x_test) <- features[,2] 

colnames(y_train) <-"ActivityID"
colnames(y_test) <- "ActivityID"

colnames(subject_train) <- "SubjectID"
colnames(subject_test) <- "SubjectID"

colnames(activity_labels) <- c('ActivityID','Activity')
message("column names assigned")


# paste tables into one big dataset
data_train <- cbind(y_train, subject_train, x_train)
data_test <- cbind(y_test, subject_test, x_test)
data <- rbind(data_train, data_test)
message("complete dataset created")


# get mean/sd columns
cols.mean_std <- grep("mean\\(\\)|std\\(\\)|mean|std|MEAN|STD|SD|sd|ActivityID|SubjectID", names(data), value=T)
data.mean_sd <- data[, cols.mean_std]
message("mean/sd columns extracted")


# replace activityid with actual name. 
# we do this now instead of earlier for efficiency (smaller dataset being joined after the column projection)
data.mean_sd <- merge(data.mean_sd, activity_labels,
                              by='ActivityID',
                              all.x=TRUE)
data.mean_sd <- data.mean_sd[,c(1, 2, 82, 3:81)]
message("activity names added by join")
