## Getting and Cleaning Data Course Project

This repository contains the files required for the *Getting and Cleaning Data* Course Project:
- script performing the required analysis: run_analysis.R
- the tidy dataset return by the script : tidy_data_set.txt
- the codebook describing the dataset variables and how they were obtained: codebook.md
- the present readme file: ReadMe.md

### Script

#### Data
The data consist of a test and train dataset collected from the accelerometers from the Samsung Galaxy S smartphone.
The raw data are found in ./UCI HAR dataset/train|test/inertials.
The variables computed from the raw data and used in the script are in  ./UCI HAR dataset/train|test/X_train|test.txt and described in details in  ./UCI HAR dataset/features_info.txt
The subject and activity index are in ./UCI HAR dataset/train|test/subject_train|test.txt and ./UCI HAR dataset/train|test/y_train|test.txt respectively1

#### Actions performed on the data
The training and test set are merged and tidied.
The variables from the data set reporting means and standard deviations are extracted. (see codebook for details)
The average fo this value for each subject and each activity is computed and saved in the file tidy_data_set.txt.
