================================================================================

## Summary Statistics Extract for Getting And Cleaning Data Coursera Project<br>
Chris Jones, 8/12/2017<br>
[github repo](https://github.com/sherifffruitfly/week4GaCdataproject)

================================================================================

## Original data source:

Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.<br>
Smartlab - Non Linear Complex Systems Laboratory<br>
DITEN - Università degli Studi di Genova.<br>
Via Opera Pia 11A, I-16145, Genoa, Italy.<br>
activityrecognition@smartlab.ws<br>
www.smartlab.ws<br>

================================================================================

## Summary Statistics Extract Requirements:

### There are (confusingly) several distinct sets of requirements for the project. I address them in turn, below.


    1. The submitted data set is tidy.	
_Submitted tidy dataset: data.summary.txt_<br>
_(this is the final measurement means, grouped by subject/activity)_<br>
<br>

	2. The Github repo contains the required scripts.
    
_Required script: run_analysis.R_<br>
_See the code for more detailed comments about computational procedure_<br>
<br>	
	
	3. GitHub contains a code book that modifies and updates the available codebooks with the data to indicate all the variables and summaries calculated, along with units, and any other relevant information.

_Required codebook: data.mean_sd_codebook.md_<br>
<br>
<br>

	4. The README that explains the analysis files is clear and understandable.
    
_This is as clear as the multiplicity of requirements permits, I guess :)_<br>	
<br>
<br>

	5. The work submitted for this project is the work of the student who submitted it.
	
_Confirmed_
	
--------------------------------------------------------------------------------	
## Requirements II:

	1. A tidy data set as described below

_Submitted tidy dataset: data.summary.txt_<br>
<br>
<br>

	2. A link to a Github repository with your script for performing the analysis
	
_Link:_ [github repo](https://github.com/sherifffruitfly/week4GaCdataproject)<br>
<br>
<br>

	
	3. A code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md.
	
_Required codebook: data.mean_sd_codebook.md_<br>
<br>
<br>

	4. You should also include a README.md in the repo with your scripts.

_This file is the README.md_
	
--------------------------------------------------------------------------------	
## Requirements III:

	You should create one R script called run_analysis.R that does the following.
		1. Merges the training and the test sets to create one data set.
		2. Extracts only the measurements on the mean and standard deviation for each measurement.
		3. Uses descriptive activity names to name the activities in the data set
		4. Appropriately labels the data set with descriptive variable names.
	
_Implemented in run_analysis.R. See the code comments for detail._<br>
<br>
<br>
	
		5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

_This is implemented in run_analysis.R, and also uploaded to the github repo as data.summary.txt ._

================================================================================
