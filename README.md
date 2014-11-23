Getting and Cleaning Data Course Project
================================

This is a guide for the project required in the Getting and Cleaning Data Course offered in Coursera.

The primary purpose of the course project is to determine the student's capability collect, clean, manipulate and summarize [tidy data] 
(http://vita.had.co.nz/papers/tidy-data.pdf) that can be used for later analysis.

Using a given [data set] (https://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones), the course project requires 
the following operations to be completed by the student:
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

Furthermore, the following components are required for submission:
* A tidy data set 
* A link to a Github repository with your script for performing the analysis 
* A code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. 
* A README.md that explains how all of the scripts work and how they are connected.  
* A R script that cleans, manipulates and summarizes the given data.


## Solution Design Plan
### STEP 0 - DATA PREPARATION
     0.1. Create "data" directory, if not yet existing
		+ "data" directory must be on the same path where "Run_Analysis.R" script is located
		
     0.2. Download Source Data File, if not yet existing
		+ Source Data File: "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
        + Destination File Name: "getdata-projectfiles-UCI HAR Dataset.zip"  
		
     0.3. Unzip the UCI HAR Dataset, if not yet uncompressed     

    #### LOAD SOURCE UCI HAR DATA INTO R

     0.4. Load Features (Measurements) file into R     
		0.4.5 Make Syntactically valid names of measurementDesc and add as another column in measurement data

     0.5. Load Activity Labels file into R 

     0.6. Load Train and Test Subjects file into R 

     0.7. Load Train and Test Activity file into R 

     0.8. Load Train and Test Measurements file into R 
	    0.8.1 and set column names based on the measurement Name from "measurement" variable (from Step 4.5)
     
## STEP 1 - MERGE THE TRAINING AND THE TEST SETS TO CREATE ONE DATA SET.
     
     1.1. Bind/Combine Subject, Activity and Measurements data by Train and Test Groups (from Step 0.6, 0.7 and 0.8)
     
     1.2. Bind/Combine Train and Test Groups to Form 1 Data Set (from Step 1.1)
         
## STEP 2 - EXTRACT ONLY THE MEASUREMENTS ON THE MEAN AND STANDARD DEVIATION FOR EACH MEASUREMENT. 

     2.1. Get the Column Indexes of mergedData which contain "mean" or "std" and "subjectId" and "activityId" (from Step 1.2)
          
     2.2. Take an Extract from mergedData by subsetting the identified the columns from previous step (from Step 2.1)
        
## STEP 3 - USE DESCRIPTIVE ACTIVITY NAMES TO NAME THE ACTIVITIES IN THE DATA SET
     
     3.1. Decode Activity Description by merging extractData with Activity Labels using activityId (from Step 0.5 and 2.2) 
    
     3.2. Drop activity ID column and rearrange columns (cleanup and keeping things in order) (from Step 3.1)
     
## STEP 4 - APPROPRIATELY LABEL THE DATA SET WITH DESCRIPTIVE VARIABLE NAMES 

     4.1. Rename the cryptic measurement column names to more readable/descriptive names
          
          4.1.1. Replace any column name that begins with "t" to "time"
     
          4.1.2. Replace any column name that begins with "f" to "frequency"
 
          4.1.3. Replace any "." character in the column name with ""
     
          4.1.4. Replace any column name that has "mean" with "Mean"
     
          4.1.5. Replace any column name that has "std" with "StdDev"
     
          4.1.6. Replace any column name that has "Acc" with "Acceleration"
     
          4.1.7. Replace any column name that has "Gyro" with "Gyroscope"
     
          4.1.8. Replace any column name that end with "X" to "AxisX"
     
          4.1.9. Replace any column name that end with "Y" to "AxisY"
     
          4.1.10. Replace any column name that end with "Z" to "AxisZ"
     
     4.2. Sort descriptiveData to set data in order using subjectId and activityDesc

     4.3 Write Final Data (1st Tidy Data) into a Text file

## STEP 5 - FROM THE DATA SET IN STEP 4, CREATE A SECOND, INDEPENDENT TIDY DATA SET WITH THE AVERAGE OF EACH VARIABLE FOR EACH ACTIVITY AND EACH SUBJECT.

     5.1. Check/Validate that Final data doesnt contain NA's (must be false)

     5.2. Get the column names from 1st Tidy Data where data is numeric, then subset the numeric data
          5.2.1 Filter using the 2 non-numeric columns would be much easier
          5.2.2 Use the inverse to derive the numeric columns from tidy dataset

     5.3. Summarize final data by taking the average (aggregate) of the measurements by Subject and Activity

     5.4. Sort Average data by Subject and Activity 

     5.5. Write Summary Data (2nd Tidy Data) into a Text file

