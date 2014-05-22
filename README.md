GettingAndCleaningData-CourseProject
====================================

Course Project for the Getting and Cleaning Data class on Coursera

The run.analysis.R script is used to transform raw data from accelerometers on the Samsung Galaxy S smartphone into tidy and easily understandable data for furthur analysis.

The raw data is available at https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip. A detailed description of the raw data can be found at http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones.

For this script to work correctly, the .zip file should be downloaded and unzipped into the working directory. After doing this, you should have a folder titled "UCI HAR Dataset" in your working directory.

The script reads the data from the various sources into R, appends them into one data set, subsets the measures with mean and standard deviation values, cleans up the variable names, and outputs a summarized data set. More detail about the specific transformations done can be found in the codebook.MD file.

The script will write the output ("tinydata.csv") to the working directory. 
