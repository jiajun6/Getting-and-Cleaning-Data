## GETTING AND CLEANING DATA COURSE PROJECT

## DATA PREPARATION

     # Create "data" directory, if not yet existing
     if (!file.exists ("./data"))
     {
          dir.create ("./data")
     }

     # Download Source Data File, if not yet existing
     if (!file.exists ("./data/getdata-projectfiles-UCI HAR Dataset.zip"))
     {
          fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
          download.file (fileUrl, destfile="./data/getdata-projectfiles-UCI HAR Dataset.zip")  
     }

     # Unzip the UCI HAR Dataset, if not yet uncompressed     
     if (!file.exists ("./data/UCI HAR Dataset"))
     {
          unzip (zipfile="./data/getdata-projectfiles-UCI HAR Dataset.zip", exdir="./data")
     }

   ## LOAD SOURCE UCI HAR DATA INTO R

     # Load Features (Measurements) file into R 
     measurement <- read.table("./data/UCI HAR Dataset/features.txt", sep=" ", 
                               col.names=c("measurementId","measurementDesc"), stringsAsFactors=FALSE)
     
          # Make Syntactically valid names of measurementDesc and add as another column in measurement data
          measurement$measurementName <- make.names (measurement$measurementDesc)

     # Load Activity Labels file into R 
     activity <- read.table("./data/UCI HAR Dataset/activity_labels.txt", sep=" ", 
                               col.names=c("activityId","activityDesc"), stringsAsFactors=FALSE)

     # Load Train and Test Subjects file into R 
     trainSubject <- read.table("./data/UCI HAR Dataset/train/subject_train.txt", col.names=c("subjectId"))
     testSubject <- read.table("./data/UCI HAR Dataset/test/subject_test.txt", col.names=c("subjectId"))

     # Load Train and Test Activity file into R 
     trainActivity <- read.table("./data/UCI HAR Dataset/train/Y_train.txt", col.names=c("activityId"))
     testActivity <- read.table("./data/UCI HAR Dataset/test/Y_test.txt", col.names=c("activityId"))

     # Load Train and Test Measurements file into R 
          # and set column names based on the measurement Name from "measurement" variable
     trainMeasurement <- read.table("./data/UCI HAR Dataset/train/X_train.txt", col.names=measurement[,3])
     testMeasurement <- read.table("./data/UCI HAR Dataset/test/X_test.txt", col.names=measurement[,3])
   
     
## STEP 1 - MERGE THE TRAINING AND THE TEST SETS TO CREATE ONE DATA SET.
     
     # Bind/Combine Subject, Activity and Measurements data by Train and Test Groups
     trainData <- cbind (trainSubject, trainActivity, trainMeasurement)
     testData <- cbind (testSubject, testActivity, testMeasurement)
     
     # Bind/Combine Train and Test Groups to Form 1 Data Set
     mergedData <- rbind (trainData, testData)
     
     
## STEP 2 - EXTRACT ONLY THE MEASUREMENTS ON THE MEAN AND STANDARD DEVIATION FOR EACH MEASUREMENT. 

     # Get the Column Indexes of mergedData which contain "mean" or "std" and "subjectId" and "activityId"
     extractColIndex <- grep("mean|std|subjectId|activityId", names(mergedData))
          
     # Take an Extract from mergedData by subsetting the identified the columns from previous step
     extractData <- mergedData[ , extractColIndex]
     
     
## STEP 3 - USE DESCRIPTIVE ACTIVITY NAMES TO NAME THE ACTIVITIES IN THE DATA SET
     
     # Decode Activity Description by merging extractData with Activity Labels using activityId
     descData <- merge (extractData, activity, by="activityId", all=TRUE)
    
     # Drop activity ID column and rearrange columns (cleanup and keeping things in order)
     descriptiveData <- descData[ , c(2, 82, 3:81)]
     

## STEP 4 - APPROPRIATELY LABEL THE DATA SET WITH DESCRIPTIVE VARIABLE NAMES 

     # Rename the cryptic measurement column names to more readable/descriptive names
          
          # Replace any column name that begins with "t" to "time"
          names(descriptiveData) <- gsub("^t", "time", names(descriptiveData))
     
          # Replace any column name that begins with "f" to "frequency"
          names(descriptiveData) <- gsub("^f", "frequency", names(descriptiveData))
     
          # Replace any "." character in the column name with ""
          names(descriptiveData) <- gsub("\\.", "", names(descriptiveData))
     
          # Replace any column name that has "mean" with "Mean"
          names(descriptiveData) <- gsub("mean", "Mean", names(descriptiveData))
     
          # Replace any column name that has "std" with "StdDev"
          names(descriptiveData) <- gsub("std", "StdDev", names(descriptiveData))
     
          # Replace any column name that has "Acc" with "Acceleration"
          names(descriptiveData) <- gsub("Acc", "Acceleration", names(descriptiveData))
     
          # Replace any column name that has "Gyro" with "Gyroscope"
          names(descriptiveData) <- gsub("Gyro", "Gyroscope", names(descriptiveData))
     
          # Replace any column name that end with "X" to "AxisX"
          names(descriptiveData) <- gsub("X$", "AxisX", names(descriptiveData))
     
          # Replace any column name that end with "Y" to "AxisY"
          names(descriptiveData) <- gsub("Y$", "AxisY", names(descriptiveData))
     
          # Replace any column name that end with "Z" to "AxisZ"
          names(descriptiveData) <- gsub("Z$", "AxisZ", names(descriptiveData))
     
     # Sort descriptiveData to set data in order
     tidyData <- descriptiveData[order(descriptiveData$subjectId, descriptiveData$activityDesc), ]

     # Write Final Data (1st Tidy Data) into a Text file
     write.table(tidyData, "tidyData.txt", sep=" ", row.names = FALSE)


## STEP 5 - FROM THE DATA SET IN STEP 4, CREATE A SECOND, INDEPENDENT TIDY DATA SET WITH THE 
##          AVERAGE OF EACH VARIABLE FOR EACH ACTIVITY AND EACH SUBJECT.

     # Check/Validate that Final data doesnt contain NA's (must be false)
     any(is.na(tidyData))

     # Get the column names from 1st Tidy Data where data is numeric, then subset the numeric data
          # Filter using the 2 non-numeric columns would be much easier
               tidyDataNonNumericColumns <- names(tidyData) %in% c("subjectId", "activityDesc") 
          # Use the inverse to derive the numeric columns from tidy dataset
               numericData <- tidyData[!tidyDataNonNumericColumns]

     # Summarize final data by taking the average (aggregate) of the measurements by Subject and Activity
     averageData <- aggregate(data.matrix(numericData) ~ subjectId + activityDesc, tidyData, mean)

     # Sort Average data by Subject and Activity 
     averageDataSorted <- averageData[order(averageData$subjectId, averageData$activityDesc), ]

     # Write Summary Data (2nd Tidy Data) into a Text file
     write.table(averageDataSorted, "averageData.txt", sep=" ", row.names = FALSE)