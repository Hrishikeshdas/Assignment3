if(!file.exists("/.data")) {dir.create("/.data")}
fileurl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
smartphone <- download.file(fileurl, destfile = "smartphone.zip")
unzip <- unzip("smartphone.zip", exdir = "/.data")
# test set data extract
X_test <- read.table("/.data/UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("/.data/UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("/.data/UCI HAR Dataset/test/subject_test.txt")
# training set data extract
X_train <- read.table("/.data/UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("/.data/UCI HAR Dataset/train/y_train.txt")
subject_train <- read.table("/.data/UCI HAR Dataset/train/subject_train.txt")
# features data extract
feature <- read.table("/.data/UCI HAR Dataset/features.txt")
# activity labels data extract
activity_label <- read.table("/.data/UCI HAR Dataset/activity_labels.txt")
# assignment column names
colnames(X_test) <- feature[,2]
colnames(y_test) <- "activityid"
colnames(subject_test) <- "subjectid"

colnames(X_train) <- feature[,2]
colnames(y_train) <- "activityid"
colnames(subject_train) <- "subjectid"

colnames(activity_label) <- c("activityid", "activitytype")

# merge the data set
mrg_test <- cbind(X_test, y_test, subject_test)
mrg_train <- cbind(X_train, y_train, subject_train)
setAllInOne <- rbind(mrg_test, mrg_train)

# reading colunm names
colnames <- colnames(setAllInOne)

# Create vector for defining ID, mean and standard deviation
mean_and_std <- (grepl("activityid", colnames) |
  grepl("subjectid", colnames) |
  grepl("mean..", colnames) |
  grepl("std..", colnames))
# Making nessesary subset from setall
setall_mean_std <- setAllInOne[ , mean_and_std == TRUE]
# Using descriptive activity names to name the activities in the data set
setallactivity <- merge(setall_mean_std, activity_label, by = "activityid", all.X = TRUE)
# Making second tidy data set
sectidyset <- aggregate(.~subjectid + activityid, setallactivity, mean)
sectidyset <- sectidyset[order(sectidyset$subjectid, sectidyset$activityid),]

write.table(sectidyset, file = "sectidyset.txt", row.names = FALSE)













