
## Getting Features and Activity labels

features <-    read.table("features.txt")
Afeatures<- features$V2
activitylabel<- read.table("activity_labels.txt")
Aactivitylabel<- activitylabel$V2

## Loading Test data

subjecttest <- read.table("subject_test.txt")
test <- read.table("X_test.txt")
testlabel <- read.table("y_test.txt")

## Loading Train data

subjecttrain <- read.table("subject_train.txt")
train <- read.table("X_train.txt")
trainlabel <- read.table("y_train.txt")

## Combining Test and Train data frames

subjecttraintest <- rbind(subjecttrain,subjecttest)
traintestlabel <- rbind(trainlabel,testlabel)
traintest <- rbind(train,test)

## Naming columns of combined dataframes

names(traintest) <- Afeatures
traintestlabel[traintestlabel$V1 == 1,] <- "WALKING" 
traintestlabel[traintestlabel$V1 == 2,] <- "WALKING_UPSTAIRS"
traintestlabel[traintestlabel$V1 == 3,] <- "WALKING_DOWNSTAIRS"
traintestlabel[traintestlabel$V1 == 4,] <- "SITTING"
traintestlabel[traintestlabel$V1 == 5,] <- "STANDING"
traintestlabel[traintestlabel$V1 == 6,] <- "LAYING"
names(traintestlabel) <- "Activity"
names(subjecttraintest) <- "Subject"


## Adding Activity and Subject to complete the dataframe

completetraintest <- cbind(traintestlabel,subjecttraintest,traintest)

#----------------Data Frame Merged with appropraite naming-------------#

## Extracting data of Mean and Std
xy <- select(completetraintest, contains(c("Activity","Subject","mean","std")))

#----------------------------------------------------------------------#

## Subsetting Data based on Activity


walk <-xy[xy$Activity == "WALKING",]
standing <-xy[xy$Activity =="STANDING",]
walk_upstairs <-xy[xy$Activity =="WALKING_UPSTAIRS",]
sit<-xy[xy$Activity =="SITTING",]
lay<-xy[xy$Activity =="LAYING",]
walk_downstairs<-xy[xy$Activity =="WALKING_DOWNSTAIRS",]

## Grouping by Activity and Subject

yL <- xy %>% group_by(Activity,Subject)
 
#------------------------------------------------------------------------#






