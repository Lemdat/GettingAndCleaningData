## Script for data cleaning course JHU Coursera

library(dplyr)
library(reshape2)

    # download and unzip data

if (!dir.exists("./data")) dir.create("data")
fileurl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileurl, "./data/data.zip")
unzip("./data/data.zip", exdir = "./data")

    # merge data set for x y and subject are created
    #     merge X_train with X_test. set colnames using lines from feature.txt

x_train <- read.table("./data/UCI HAR Dataset/train/X_train.txt")
x_test <- read.table("./data/UCI HAR Dataset/test/X_test.txt")
x_data <- rbind(x_train, x_test)
colnames(x_data) <- readLines("./data/UCI HAR Dataset/features.txt")

    #     merge y_train with y_test

y_train <- read.table("./data/UCI HAR Dataset/train/y_train.txt")
y_test <- read.table("./data/UCI HAR Dataset/test/y_test.txt")
y_data <- rbind(y_train, y_test)
colnames(y_data) <- "activity"

    #     merge subject_train with subject_test

subject_train <- read.table("./data/UCI HAR Dataset/train/subject_train.txt")
subject_test <- read.table("./data/UCI HAR Dataset/test/subject_test.txt")
subject_data <- rbind(subject_train, subject_test)
colnames(subject_data) <- "subject_id"

dataset <- cbind(subject_data, y_data, x_data)
dataset <- tbl_df(dataset)

    # extract measurements on the mean and standard deviation for each measurement
    # mean( search to avoid parameters computed of the type deviation from mean or the freqmean
    # Subject_id and activity columns are kept

dataset <- select(dataset, c(subject_id,activity,grep("std|mean\\(",colnames(dataset))))

    # change activity column to descriptive activity name
    # get activity name from activity_labels.txt

activitylabel <- read.table("./data/UCI HAR Dataset/activity_labels.txt")
dataset$activity <- activitylabel[dataset$activity,2]

    # Change labels of the data set variable
    #     Remove former column number from label
    #     Remove special characters from label

colnames(dataset) <- sub("^[0-9]* ","",colnames(dataset))
colnames(dataset) <- sub("-mean\\(\\)-?","_mean_",colnames(dataset))
colnames(dataset) <- sub("-std\\(\\)-?","_std_",colnames(dataset))




    # Creates a data set with the average of each variable for each activity and each subject

melt_dataset <- melt(dataset, id.vars = c("subject_id", "activity"), measure.vars = colnames(dataset)[-(1:2)])
aver_dataset <- dcast(melt_dataset, subject_id + activity ~ variable,mean)

    # write dataset in csv file

write.csv(aver_dataset,"tidy_data_set.csv")



