### Coursera: Getting and Cleaning Data



#### Course Project

----------------------------

##### run_analysis.R

To perform the analysis as specified in the [course project instructions](https://class.coursera.org/getdata-031/human_grading/view/courses/975115/assessments/3/submissions), make sure that the Samsung data is in your working directory, in a subdirectory labeled "project_data."

When run_analysis() is called, it calls several helper functions in turn to clean and output the data:

* get_and_merge_data(): This function loads the training and test data into R, along with the provided label/index files to serve as column/variable names ("features.txt","activity_labels.txt","subject_train.txt","y_train.txt", and the _test equivalents). It binds the appropriate columns into x_train and x_test, after giving them appropriate names. Finally, it combines the training and test data using rbind(), since after labeling both tables are the same size and should have the same names.

* extract_mean_stddev(): Uses the Dplyr select() function to extract all columns dealing with means or standard deviations. Columns are selected using the matching() function argument to select(), to include all columns containing either "mean" or "std."

* get_summary(): Uses Dplyr's group_by() and summarise_all() to produce a (tidy) data set containing the averages for each combination of subject, activity, and measurement. 

As specified by the assignment, run_analysis() then takes the resulting summary data and writes it to "tidy_data.txt" in the current working directory using write.table().

--------------------------------------

#### Notes

* For the "descriptive names" for each activity, I chose to read in the "activity_labels.txt" file and programmatically turn the provided labels into variable names using tolower() and capitalize(). This way if future versions of the data should change the order or number of included activities, the script should still work. The script should (I hope) be able to adapt to this and other minor changes in the data.

* I also used the provided "features.txt" features list to name the measurement variables. I did this for 3 reasons:

    1. Same reason as above. If the next iteration of the data set should include additional measurements, they will be named programatically without needing to change any hard-coded values.
    2. I don't personally understand most of the measurement terminology, so it seems safest to leave the names unaltered.
    3. Going through and altering the names manually into something more human-readable would be a lot of trouble, even if it didn't mean hard-coding in values that might change later.