# Project Overview:
The project comprises of getting and cleaning data using R programming language. The data set used here is collected using accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones. The objectives of the project are listed as follows:
- Merges the training and the test sets to create one data set.
- Extracts only the measurements on the mean and standard deviation for each measurement. 
- Uses descriptive activity names to name the activities in the data set
- Appropriately labels the data set with descriptive variable names. 
- From the data set in above step, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

The data for the project was obtained from: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip  

## Procedure:

### Step No 1: Getting Features Names and Activity labels
In this step we extracted the feature names and activity labels from features.txt and activity_label.txt and saved them in variables Afeatures(the variables which are measured) and Aactivitylabel(the activities during which features are measured like Standing, Walking etc. They are numbered from 1 to 6, depending on the activity) respectively.

### Step No 2: Loading Test data and Train data
The data is divided into testing sets (30%) and training sets (70%). These include files as subject (i.e.participants are named 1 to 30), labels(1-6) and data readings for both test and training data.

### Step No 3: Combining Test and Train data frames
The data set from Step 2 are now combined and formed first dataframe with test and train observations together.

### Step No 4: Naming columns of combined dataframes in Step No 3:
In this step we have given desccriptive names to our data frame

### Step No 5: Adding Activity and Subject to complete the dataframe
This step yields a final master data frame.

### Step No 6: Extracting data of Mean and Std
As per instructions we have to extract Mean and Std observations from data frame for further calucations

### Step No 7: Grouping by Activity and Subject
We are required to group by the subject and then activity.

## Variables:
Afeatures = The variables which are measured

Aactivitylabel = Activity labels (1 WALKING , 2 WALKING_UPSTAIRS , 3 WALKING_DOWNSTAIRS , 4 SITTING , 5 STANDING , 6 LAYING)

subjecttest , subjecttrain = Subjects for test and train data sets.

test , train = Observations for test and train data sets.

testlabel, trainlabel = labels for test and train data sets.

subjecttraintest = Combined dataframe of Subjects of test and train data sets

traintestlabel = Combined dataframe of Labels of test and train data sets

traintest = Combined dataframe of Observations of test and train data sets

completetraintest = Final Master data frame

xy = dataframe of observations of "Activity","Subject","mean","std"

yL = data frame grouped by Activity and then Subject
