## Samsung Wearable Device Data -- Tidied/Summarized

-------------------------------------

This data set is a cleaned and summarized version of:


Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. A Public Domain Dataset for Human Activity Recognition Using Smartphones. 21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine Learning, ESANN 2013. Bruges, Belgium 24-26 April 2013.


Original data are available [here](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).


For this assignment, the training and test groups were merged into a single table, from which was extracted the means and standard deviations of various measurement features (see below). Each row of the table corresponds to the average value of one of these measurement features, grouped by study subject and activity. As in the original dataset, all feature values are normalized and bounded from [-1,1].


##### **Activity:**


Activity performed by subjects while using the Samsung Galaxy.


1. Laying
2. Sitting
3. Standing
4. Walking
5. Walking_downstairs
6. Walking_upstairs
    
##### **Subject.id:**


Integer from 1-30, representing one of the 30 subjects in the experiment.
    
    
##### **Measurement averages:**


This analysis concerned a subset of the original data. Only measurements representing a mean or standard deviation of linear acceleration or linear velocity measurements. For each of the 86 measurements that fit this criteria, the column with that measurement name (i.e. tBodyAcc-mean()-X) represents the average (mean) of that measurement for a given activity and subject. 


Measurements include the following:


"tBodyAcc-mean()-X"

"tBodyAcc-mean()-Y"

"tBodyAcc-mean()-Z"

"tBodyAcc-std()-X"                    

"tBodyAcc-std()-Y"

"tBodyAcc-std()-Z"                    

"tGravityAcc-mean()-X"

"tGravityAcc-mean()-Y"                

"tGravityAcc-mean()-Z"

"tGravityAcc-std()-X"                 

"tGravityAcc-std()-Y"

"tGravityAcc-std()-Z"                 

"tBodyAccJerk-mean()-X"

"tBodyAccJerk-mean()-Y"               

"tBodyAccJerk-mean()-Z"

"tBodyAccJerk-std()-X"                

"tBodyAccJerk-std()-Y"

"tBodyAccJerk-std()-Z"                

"tBodyGyro-mean()-X"

"tBodyGyro-mean()-Y"                  

"tBodyGyro-mean()-Z"

"tBodyGyro-std()-X"                   

"tBodyGyro-std()-Y"

"tBodyGyro-std()-Z"                   

"tBodyGyroJerk-mean()-X"

"tBodyGyroJerk-mean()-Y"              

"tBodyGyroJerk-mean()-Z"

"tBodyGyroJerk-std()-X"               

"tBodyGyroJerk-std()-Y"

"tBodyGyroJerk-std()-Z"               

"tBodyAccMag-mean()"

"tBodyAccMag-std()"                   

"tGravityAccMag-mean()"

"tGravityAccMag-std()"                

"tBodyAccJerkMag-mean()"

"tBodyAccJerkMag-std()"               

"tBodyGyroMag-mean()"

"tBodyGyroMag-std()"                  

"tBodyGyroJerkMag-mean()"

"tBodyGyroJerkMag-std()"              

"fBodyAcc-mean()-X"

"fBodyAcc-mean()-Y"                   

"fBodyAcc-mean()-Z"

"fBodyAcc-std()-X"                    

"fBodyAcc-std()-Y"

"fBodyAcc-std()-Z"                    

"fBodyAcc-meanFreq()-X"

"fBodyAcc-meanFreq()-Y"               

"fBodyAcc-meanFreq()-Z"

"fBodyAccJerk-mean()-X"               

"fBodyAccJerk-mean()-Y"

"fBodyAccJerk-mean()-Z"               

"fBodyAccJerk-std()-X"

"fBodyAccJerk-std()-Y"                

"fBodyAccJerk-std()-Z"

"fBodyAccJerk-meanFreq()-X"           

"fBodyAccJerk-meanFreq()-Y"

"fBodyAccJerk-meanFreq()-Z"           

"fBodyGyro-mean()-X"

"fBodyGyro-mean()-Y"                  

"fBodyGyro-mean()-Z"

"fBodyGyro-std()-X"                   

"fBodyGyro-std()-Y"

"fBodyGyro-std()-Z"                   

"fBodyGyro-meanFreq()-X"

"fBodyGyro-meanFreq()-Y"              

"fBodyGyro-meanFreq()-Z"

"fBodyAccMag-mean()"                  

"fBodyAccMag-std()"

"fBodyAccMag-meanFreq()"              

"fBodyBodyAccJerkMag-mean()"

"fBodyBodyAccJerkMag-std()"           

"fBodyBodyAccJerkMag-meanFreq()"

"fBodyBodyGyroMag-mean()"             

"fBodyBodyGyroMag-std()"

"fBodyBodyGyroMag-meanFreq()"         

"fBodyBodyGyroJerkMag-mean()"

"fBodyBodyGyroJerkMag-std()"          

"fBodyBodyGyroJerkMag-meanFreq()"

"angle(tBodyAccMean,gravity)"         

"angle(tBodyAccJerkMean),gravityMean)"

"angle(tBodyGyroMean,gravityMean)"    

"angle(tBodyGyroJerkMean,gravityMean)"

"angle(X,gravityMean)"                

"angle(Y,gravityMean)" 

"angle(Z,gravityMean)" 


    