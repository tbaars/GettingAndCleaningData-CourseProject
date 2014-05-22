Codebook - Getting and Cleaning Data Course Project
========================================================

Study Design
--------------------------------------------------------

The data in this dataset represent summarized data from accelerometers from the Sansung Galaxy S smartphone. 

The raw data for this dataset are available at https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip. A detailed description of the raw data can be found at http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones.

The raw data was downloaded from the link above and transformed in several steps:

1. The test (X_test.txt) and training data (X_train.txt) were combined into one dataset
2. Subject IDs were appended to the dataset to indicate which subject or participant the measure is for.
3. Activity codes (Y_test.txt and Y_train.txt) and labels (activity_labels.txt) were appended to the dataset. The activity labels indicate which activity (e.g. "Walking") the subject was doing when the measure was taken.
4. Variable labels were added from the features.txt file to indicate what each measure represents.
5. Only the measures with mean and standard deviation values were extracted. To determine which measures from the raw dataset to extract, I made a judgement based on the labels provided to determine which measures represented mean and standard deviation values.
6. Variable labels were cleaned up to make them more readable. Specifically, I removed extraneous parenthesese and hyphens.
7. Each measure was summarized by subject and activity by taking the mean. That is, for each subject and activity, the mean was taken for each measure. 

The resulting data set ("tidydata.csv") represents the mean value of each measure for each subject and activity. 

Code book
--------------------------------------------------------

The table below shows the variables in the dataset, as well as a description of each variable. Some of the descriptions reference variables found in the raw dataset (e.g. "tBodyAcc-mean()-X"). More detailed information about these raw variables can be found in the raw dataset at the links above. The naming convention I used was to take the variable name as found in the raw data, remove parentheses and hyphens, and to adjust the mean and standard deviation designation to be more readable (e.g., "mean" was changed to "Mean", "std" was changed to "StdDev").

| Variable                    | Description                             |
|-----------------------------|-----------------------------------------|
| Subject                     | Study subject number                    |
| ActivityLabel               | Description of activity                 |
| tBodyAccMeanX               | Mean of tBodyAcc-mean()-X               |
| tBodyAccMeanY               | Mean of tBodyAcc-mean()-Y               |
| tBodyAccMeanZ               | Mean of tBodyAcc-mean()-Z               |
| tBodyAccStdDevX             | Mean of tBodyAcc-std()-X                |
| tBodyAccStdDevY             | Mean of tBodyAcc-std()-Y                |
| tBodyAccStdDevZ             | Mean of tBodyAcc-std()-Z                |
| tGravityAccMeanX            | Mean of tGravityAcc-mean()-X            |
| tGravityAccMeanY            | Mean of tGravityAcc-mean()-Y            |
| tGravityAccMeanZ            | Mean of tGravityAcc-mean()-Z            |
| tGravityAccStdDevX          | Mean of tGravityAcc-std()-X             |
| tGravityAccStdDevY          | Mean of tGravityAcc-std()-Y             |
| tGravityAccStdDevZ          | Mean of tGravityAcc-std()-Z             |
| tBodyAccJerkMeanX           | Mean of tBodyAccJerk-mean()-X           |
| tBodyAccJerkMeanY           | Mean of tBodyAccJerk-mean()-Y           |
| tBodyAccJerkMeanZ           | Mean of tBodyAccJerk-mean()-Z           |
| tBodyAccJerkStdDevX         | Mean of tBodyAccJerk-std()-X            |
| tBodyAccJerkStdDevY         | Mean of tBodyAccJerk-std()-Y            |
| tBodyAccJerkStdDevZ         | Mean of tBodyAccJerk-std()-Z            |
| tBodyGyroMeanX              | Mean of tBodyGyro-mean()-X              |
| tBodyGyroMeanY              | Mean of tBodyGyro-mean()-Y              |
| tBodyGyroMeanZ              | Mean of tBodyGyro-mean()-Z              |
| tBodyGyroStdDevX            | Mean of tBodyGyro-std()-X               |
| tBodyGyroStdDevY            | Mean of tBodyGyro-std()-Y               |
| tBodyGyroStdDevZ            | Mean of tBodyGyro-std()-Z               |
| tBodyGyroJerkMeanX          | Mean of tBodyGyroJerk-mean()-X          |
| tBodyGyroJerkMeanY          | Mean of tBodyGyroJerk-mean()-Y          |
| tBodyGyroJerkMeanZ          | Mean of tBodyGyroJerk-mean()-Z          |
| tBodyGyroJerkStdDevX        | Mean of tBodyGyroJerk-std()-X           |
| tBodyGyroJerkStdDevY        | Mean of tBodyGyroJerk-std()-Y           |
| tBodyGyroJerkStdDevZ        | Mean of tBodyGyroJerk-std()-Z           |
| tBodyGyroJerkcorrelationY,Z | Mean of tBodyGyroJerk-correlation()-Y,Z |
| tBodyAccMagMean             | Mean of tBodyAccMag-mean()              |
| tGravityAccMagMean          | Mean of tGravityAccMag-mean()           |
| tGravityAccMagStdDev        | Mean of tGravityAccMag-std()            |
| tBodyAccJerkMagMean         | Mean of tBodyAccJerkMag-mean()          |
| tBodyAccJerkMagStdDev       | Mean of tBodyAccJerkMag-std()           |
| tBodyGyroMagMean            | Mean of tBodyGyroMag-mean()             |
| tBodyGyroMagStdDev          | Mean of tBodyGyroMag-std()              |
| tBodyGyroJerkMagMean        | Mean of tBodyGyroJerkMag-mean()         |
| tBodyGyroJerkMagStdDev      | Mean of tBodyGyroJerkMag-std()          |
| fBodyAccMeanX               | Mean of fBodyAcc-mean()-X               |
| fBodyAccMeanY               | Mean of fBodyAcc-mean()-Y               |
| fBodyAccMeanZ               | Mean of fBodyAcc-mean()-Z               |
| fBodyAccStdDevX             | Mean of fBodyAcc-std()-X                |
| fBodyAccStdDevY             | Mean of fBodyAcc-std()-Y                |
| fBodyAccStdDevZ             | Mean of fBodyAcc-std()-Z                |
| fBodyAccJerkMeanX           | Mean of fBodyAccJerk-mean()-X           |
| fBodyAccJerkMeanY           | Mean of fBodyAccJerk-mean()-Y           |
| fBodyAccJerkMeanZ           | Mean of fBodyAccJerk-mean()-Z           |
| fBodyAccJerkStdDevX         | Mean of fBodyAccJerk-std()-X            |
| fBodyAccJerkStdDevY         | Mean of fBodyAccJerk-std()-Y            |
| fBodyAccJerkStdDevZ         | Mean of fBodyAccJerk-std()-Z            |
| fBodyGyroMeanX              | Mean of fBodyGyro-mean()-X              |
| fBodyGyroMeanY              | Mean of fBodyGyro-mean()-Y              |
| fBodyGyroMeanZ              | Mean of fBodyGyro-mean()-Z              |
| fBodyGyroStdDevX            | Mean of fBodyGyro-std()-X               |
| fBodyGyroStdDevY            | Mean of fBodyGyro-std()-Y               |
| fBodyGyroStdDevZ            | Mean of fBodyGyro-std()-Z               |
| fBodyAccMagMean             | Mean of fBodyAccMag-mean()              |
| fBodyAccMagStdDev           | Mean of fBodyAccMag-std()               |
| fBodyBodyAccJerkMagMean     | Mean of fBodyBodyAccJerkMag-mean()      |
| fBodyBodyAccJerkMagStdDev   | Mean of fBodyBodyAccJerkMag-std()       |
| fBodyBodyGyroMagMean        | Mean of fBodyBodyGyroMag-mean()         |
| fBodyBodyGyroMagStdDev      | Mean of fBodyBodyGyroMag-std()          |
| fBodyBodyGyroJerkMagMean    | Mean of fBodyBodyGyroJerkMag-mean()     |
| fBodyBodyGyroJerkMagStdDev  | Mean of fBodyBodyGyroJerkMag-std()      |
| Activity                    | Activity number                         |
