### Code book for tidy.txt datafile

There are 68 variables in the tidy.txt datafile.  The format of the code book is:

	column	variable name
			description
			value(s)    
		

     1	activity                             	   				      
     	A variable length character description of the measured activity.                
        Values:
        1. WALKING                                                                      
        2. WALKING_UPSTAIRS                                                                
    	3. WALKING_DOWNSTAIRS                                                              
     	4. SITTING                                                                         
     	5. STANDING                                                                        
     	6. LAYING                                                                          
               
     2	subject                                                                           
       	An integer value assigned to each participant in the experiment.                     
       	Value range: [1:30]  
       
The following 66 variables are the mean of measurements.        
                                                                                       
     3  tBodyAccMeanX                                                                     
       	The mean of the time domain signal of the body acceleration in the X-axis direction.
       	Value range: (-1:1)
                                                                                       
     4  tBodyAccMeanY                                                                     
       	The mean of the time domain signal of the body acceleration in the Y-axis direction.
       	Value range: (-1: 1)
                                                                                       
     5  tBodyAccMeanZ                                                                     
       	The mean of the time domain signal of the body acceleration in the Z-axis direction. 
       	Value range: (-1:1)
       	
     6  tBodyAccStdX                                                                     
     	The mean of the standard deviation of the time domain signal of the body acceleration in the X-axis direction. 
       	Value range: (-1:1)
       	    	
     7  tBodyAccStdY                                                                     
     	The mean of the standard deviation of the time domain signal of the body acceleration in the Y-axis direction. 
       	Value range: (-1:1)
        	
     8  tBodyAccStdZ                                                                        
     	The mean of the standard deviation of the time domain signal of the body acceleration in the Z-axis direction. 
       	Value range: (-1:1)
        	
     9  tGravityAccMeanX                                                                     
     	The mean of the time domain signal of the gravitational acceleration in the X-axis direction. 
       	Value range: (-1:1)
        	
    10	tGravityAccMeanY                                                                    
    	The mean of the time domain signal of the gravitational acceleration in the Y-axis direction. 
       	Value range: (-1:1)  
       	
    11	tGravityAccMeanZ                                                                     
    	The mean of the time domain signal of the gravitational acceleration in the Z-axis direction. 
       	Value range: (-1:1)
         	
    12	tGravityAccStdX                                                                     
    	The mean of the standard deviation of the time domain signal of the gravitational acceleration in the X-axis direction. 
       	Value range: (-1:1)
        	
    13	tGravityAccStdY                                                                     
    	The mean of the standard deviation of the time domain signal of the gravitational acceleration in the Y-axis direction.
       	Value range: (-1:1)
        	
    14	tGravityAccStdZ                                                                     
    	The mean of the standard deviation of the time domain signal of the gravitational acceleration in the Z-axis direction.
       	Value range: (-1:1)       	
        	
    15	tBodyAccJerkMeanX                                                                     
    	The mean of the time domain signal of the body acceleration jerk in the X-axis direction. 
       	Value range: (-1:1)
        	
    16	tBodyAccJerkMeanY                                                                     
    	The mean of the time domain signal of the body acceleration jerk in the Y-axis direction. 
       	Value range: (-1:1)
         	
    17	tBodyAccJerkMeanZ                                                                     
    	The mean of the time domain signal of the body acceleration jerk in the Z-axis direction. 
       	Value range: (-1:1)  
       	        	
    18	tBodyAccJerkStdX                                                                     	
    	The mean of the standard deviation of the time domain signal of the body acceleration jerk in the X-axis direction. 
       	Value range: (-1:1)
         	
    19	tBodyAccJerkStdY                                                                     
    	The mean of the standard deviation of the time domain signal of the body acceleration jerk in the Y-axis direction. 
       	Value range: (-1:1)
         	
    20	tBodyAccMJerkStdZ                                                                     
    	The mean of the standard deviation of the time domain signal of the body acceleration jerk in the Z-axis direction. 
       	Value range: (-1:1) 
         	
    21	tBodyGyroMeanX                                                                     
    	The mean of the time domain signal of the body gyration in the X-axis direction. 
       	Value range: (-1:1)
         	
    22	tBodyGyroMeanY                                                                     
    	The mean of the time domain signal of the body gyration in the Y-axis direction. 
       	Value range: (-1:1)
         	
    23	tBodyGyroMeanZ                                                                     
    	The mean of the time domain signal of the body gyration in the Z-axis direction. 
       	Value range: (-1:1)
         	
    24	tBodyGyroStdX                                                                     
    	The mean of the standard deviation of the time domain signal of the body gyration in the X-axis direction. 
       	Value range: (-1:1)
         	
    25	tBodyGyroStdY                                                                     
    	The mean of the standard deviation of the time domain signal of the body gyration in the Y-axis direction. 
       	Value range: (-1:1)
           	
    26	tBodyGyroStdZ                                                                     
    	The mean of the standard deviation of the time domain signal of the body gyration in the Z-axis direction. 
       	Value range: (-1:1)     	
  
    27	tBodyGyroJerkMeanX                                                                     
    	The mean of the time domain signal of the body gyration jerk in the X-axis direction. 
       	Value range: (-1:1)
         	
    28	tBodyGyroJerkMeanY                                                                     
    	The mean of the time domain signal of the body gyration jerk in the Y-axis direction. 
       	Value range: (-1:1)
          	
    29	tBodyGyroJerkMeanZ                                                                     
    	The mean of the time domain signal of the body gyration jerk in the Z-axis direction. 
       	Value range: (-1:1)
           	
    30	tBodyGyroJerkStdX                                                                     
    	The mean of the standard deviation of the time domain signal of the body gyration jerk in the X-axis direction. 
       	Value range: (-1:1)  
            	
    31	tBodyGyroJerkStdY                                                                     
    	The mean of the standard deviation of the time domain signal of the body gyration jerk in the Y-axis direction. 
       	Value range: (-1:1) 
             	
    32	tBodyGyroJerkStdZ                                                                     
    	The mean of the standard deviation of the time domain signal of the body gyration jerk in the Z-axis direction. 
       	Value range: (-1:1) 
              	
    33	tBodyAccMagMean                                                                    
    	The mean of the magnitude of the three dimensional body acceleration signals. 
       	Value range: (-1:1) 
              	
    34	tBodyAccStd                                                                     
    	The mean of the standard deviaiton of the three dimensional body accelearation signals. 
       	Value range: (-1:1) 
            	
    35	tGravityAccMagMean                                                                   
    	The mean of the magnitude of the three dimensional gravitational acceleration signals. 
       	Value range: (-1:1) 
             	
    36	tGravityAccMagStd                                                                     
    	The mean of the standard deviation of the magnitude of the three dimensional gravitational accelaration signals. 
       	Value range: (-1:1) 
           	
    37	tBodyAccJerkMagMean                                                                     
    	The mean of the magnitude of the three dimensional body acceleration jerk signals. 
       	Value range: (-1:1)        	
           	
    38	tBodyAccJerkMagStd                                                                     
    	The mean of the standard deviation of the three dimensional body acceleration jerk signals.
       	Value range: (-1:1)        	
           	
    39	tBodyGyroMagMean                                                                  
    	The mean of the magnitude of the three dimensional gyration signals. 
       	Value range: (-1:1)        	
           	
    40	tBodyGyroMagStd                                                                     
    	The mean of the standard deviation of the magnititude of the three dimensional gyration signals. 
       	Value range: (-1:1)  
           	
    41	tBodyGyroJerkMagMean                                                                     
    	The mean of the magnitude of the three dimensional gyration jerk signals.
       	Value range: (-1:1)
            	
    42	tBodyGyroJerkMagStd                                                                  
    	The mean of the standard deviation of the three dimensional gyration jerk signals.
       	Value range: (-1:1)
             	
    43	fBodyAccMeanX                                                                     
    	The mean of the frequency domain signal of the body acceleration in the X-axis direction. 
       	Value range: (-1:1)
             	
    44	fBodyAccMeanY                                                                     
    	The mean of the frequency domain signal of the body acceleration in the Y-axis direction. 
       	Value range: (-1:1)
            	
    45	fBodyAccMeanZ                                                                     
    	The mean of the frequency domain signal of the body acceleration in the Z-axis direction. 
       	Value range: (-1:1)
             	
    46	fBodyAccStdX                                                                     	
    	The mean of the standard deviation of the frequency domain signal of the body acceleration in the X-axis direction. 
       	Value range: (-1:1)
             	
    47	fBodyAccStdY                                                                     
    	The mean of the standard deviation of the frequency domain signal of the body acceleration in the Y-axis direction. 
       	Value range: (-1:1)
           	
    48	fBodyAccStdZ                                                                     
    	The mean of the standard deviation of the frequency domain signal of the body acceleration in the Z-axis direction. 
       	Value range: (-1:1)
              	
    49	fBodyAccJerkMeanX                                                                     
    	The mean of the frequency domain signal of the body acceleration jerk in the X-axis direction. 
       	Value range: (-1:1)
            	
    50	fBodyAccJerkMeanY                                                                     
    	The mean of the frequency domain signal of the body acceleration jerk in the Y-axis direction. 
       	Value range: (-1:1)
            	
    51	fBodyAccJerkMeanZ                                                                     
    	The mean of the frequency domain signal of the body acceleration jerk in the Z-axis direction. 
       	Value range: (-1:1)
             	
    52	fBodyAccJerkStdX                                                                    
    	The mean of the standard deviation of the frequency domain signal of the body acceleration jerk in the X-axis direction. 
       	Value range: (-1:1)
            	
    53	fBodyAccJerkStdY                                                                     
    	The mean of the standard deviation of the frequency domain signal of the body acceleration jerk in the Y-axis direction. 
       	Value range: (-1:1)
            	
    54	fBodyAccJerkStdZ                                                                     
    	The mean of the standard deviation of the frequency domain signal of the body acceleration jerk in the Z-axis direction. 
       	Value range: (-1:1)
            	
    55	fBodyGyroMeanX                                                                     
    	The mean of the frequency domain signal of the body gyration in the X-axis direction. 
       	Value range: (-1:1)
            	
    56	fBodyGyroMeanY                                                                     
    	The mean of the frequency domain signal of the body gyration in the Y-axis direction. 
       	Value range: (-1:1)
            	
    57	fBodyGyroMeanZ                                                                     
    	The mean of the frequency signal of the body gyration in the Z-axis direction. 
       	Value range: (-1:1)
            	
    58	fBodyGyroStdX                                                                     
    	The mean of the standard deviation of the frequency domain signal of the body gyration in the X-axis direction. 
       	Value range: (-1:1)
            	
    59	fBodyGyroStdY                                                                     
    	The mean of the standard deviation of the frequency domain signal of the body gyration in the Y-axis direction. 
       	Value range: (-1:1)
            	
    60	fBodyGyroStdZ                                                                     	
    	The mean of the standard deviation of the frequency domain signal of the body gyration in the Z-axis direction. 
       	Value range: (-1:1) 
            	
    61	fBodyAccMagMean                                                                     
    	The mean of the magnitude of the frequency domain signal applied to the three dimensional body acceleration signals.  
       	Value range: (-1:1)
             	
    62	fBodyAccMagStd                                                                     
    	The mean of the standard deviation of the magnitude of the frequency domain signal applied to the three dimensional body acceleration signals. 
       	Value range: (-1:1)
            	
    63	fBodyBodyAccJerkMagMean                                                                     
    	The mean of the magnitude of the frequency domain signal applied to the three dimensional body acceleration jerk signals.
       	Value range: (-1:1)
            	
    64	fBodyBodyAccJerkMagStd                                                                   
    	The mean of the standard deviation of the frequency domain signal applied to the three dimensional body acceleration jerk signals. 
       	Value range: (-1:1)
             	
    65	fBodyBodyGyroMagMean                                                                     
    	The mean of the magnitude of the frequency domain signal applied to the three dimensional body gyration signals. 
       	Value range: (-1:1)
             	
    66	fBodyBodyGyroMagStd                                                                    
    	The mean of the standard deviation of the magnitude of the frequency domain signal applied to the three dimensional body gyration signals. 
       	Value range: (-1:1) 
            	
    67	fBodyBodyGyroJerkMagMean                                                                   
    	The mean of the magnitude of the frequency domain signal applied to the three dimensional body gyration jerk signals.
       	Value range: (-1:1)
             	
    68	fBodyBodyGyroJerkMagStd                                                                    
    	The mean of the standard deviation of the magnitude of the frequency domain signal applied to the three dimensional body gyration jerk signals.
       	Value range: (-1:1)      	