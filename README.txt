# Getting*and*Cleaning*Data
Getting and Cleaning Data Course Project

Required for run_analysis.R
the following files must be in the current working directory
* editedFeatures.txt
* selectedFeatures.txt
the following files must be in subdirectories
*/test/X_test.txt
*/train/X_train.txt
*/test/y_test.txt
*/train/y_train.txt
*/test/subject_test.txt
*/train/subject_train.txt

source run_analysys.R with the required files to run

run_analysys.R reads in test, training, subject, and activity data and merges the data into one table. after creating a single table, columns that don't contain subject, activity, mean, or standard deviation are removed. The final table is written to a text file.

