# MeanAndSDDatasetExtract.R

setwd("C:\\cdjProgramming\\coursera\\getting and cleaning data\\week4\\progassignment\\week4GaCdataproject")

# load activities
colnames <- c("id", "activity")
activity_labels <- read.table("..\\UCI HAR Dataset\\activity_labels.txt", sep=" ", col.names=colnames)

# load TEST datasets
colnames <- c("id")
subject_test <- read.table("..\\UCI HAR Dataset\\test\\subject_test.txt", sep=" ", col.names=colnames)
x_test <- read.table("..\\UCI HAR Dataset\\test\\x_test.txt", sep=" ", fill=TRUE)
y_test <- read.table("..\\UCI HAR Dataset\\test\\y_test.txt", sep=" ")
message("x/y test loaded")

body_acc_x_test <- read.table("..\\UCI HAR Dataset\\test\\Inertial Signals\\body_acc_x_test.txt", sep=" ", fill=TRUE)
body_acc_y_test <- read.table("..\\UCI HAR Dataset\\test\\Inertial Signals\\body_acc_y_test.txt", sep=" ", fill=TRUE)
body_acc_z_test <- read.table("..\\UCI HAR Dataset\\test\\Inertial Signals\\body_acc_z_test.txt", sep=" ", fill=TRUE)
body_gyro_x_test <- read.table("..\\UCI HAR Dataset\\test\\Inertial Signals\\body_gyro_x_test.txt", sep=" ", fill=TRUE)
body_gyro_y_test <- read.table("..\\UCI HAR Dataset\\test\\Inertial Signals\\body_gyro_y_test.txt", sep=" ", fill=TRUE)
body_gyro_z_test <- read.table("..\\UCI HAR Dataset\\test\\Inertial Signals\\body_gyro_z_test.txt", sep=" ", fill=TRUE)
total_acc_x_test <- read.table("..\\UCI HAR Dataset\\test\\Inertial Signals\\total_acc_x_test.txt", sep=" ", fill=TRUE)
total_acc_y_test <- read.table("..\\UCI HAR Dataset\\test\\Inertial Signals\\total_acc_y_test.txt", sep=" ", fill=TRUE)
total_acc_z_test <- read.table("..\\UCI HAR Dataset\\test\\Inertial Signals\\total_acc_z_test.txt", sep=" ", fill=TRUE)
message("test inertial loaded")

# load TRAIN datasets
colnames <- c("id")
subject_train <- read.table("..\\UCI HAR Dataset\\train\\subject_train.txt", sep=" ", col.names=colnames)
x_train <- read.table("..\\UCI HAR Dataset\\train\\x_train.txt", sep=" ", fill=TRUE)
y_train <- read.table("..\\UCI HAR Dataset\\train\\y_train.txt", sep=" ")
message("x/y training loaded")

body_acc_x_train <- read.table("..\\UCI HAR Dataset\\train\\Inertial Signals\\body_acc_x_train.txt", sep=" ", fill=TRUE)
body_acc_y_train <- read.table("..\\UCI HAR Dataset\\train\\Inertial Signals\\body_acc_y_train.txt", sep=" ", fill=TRUE)
body_acc_z_train <- read.table("..\\UCI HAR Dataset\\train\\Inertial Signals\\body_acc_z_train.txt", sep=" ", fill=TRUE)
body_gyro_x_train <- read.table("..\\UCI HAR Dataset\\train\\Inertial Signals\\body_gyro_x_train.txt", sep=" ", fill=TRUE)
body_gyro_y_train <- read.table("..\\UCI HAR Dataset\\train\\Inertial Signals\\body_gyro_y_train.txt", sep=" ", fill=TRUE)
body_gyro_z_train <- read.table("..\\UCI HAR Dataset\\train\\Inertial Signals\\body_gyro_z_train.txt", sep=" ", fill=TRUE)
total_acc_x_train <- read.table("..\\UCI HAR Dataset\\train\\Inertial Signals\\total_acc_x_train.txt", sep=" ", fill=TRUE)
total_acc_y_train <- read.table("..\\UCI HAR Dataset\\train\\Inertial Signals\\total_acc_y_train.txt", sep=" ", fill=TRUE)
total_acc_z_train <- read.table("..\\UCI HAR Dataset\\train\\Inertial Signals\\total_acc_z_train.txt", sep=" ", fill=TRUE)
message("training inertial loaded")
