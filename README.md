## Course project for Getting and Cleaning Data
### August 21, 2014
### Dolores Kalayta

The script run_analysis.R has four main parts:
1. Download and unzip 8 files with data collected from the acceleromaters from the Samsung Galazy S smartphone, participant, 
   activity and features information. 
   
2. The files are read into R using the read.table function and stored as 8 separate data frames.
   The purpose of the project is to transform the many data frames into a single data file with data summarized by
   
3. The data frames are tranformed into a single data frame by: 
	* using rbind to combine the X train and test measurement data frames to create a new_X data frame with
		10299 observations on 561 variables.
	* similiarly, using rbind to combine the Y train and test data frames to create a new_Y data frame with 
		10299 observations on 1 activity variable
	* using cbind to combine the new_X and new_Y data frames to create a merged_data data frame of 10299
		observations of 563 variables; activity variable with 561 feature variables
	* a final cbind to combine the append subject data frame with the merged_data and create a transformed
		merged_Data data frame with 10299 observations of 563 variables; subject, activity and 561
		feature variables
	* to improve the usability of the merged_data data frame, 561 feature variables are relabeled with
		the feature name from the features data frame.
	* to perform the requested summarization, the 563 variables need to be relabeled.  An data frame x is created by assigning
		'subject' and 'activity_nbr' to the first two elements. x is then combined (using rbind) with the features data frame
		and assigned to the data frame y.  The y data frame now has 563 rows and 2 columns.  Column 2 of y  is used to
		replace the default variables names in the merged_data data frame.
	* as requested, I was able to search for all variables names in merged_date that contain the pattern "-mean(" or the 
		pattern "-std(".  These patterns will identify only those variables on which the mean or standard deviation calculation
		were applied. "grep" function was used to perform the search and retrieval of only the desired variable names.  This vector
		of desired names is used to transform (subset) the merged_Data data frame to 10299 observations on 67 variables and 
		assigned to the data fram exDF. The subject and activity_nbr column vectors from merged_data and combined (cbind) with
		exDF and the 1st version of transformed data frame exDF is created.
	* I used the melt function to assign the labels, subject and activity_nbr to the first two columns of exDF, and use the mean 
		function in dcast to get the average of each variable for each activity and each subject.  exDF is now reduced to
		180 observations on 67 variables.
	* final steps to achieve a 'tidy' data frame:
		* merge activity_label data frame with exDF data frame on activity_nbr.  This replaces the activity integer values in 
			each row (1 - 6) with its corresponding character equivalent: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS,
			SITTING, STANDING, LAYING. 
		* I made the supplied feature names for the variables more descriptive by using
			a camel case notation on each feature variable by using the sub function and once again seaching for and replacing
			'-mean(' with 'Mean' and '-std(-' with 'Std'.  
		* subsetting exDF data frame to include all rows and all must the first column in exDF produced the tidy data frame.
4. I used write.table on tidyDF with quotes and row.names turned off (set to FALSE).  Created the space-delimited tidy dataset, tidy.txt 
	with descriptive column headers
	
To read the new (tidy)data file:
* the file name is tidy.txt
* the file is space-delimited
* and, the first row (record) contains the header data. 
		
		
		
   
   