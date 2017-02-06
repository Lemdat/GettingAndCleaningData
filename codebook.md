## Codebook

### Where the data comes from and how they were obtained

to build the data set, data are downloaded from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip and decompressed
Train and test dataset are merged.
Subject id and activity are extracted from subject_train|test.txt and y_train|test repectively 
Variable contaning the mean and standard deviation of the different signals are extracted and averaged for each activity and subject. (for detailed information on the signals present in the original data set, see end of document)

### Data description

| Variable name              | Position | Description
|:---------------------------|:--------:|:--------------------------------------------------------------------------------------
| subject_id	             |1         | Subject id number extracted from original database (between 1 and 30)
| activity  	             |2         | Activity (LAYING, SITTING, STANDING, WALKING, WALKING_DOWNSTAIRS or WALKING_UPSTAIRS) 
| tBodyAcc_mean_X            |3         | Average of tBodyAcc-mean()-X (see below for detailed explanation)            
| tBodyAcc_mean_Y            |4         | Average of tBodyAcc-mean()-Y (see below for detailed explanation)           
| tBodyAcc_mean_Z            |5         | Average of tBodyAcc-mean()-Z (see below for detailed explanation)           
| tBodyAcc_std_X             |6         | Average of tBodyAcc-std()-X (see below for detailed explanation)            
| tBodyAcc_std_Y             |7         | Average of tBodyAcc-std()-Y (see below for detailed explanation)            
| tBodyAcc_std_Z             |8         | Average of tBodyAcc-std()-Z (see below for detailed explanation)            
| tGravityAcc_mean_X         |9         | Average of tGravityAcc-mean()-X (see below for detailed explanation)        
| tGravityAcc_mean_Y         |10        | Average of tGravityAcc-mean()-Y (see below for detailed explanation)        
| tGravityAcc_mean_Z         |11        | Average of tGravityAcc-mean()-Z (see below for detailed explanation)        
| tGravityAcc_std_X          |12        | Average of tGravityAcc-std()-X (see below for detailed explanation)         
| tGravityAcc_std_Y          |13        | Average of tGravityAcc-std()-Y (see below for detailed explanation)         
| tGravityAcc_std_Z          |14        | Average of tGravityAcc-std()-Z (see below for detailed explanation)         
| tBodyAccJerk_mean_X        |15        | Average of tBodyAccJerk-mean()-X (see below for detailed explanation)       
| tBodyAccJerk_mean_Y        |16        | Average of tBodyAccJerk-mean()-Y (see below for detailed explanation)       
| tBodyAccJerk_mean_Z        |17        | Average of tBodyAccJerk-mean()-Z (see below for detailed explanation)       
| tBodyAccJerk_std_X         |18        | Average of tBodyAccJerk-std()-X (see below for detailed explanation)         
| tBodyAccJerk_std_Y         |19        | Average of tBodyAccJerk-std()-Y (see below for detailed explanation)         
| tBodyAccJerk_std_Z         |20        | Average of tBodyAccJerk-std()-Z (see below for detailed explanation)         
| tBodyGyro_mean_X           |21        | Average of tBodyGyro-mean()-X (see below for detailed explanation)           
| tBodyGyro_mean_Y           |22        | Average of tBodyGyro-mean()-Y (see below for detailed explanation)           
| tBodyGyro_mean_Z           |23        | Average of tBodyGyro-mean()-Z (see below for detailed explanation)           
| tBodyGyro_std_X            |24        | Average of tBodyGyro-std()-X (see below for detailed explanation)            
| tBodyGyro_std_Y            |25        | Average of tBodyGyro-std()-Y (see below for detailed explanation)            
| tBodyGyro_std_Z            |26        | Average of tBodyGyro-std()-Z (see below for detailed explanation)            
| tBodyGyroJerk_mean_X       |27        | Average of tBodyGyroJerk-mean()-X (see below for detailed explanation)       
| tBodyGyroJerk_mean_Y       |28        | Average of tBodyGyroJerk-mean()-Y (see below for detailed explanation)       
| tBodyGyroJerk_mean_Z       |29        | Average of tBodyGyroJerk-mean()-Z (see below for detailed explanation)       
| tBodyGyroJerk_std_X        |30        | Average of tBodyGyroJerk-std()-X (see below for detailed explanation)        
| tBodyGyroJerk_std_Y        |31        | Average of tBodyGyroJerk-std()-Y (see below for detailed explanation)     
| tBodyGyroJerk_std_Z        |32        | Average of tBodyGyroJerk-std()-Z (see below for detailed explanation)      
| tBodyAccMag_mean_          |33        | Average of tBodyAccMag-mean() (see below for detailed explanation)           
| tBodyAccMag_std_           |34        | Average of tBodyAccMag-std() (see below for detailed explanation)            
| tGravityAccMag_mean_       |35        | Average of tGravityAccMag-mean() (see below for detailed explanation)        
| tGravityAccMag_std_        |36        | Average of tGravityAccMag-std() (see below for detailed explanation)         
| tBodyAccJerkMag_mean_      |37        | Average of tBodyAccJerkMag-mean() (see below for detailed explanation)       
| tBodyAccJerkMag_std_       |38        | Average of tBodyAccJerkMag-std() (see below for detailed explanation)        
| tBodyGyroMag_mean_         |39        | Average of tBodyGyroMag-mean() (see below for detailed explanation)          
| tBodyGyroMag_std_          |40        | Average of tBodyGyroMag-std() (see below for detailed explanation)           
| tBodyGyroJerkMag_mean_     |41        | Average of tBodyGyroJerkMag-mean() (see below for detailed explanation)      
| tBodyGyroJerkMag_std_      |42        | Average of tBodyGyroJerkMag-std() (see below for detailed explanation)       
| fBodyAcc_mean_X            |43        | Average of fBodyAcc-mean()-X (see below for detailed explanation)            
| fBodyAcc_mean_Y            |44        | Average of fBodyAcc-mean()-Y (see below for detailed explanation)            
| fBodyAcc_mean_Z            |45        | Average of fBodyAcc-mean()-Z (see below for detailed explanation)            
| fBodyAcc_std_X             |46        | Average of fBodyAcc-std()-X (see below for detailed explanation)            
| fBodyAcc_std_Y             |47        | Average of fBodyAcc-std()-Y (see below for detailed explanation)            
| fBodyAcc_std_Z             |48        | Average of fBodyAcc-std()-Z (see below for detailed explanation)            
| fBodyAccJerk_mean_X        |49        | Average of fBodyAccJerk-mean()-X (see below for detailed explanation)        
| fBodyAccJerk_mean_Y        |50        | Average of fBodyAccJerk-mean()-Y (see below for detailed explanation)        
| fBodyAccJerk_mean_Z        |51        | Average of fBodyAccJerk-mean()-Z (see below for detailed explanation)        
| fBodyAccJerk_std_X         |52        | Average of fBodyAccJerk-std()-X (see below for detailed explanation)         
| fBodyAccJerk_std_Y         |53        | Average of fBodyAccJerk-std()-Y (see below for detailed explanation)         
| fBodyAccJerk_std_Z         |54        | Average of fBodyAccJerk-std()-Z (see below for detailed explanation)         
| fBodyGyro_mean_X           |55        | Average of fBodyGyro-mean()-X (see below for detailed explanation)           
| fBodyGyro_mean_Y           |56        | Average of fBodyGyro-mean()-Y (see below for detailed explanation)           
| fBodyGyro_mean_Z           |57        | Average of fBodyGyro-mean()-Z (see below for detailed explanation)           
| fBodyGyro_std_X            |58        | Average of fBodyGyro-std()-X (see below for detailed explanation)            
| fBodyGyro_std_Y            |59        | Average of fBodyGyro-std()-Y (see below for detailed explanation)            
| fBodyGyro_std_Z            |60        | Average of fBodyGyro-std()-Z (see below for detailed explanation)            
| fBodyAccMag_mean_          |61        | Average of fBodyAccMag-mean() (see below for detailed explanation)           
| fBodyAccMag_std_           |62        | Average of fBodyAccMag-std() (see below for detailed explanation)         
| fBodyBodyAccJerkMag_mean_  |63        | Average of fBodyBodyAccJerkMag-mean() (see below for detailed explanation)
| fBodyBodyAccJerkMag_std_   |64        | Average of fBodyBodyAccJerkMag-std() (see below for detailed explanation) 
| fBodyBodyGyroMag_mean_     |65        | Average of fBodyBodyGyroMag-mean() (see below for detailed explanation)   
| fBodyBodyGyroMag_std_      |66        | Average of fBodyBodyGyroMag-std() (see below for detailed explanation)    
| fBodyBodyGyroJerkMag_mean_ |67        | Average of fBodyBodyGyroJerkMag-mean() (see below for detailed explanation)
| fBodyBodyGyroJerkMag_std_  |68        | Average of fBodyBodyGyroJerkMag-std() (see below for detailed explanation) 
                                          



### Feature Selection ( descrption of the signal from original dataset)


The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

- tBodyAcc-XYZ       
- tGravityAcc-XYZ    
- tBodyAccJerk-XYZ   
- tBodyGyro-XYZ      
- tBodyGyroJerk-XYZ  
- tBodyAccMag        
- tGravityAccMag     
- tBodyAccJerkMag    
- tBodyGyroMag       
- tBodyGyroJerkMag   
- fBodyAcc-XYZ       
- fBodyAccJerk-XYZ   
- fBodyGyro-XYZ      
- fBodyAccMag        
- fBodyAccJerkMag    
- fBodyGyroMag       
- fBodyGyroJerkMag   
                   
The set of variables that were estimated from these signals are: 

- **mean(): Mean value**                                                                          
- **std(): Standard deviation**                                                                   
- mad(): Median absolute deviation                                                                
- max(): Largest value in array                                                                   
- min(): Smallest value in array                                                                  
- sma(): Signal magnitude area                                                                    
- energy(): Energy measure. Sum of the squares divided by the number of values.                   
- iqr(): Interquartile range                                                                      
- entropy(): Signal entropy                                                                       
- arCoeff(): Autorregresion coefficients with Burg order equal to 4                               
- correlation(): correlation coefficient between two signals                                      
- maxInds(): index of the frequency component with largest magnitude                              
- meanFreq(): Weighted average of the frequency components to obtain a mean frequency             
- skewness(): skewness of the frequency domain signal                                             
- kurtosis(): kurtosis of the frequency domain signal                                             
- bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.     
- angle(): Angle between to vectors.                                                              

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

The complete list of variables of each feature vector is available in 'features.txt'