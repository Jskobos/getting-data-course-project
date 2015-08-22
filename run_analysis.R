run_analysis <- function() {
    library(Hmisc)
    library(dplyr)
    
    wearable_full    <- get_and_merge_data()
    wearable_tidy    <- extract_mean_stddev(wearable_full)
    wearable_summary <- get_summary(wearable_tidy)
    write.table(wearable_summary,file="./tidy_data.txt",row.names=FALSE)
    return(wearable_summary)
}

get_and_merge_data <- function() {
    ### Read all relevant files into R. Assumes all data is in the working directory,
    ### in a subdirectory labeled "project_data".
    
    labels <- read.table('./project_data/activity_labels.txt')
    features <- read.table('./project_data/features.txt')
    subject_train <- read.table('./project_data/train/subject_train.txt')
    x_train <- read.table('./project_data/train/X_train.txt')
    y_train <- read.table('./project_data/train/y_train.txt')
    subject_test <- read.table('./project_data/test/subject_test.txt')
    x_test <- read.table('./project_data/test/X_test.txt')
    y_test <- read.table('./project_data/test/y_test.txt')
    
    ### Label training and test data
    
    colnames(x_train) <- features$V2
    colnames(x_test)  <- features$V2
    
    ### Give ID columns descriptive names and attach to x_train/x_test
    labels <- capitalize(tolower(labels$V2))
    
    y_train <- rename(y_train,activity=V1) %>% transmute(activity=labels[activity])
    y_test  <- rename(y_test, activity=V1) %>% transmute(activity=labels[activity])
    
    subject_train <- rename(subject_train, subject.id=V1)
    subject_test  <- rename(subject_test,  subject.id=V1)
    
    train_ids <- cbind(y_train,subject_train)
    test_ids  <- cbind(y_test, subject_test)
    
    train_merged <- cbind(train_ids,x_train)
    test_merged  <- cbind(test_ids, x_test)
    
    ### Merge train and test data
    
    merged_data <- rbind(train_merged,test_merged)
    
    return(merged_data)
}

extract_mean_stddev <- function(full_data) {
    ### Extract mean and standard deviation for each measurement.
    
    ### Remove columns with duplicated names.
    full_data <- full_data[,!duplicated(colnames(full_data))]
    
    return(select(full_data,subject.id,activity,matches("mean|std")))
}

get_summary <- function(tidy_data) {
    group_by(tidy_data,activity,subject.id) %>% 
        summarise_each(funs(mean))
}

