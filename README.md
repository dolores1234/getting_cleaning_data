## Course project for Getting and Cleaning Data
### August 23, 2014
### Dolores Kalayta

The script run_analysis.R has four main parts:

1. Download and unzip 8 files with data collected from the acceleromaters from the Samsung Galazy S smartphone, participant, 
   activity and features information. 
   
2. The files are read into R using the read.table function and stored as 8 separate data frames.
   The purpose of the project is to transform the 8 data frames into a single data set with the average of each variable
   for each ativity and each subject.
   
3. The data frames are tranformed into a single data frame by: 

	* using rbind to combine the X train and test measurement data frames to create a newX data frame with
	10299 observations on 561 measurement variables.
	
	* using rbind to combine the Y train and test data frames to create a newy data frame with 
	10299 observations on 1 activity variable.
	
	* using rbind again to combine the subject train and test data frames to create the newSubject data frame
	with 10299 observations on 1 participant (subject) variable.
	
	* using cbind to combine the newX and newY data frames to create a mergedData data frame of 10299
	observations on 562 variables; the first variable V1 represents the activity_nbr and the remaining variables
	(V1:V561) are the feature variables.  I am using the default column names, so there are 2 columns labelled V1.
	
	* a final cbind to combine the newSubject data frame with the mergedData data frame to create a transformed
	mergedData data frame with 10299 observations of 563 variables; subject, activity and 561 feature variables.
	
	* to improve the usability of the merged_data data frame, 561 feature variables (V1 : V561) are relabeled with
	the feature name from the features data frame.
	
	* to perform the requested summarization, all 563 variables need to be relabeled.  Data frame x is created by assigning
	'subject' and 'activity_nbr' names to the first two elements. x is then combined (using rbind) with the features data frame
	and assigned to the data frame y.  The y data frame now has 563 rows and 2 columns.  Column 2 of y is used to 
	replace the default variables names in the merged_data data frame.
	
	* as requested, I was able to search for all variable names in mergedData that contain the pattern "-mean(" or the 
	pattern "-std(".  These patterns will identify only those variables on which the mean or standard deviation calculation 
	were applied. The "grep" function was used to perform the search, replacement and retrieval of only the desired variable names. 
	This vector of desired names is used to transform (subset) the mergedData data frame to 10299 observations on 66 variables and 
	assigned to the data frame exDF. The subject and activity_nbr column vectors from mergedData are combined (cbind) with 
	exDF and the 1st version of transformed data frame exDF is created.
	
	* I used the melt function to transform the data frame into a more suitable form for casting.  The id variables are subject and 
	activity_nbr; the first two columns of exDF.  The measure variables are the remaining 66 variables. I used the dcast function 
	on the 'melted' data taking the mean of all the measure variables.  The resulting data frame exDF is now reduced to 180 
	observations on 69 variable. 
	
	* final steps to achieve a 'tidy' data frame:
		* merge activity_label data frame with exDF data frame on activity_nbr.  This replaces the activity integer values in 
		each row (1 - 6) with its corresponding character equivalent: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, 
		STANDING, LAYING. 
		
		* I made the supplied feature names for the variables more descriptive by using a camel case notation on each feature 
		variable using the sub function and once again seaching for and replacing '-mean(' with 'Mean' and '-std(-' with 'Std'. 
		
		* I subset the exDF data frame to remove the activity_nbr column to produce the tidy data frame (tidyDF).
		
4. I used write.table on tidyDF with quotes and row.names turned off (set to FALSE).  This created the space-delimited tidy dataset, 
tidy.txt with descriptive column headers.
	
To read the new (tidy)data file:
* the file name is tidy.txt
* the file is space-delimited
* and, the first row (record) contains the header data. 
		
		
		
   
   