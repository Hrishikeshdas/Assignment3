
## Code Book for Course Project

### Overview

[Source](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) of the original data:

	https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

[Full Description](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) at the site where the data was obtained:

	http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
	
### Process

The script `run_analysis.R` performs the following process to clean up the data
and create tiny data sets:

## Code Book for Course Project

### Overview

[Source](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) of the original data:

	https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

[Full Description](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) at the site where the data was obtained:

	http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
	
### Process

The script performs the following process to clean up the data
and create tiny data sets:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

### Variables

- X_test - table contents of `test/X_test.txt`
- X_train - table contents of `train/X_train.txt`
- Y_test - table contents of `test/Y_test.txt`
- Y_train - table contents of `train/Y_train.txt`
- subject_test - table contents of 'test/subject_test.txt'
- subject_train - table contents of 'test/subject_train.txt'
- feature - table contents of 'features.txt'
- activity_label - table contents of 'activity_labels.txt'
- colnames (X_test) - feature [,2]
- colnames (X_train) - feature [,2]
- colnames (Y_test) - "activity id"
- colnames (Y_train) - "activity id"
- colnames(subject_test) - "subjectid"
- colnames(subject_train) - "subjectid"
- setAllInOne - combined dataset
- mean_and_std - Create vector for defining ID, mean and standard deviation
- setall_mean_std - Making nessesary subset from setall
- setallactivity - Using descriptive activity names to name the activities in the data set
- sectidyset - making tidy dataset

# Output

#### Sectidyset.txt

`tidyData.txt` is a 10299x68 data frame.


