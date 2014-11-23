Getting and Cleaning Data Course Project Code Book
================================

## Background  
The recent advances in technology and data science has ushered an exciting era of wearable computing. 
With numerous sensors embedded on smartphones, smartwatches, music players and the like, an extensive amount of data can be collected. 
This data can then be processed and analyzed, with the help of data science, and be used to predict what activity the user is currently engaged. 

## Source 
Data used in this course project is part of a study entitled "*Human Activity Recognition Using Smartphones Data Set*" 
by the team of Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio and Luca Onet.  
Reference: [http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones]( http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).  
  
The study required 30 participants to perform 6 activities (WALKING, WALKING UPSTAIRS, WALKING DOWNSTAIRS, SITTING, STANDING, LAYING) 
while wearing a Samsung Galaxy S II on their waist. The smart phone has embedded accelerometer and gyroscope, which is able to capture 3-axial 
linear acceleration and 3-axial angular velocity. The acquire dataset has been divided randomly into two sets, where 70% of the subjects was 
selected for generating the training data and 30% for the test data. 
  
## Transformation
The signals measured from the accelerometer (Acc) and gyroscope (Gyro) sensors were pre-processed by applying noise filters. 
A Butterworth low pass filter was used to further separate the sensor acceleration signal into body acceleration (BodyAcc) and gravity (GravityAcc). 
For each observation, a vector of measurement was obtained by computing variables for the time and frequency domain. 
  
The time domain signals are prefixed 't' to signify time, while the frequency domain signals are prefixed 'f' for frequency.
  
In addition, the body linear acceleration and angular velocity were used to determin Jerk signals (BodyAccJerk-XYZ). 
The magnitude of these 3-dimensional signals were also calculated using the Euclidean norm (BodyAccMag). 
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.
  
## Units of Measurement
All of measurement variables used in the original study have been normalized. As such, all of the measurement variables also used in this 
course project have values from -1 to 1 [-1, 1].  
  
## Dictionary
The original dataset contains 561 variables (or features).  For this course project however, only the mean and standard deviations of each 
measurement along with the Subject ID and Activity Labels are required. The following variables are used: 

### subjectId  
    * Description: Identification number for each of the 30 subjects that participated in this study 

### activityDesc 
    * Description: Activity that the subject was performing when the measurements were taken  
    * Possible values:  
     1. WALKING  
     2. WALKING UPSTAIRS  
     3. WALKING DOWNSTAIRS  
     4. SITTING  
     5. STANDING  
     6. LAYING  

### timeBodyAccelerationMeanAxisX
    * Original name: tBodyAcc-mean()-X
	* Description: Mean of the normalized time that the subject's body accelerated along the X-axis of the smart phone

### timeBodyAccelerationMeanAxisY  
    * Original name: tBodyAcc-mean()-Y
	* Description: Mean of the normalized time that the subject's body accelerated along the Y-axis of the smart phone

### timeBodyAccelerationMeanAxisZ  
    * Original name: tBodyAcc-mean()-Z
	* Description: Mean of the normalized time that the subject's body accelerated along the Z-axis of the smart phone

### timeBodyAccelerationStdDevAxisX  
    * Original name: tBodyAcc-std()-X
	* Description: Standard deviation of the normalized time that the subject's body accelerated along the X-axis of the smart phone

### timeBodyAccelerationStdDevAxisY  
    * Original name: tBodyAcc-std()-Y
	* Description: Standard deviation of the normalized time that the subject's body accelerated along the Y-axis of the smart phone

### timeBodyAccelerationStdDevAxisZ  
    * Original name: tBodyAcc-std()-Z 
	* Description: Standard deviation of the normalized time that the subject's body accelerated along the Z-axis of the smart phone

### timeGravityAccelerationMeanAxisX  
    * Original name: tGravityAcc-mean()-X  
	* Description: Mean of the normalized time of the acceleration due to gravity along the X-axis of the smart phone

### timeGravityAccelerationMeanAxisY  
    * Original name: tGravityAcc-mean()-Y 
	* Description: Mean of the normalized time of the acceleration due to gravity along the Y-axis of the smart phone

### timeGravityAccelerationMeanAxisZ  
    * Original name: tGravityAcc-mean()-Z
	* Description: Mean of the normalized time of the acceleration due to gravity along the Z-axis of the smart phone

### timeGravityAccelerationStdDevAxisX  
    * Original name: tGravityAcc-std()-X 
	* Description: Standard deviation of the normalized time of the acceleration due to gravity along the X-axis of the smart phone

### timeGravityAccelerationStdDevAxisY  
    * Original name: tGravityAcc-std()-Y 
	* Description: Standard deviation of the normalized time of the acceleration due to gravity along the Y-axis of the smart phone

### timeGravityAccelerationStdDevAxisZ  
    * Original name: tGravityAcc-std()-Z 
	* Description: Standard deviation of the normalized time of the acceleration due to gravity along the Z-axis of the smart phone

### timeBodyAccelerationJerkMeanAxisX  
    * Original name: tBodyAccJerk-mean()-X 
	* Description: Mean of the normalized time of the body linear acceleration due to jerk along the X-axis of the smart phone

### timeBodyAccelerationJerkMeanAxisY  
    * Original name: tBodyAccJerk-mean()-Y
	* Description: Mean of the normalized time of the body linear acceleration due to jerk along the Y-axis of the smart phone

### timeBodyAccelerationJerkMeanAxisZ  
    * Original name: tBodyAccJerk-mean()-Z 
	* Description: Mean of the normalized time of the body linear acceleration due to jerk along the Z-axis of the smart phone

### timeBodyAccelerationJerkStdDevAxisX  
    * Original name: tBodyAccJerk-std()-X 
	* Description: Standard deviation of the normalized time of the body linear acceleration due to jerk along the X-axis of the smart phone

### timeBodyAccelerationJerkStdDevAxisY  
    * Original name: tBodyAccJerk-std()-Y
	* Description: Standard deviation of the normalized time of the body linear acceleration due to jerk along the Y-axis of the smart phone

### timeBodyAccelerationJerkStdDevAxisZ  
    * Original name: tBodyAccJerk-std()-Z 
	* Description: Standard deviation of the normalized time of the body linear acceleration due to jerk along the Z-axis of the smart phone

### timeBodyGyroscopeMeanAxisX  
    * Original name: tBodyGyro-mean()-X 
	* Description: Mean of the normalized time for the change in subject's body angular momentum along the X-axis of the smart phone

### timeBodyGyroscopeMeanAxisY  
    * Original name: tBodyGyro-mean()-Y
	* Description: Mean of the normalized time for the change in subject's body angular momentum along the Y-axis of the smart phone

### timeBodyGyroscopeMeanAxisZ  
    * Original name: tBodyGyro-mean()-Z 
	* Description: Mean of the normalized time for the change in subject's body angular momentum along the Z-axis of the smart phone

### timeBodyGyroscopeStdDevAxisX  
    * Original name: tBodyGyro-std()-X
	* Description: Standard deviation of the normalized time for the change in subject's body angular momentum along the X-axis of the smart phone	

### timeBodyGyroscopeStdDevAxisY  
    * Original name: tBodyGyro-std()-Y
	* Description: Standard deviation of the normalized time for the change in subject's body angular momentum along the Y-axis of the smart phone	

### timeBodyGyroscopeStdDevAxisZ  
    * Original name: tBodyGyro-std()-Z
	* Description: Standard deviation of the normalized time for the change in subject's body angular momentum along the Z-axis of the smart phone	

### timeBodyGyroscopeJerkMeanAxisX  
    * Original name: tBodyGyroJerk-mean()-X
	* Description: Mean of the normalized time for the change in angular momentum due to jerk along the X-axis of the smart phone	

### timeBodyGyroscopeJerkMeanAxisY  
    * Original name: tBodyGyroJerk-mean()-Y
	* Description: Mean of the normalized time for the change in angular momentum due to jerk along the Y-axis of the smart phone

### timeBodyGyroscopeJerkMeanAxisZ  
    * Original name: tBodyGyroJerk-mean()-Z
	* Description: Mean of the normalized time for the change in angular momentum due to jerk along the Z-axis of the smart phone

### timeBodyGyroscopeJerkStdDevAxisX  
    * Original name: tBodyGyroJerk-std()-X
	* Description: Standard deviation of the normalized time for the change in angular momentum due to jerk along the X-axis of the smart phone

### timeBodyGyroscopeJerkStdDevAxisY  
    * Original name: tBodyGyroJerk-std()-Y
	* Description: Standard deviation of the normalized time for the change in angular momentum due to jerk along the Y-axis of the smart phone

### timeBodyGyroscopeJerkStdDevAxisZ  
    * Original name: tBodyGyroJerk-std()-Z
	* Description: Standard deviation of the normalized time for the change in angular momentum due to jerk along the Z-axis of the smart phone

### timeBodyAccelerationMagMean  
    * Original name: tBodyAccMag-mean()
	* Description: Mean of the normalized time magnitude of the three-dimensional signals for the subject's body acceleration

### timeBodyAccelerationMagStdDev  
    * Original name: tBodyAccMag-std()
	* Description: Standard deviation of the normalized time magnitude of the three-dimensional signals for the subject's body acceleration

### timeGravityAccelerationMagMean  
    * Original name: tGravityAccMag-mean()
	* Description: Mean of the normalized time magnitude of the three-dimensional signals for the acceleration due to gravity

### timeGravityAccelerationMagStdDev  
    * Original name: tGravityAccMag-std()
	* Description: Standard deviation of the normalized time magnitude of the three-dimensional signals for the acceleration due to gravity

### timeBodyAccelerationJerkMagMean  
    * Original name: tBodyAccJerkMag-mean()
	* Description: Mean of the normalized time magnitude of the three-dimensional signals for the acceleration due to jerk

### timeBodyAccelerationJerkMagStdDev  
    * Original name: tBodyAccJerkMag-std()
	* Description: Standard deviation of the normalized time magnitude of the three-dimensional signals for the acceleration due to jerk

### timeBodyGyroscopeMagMean  
    * Original name: tBodyGyroMag-mean()
	* Description: Mean of the normalized time magnitude of the three-dimensional signals for change in angular momentum in the subject's body

### timeBodyGyroscopeMagStdDev  
    * Original name: tBodyGyroMag-std()
	* Description: Standard deviation of the normalized time magnitude of the three-dimensional signals for change in angular momentum in the subject's body

### timeBodyGyroscopeJerkMagMean  
    * Original name: tBodyGyroJerkMag-mean()
	* Description: Mean of the normalized time magnitude of the three-dimensional signals for change in angular momentum due to jerk

### timeBodyGyroscopeJerkMagStdDev  
    * Original name: tBodyGyroJerkMag-std()
	* Description: Standard deviation of the normalized time magnitude of the three-dimensional signals for change in angular momentum due to jerk

### frequencyBodyAccelerationMeanAxisX  
    * Original name: fBodyAcc-mean()-X
	* Description: Mean of the normalized frequency that the subject's body accelerated along the X-axis of the smart phone

### frequencyBodyAccelerationMeanAxisY  
    * Original name: fBodyAcc-mean()-Y
	* Description: Mean of the normalized frequency that the subject's body accelerated along the Y-axis of the smart phone

### frequencyBodyAccelerationMeanAxisZ  
    * Original name: fBodyAcc-mean()-Z
	* Description: Mean of the normalized frequency that the subject's body accelerated along the Z-axis of the smart phone

### frequencyBodyAccelerationStdDevAxisX  
    * Original name: fBodyAcc-std()-X
	* Description: Standard deviation of the normalized frequency that the subject's body accelerated along the X-axis of the smart phone

### frequencyBodyAccelerationStdDevAxisY  
    * Original name: fBodyAcc-std()-Y
	* Description: Standard deviation of the normalized frequency that the subject's body accelerated along the Y-axis of the smart phone

### frequencyBodyAccelerationStdDevAxisZ  
    * Original name: fBodyAcc-std()-Z
	* Description: Standard deviation of the normalized frequency that the subject's body accelerated along the Z-axis of the smart phone

### frequencyBodyAccelerationMeanFreqAxisX  
    * Original name: fBodyAcc-meanFreq()-X
	* Description: Normalized mean frequency that the subject's body accelerated along the X-axis of the smart phone

### frequencyBodyAccelerationMeanFreqAxisY  
    * Original name: fBodyAcc-meanFreq()-Y
	* Description: Normalized mean frequency that the subject's body accelerated along the Y-axis of the smart phone

### frequencyBodyAccelerationMeanFreqAxisZ  
    * Original name: fBodyAcc-meanFreq()-Z
	* Description: Normalized mean frequency that the subject's body accelerated along the Z-axis of the smart phone

### frequencyBodyAccelerationJerkMeanAxisX  
    * Original name: fBodyAccJerk-mean()-X
	* Description: Mean of the normalized frequency that the subject's body accelerated due to jerk along the X-axis of the smart phone

### frequencyBodyAccelerationJerkMeanAxisY  
    * Original name: fBodyAccJerk-mean()-Y
	* Description: Mean of the normalized frequency that the subject's body accelerated due to jerk along the Y-axis of the smart phone

### frequencyBodyAccelerationJerkMeanAxisZ  
    * Original name: fBodyAccJerk-mean()-Z
	* Description: Mean of the normalized frequency that the subject's body accelerated due to jerk along the Z-axis of the smart phone

### frequencyBodyAccelerationJerkStdDevAxisX  
    * Original name: fBodyAccJerk-std()-X
	* Description: Standard deviation of the normalized frequency that the subject's body accelerated due to jerk along the X-axis of the smart phone

### frequencyBodyAccelerationJerkStdDevAxisY  
    * Original name: fBodyAccJerk-std()-Y
	* Description: Standard deviation of the normalized frequency that the subject's body accelerated due to jerk along the Y-axis of the smart phone

### frequencyBodyAccelerationJerkStdDevAxisZ  
    * Original name: fBodyAccJerk-std()-Z
	* Description: Standard deviation of the normalized frequency that the subject's body accelerated due to jerk along the Z-axis of the smart phone

### frequencyBodyAccelerationJerkMeanFreqAxisX  
    * Original name: fBodyAccJerk-meanFreq()-X
	* Description: Normalized mean frequency that the subject's body accelerated due to jerk along the X-axis of the smart phone

### frequencyBodyAccelerationJerkMeanFreqAxisY  
    * Original name: fBodyAccJerk-meanFreq()-Y
	* Description: Normalized mean frequency that the subject's body accelerated due to jerk along the Y-axis of the smart phone

### frequencyBodyAccelerationJerkMeanFreqAxisZ  
    * Original name: fBodyAccJerk-meanFreq()-Z
	* Description: Normalized mean frequency that the subject's body accelerated due to jerk along the Z-axis of the smart phone

### frequencyBodyGyroscopeMeanAxisX  
    * Original name: fBodyGyro-mean()-X
	* Description: Normalized mean frequency that the subject's body angular momentum changed along the X-axis of the smart phone

### frequencyBodyGyroscopeMeanAxisY  
    * Original name: fBodyGyro-mean()-Y
	* Description: Normalized mean frequency that the subject's body angular momentum changed along the Y-axis of the smart phone

### frequencyBodyGyroscopeMeanAxisZ  
    * Original name: fBodyGyro-mean()-Z
	* Description: Normalized mean frequency that the subject's body angular momentum changed along the Z-axis of the smart phone

### frequencyBodyGyroscopeStdDevAxisX  
    * Original name: fBodyGyro-std()-X
	* Description: Normalized standard deviation frequency that the subject's body angular momentum changed along the X-axis of the smart phone

### frequencyBodyGyroscopeStdDevAxisY  
    * Original name: fBodyGyro-std()-Y
	* Description: Normalized standard deviation frequency that the subject's body angular momentum changed along the Y-axis of the smart phone

### frequencyBodyGyroscopeStdDevAxisZ  
    * Original name: fBodyGyro-std()-Z
	* Description: Normalized standard deviation frequency that the subject's body angular momentum changed along the Z-axis of the smart phone

### frequencyBodyGyroscopeMeanFreqAxisX  
    * Original name: fBodyGyro-meanFreq()-X
	* Description: Normalized mean frequency that the subject's body angular momentum changed along the X-axis of the smart phone

### frequencyBodyGyroscopeMeanFreqAxisY  
    * Original name: fBodyGyro-meanFreq()-Y
	* Description: Normalized mean frequency that the subject's body angular momentum changed along the Y-axis of the smart phone

### frequencyBodyGyroscopeMeanFreqAxisZ  
    * Original name: fBodyGyro-meanFreq()-Z
	* Description: Normalized mean frequency that the subject's body angular momentum changed along the Z-axis of the smart phone

### frequencyBodyAccelerationMagMean  
    * Original name: fBodyAccMag-mean()
	* Description: Mean of the normalized frequency magnitude of the three-dimensional signals for the subject's body acceleration

### frequencyBodyAccelerationMagStdDev  
    * Original name: fBodyAccMag-std()
	* Description: Standard deviation of the normalized frequency magnitude of the three-dimensional signals for the subject's body acceleration

### frequencyBodyAccelerationMagMeanFreq  
    * Original name: fBodyAccMag-meanFreq()
	* Description: Normalized mean frequency for the change in magnitude for the subject's body acceleration

### frequencyBodyBodyAccelerationJerkMagMean  
    * Original name: fBodyBodyAccJerkMag-mean()
	* Description: Mean of the normalized frequency magnitude due to jerk

### frequencyBodyBodyAccelerationJerkMagStdDev  
    * Original name: fBodyBodyAccJerkMag-std()
	* Description: Standard deviation of the normalized frequency magnitude due to jerk

### frequencyBodyBodyAccelerationJerkMagMeanFreq  
    * Original name: fBodyBodyAccJerkMag-meanFreq()
	* Description: Normalized mean frequency for the change in magnitude for the subject's body body acceleration

### frequencyBodyBodyGyroscopeMagMean  
    * Original name: fBodyBodyGyroMag-mean()
	* Description: Mean of the normalized frequency magnitude due to subject's body body acceleration

### frequencyBodyBodyGyroscopeMagStdDev  
    * Original name: fBodyBodyGyroMag-std()
	* Description: Standard deviation of the normalized frequency magnitude due to subject's body body acceleration

### frequencyBodyBodyGyroscopeMagMeanFreq  
    * Original name: fBodyBodyGyroMag-meanFreq()
	* Description: Normalized mean frequency for the change in magnitude for the subject's body body acceleration 

### frequencyBodyBodyGyroscopeJerkMagMean  
    * Original name: fBodyBodyGyroJerkMag-mean()
	* Description: Mean of the normalized frequency for the change in subject's body body angular momentum magnitude due to jerk 

### frequencyBodyBodyGyroscopeJerkMagStdDev  
    * Original name: fBodyBodyGyroJerkMag-std()
	* Description: Standard deviation of the normalized frequency for the change in subject's body body angular momentum magnitude due to jerk 

### frequencyBodyBodyGyroscopeJerkMagMeanFreq  
    * Original name: fBodyBodyGyroJerkMag-meanFreq()
	* Description: Normalized mean frequency for the change in subject's body body angular momentum magnitude due to jerk 

## Note
Significant effort was made to understand the technical definitions of the variables used in the original data set. However, due to insufficient domain knowledge of 
the student on the actual study conducted, the definitions might not be highly accurate.
	
## Citation  
[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a 
Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
