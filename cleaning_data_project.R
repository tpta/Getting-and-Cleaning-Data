#get variable names
feature_list <- read.table("./editedFeatures.txt")
selected_list <- read.table("./selectedFeatures.txt")
#create vector of variable names
colNames <- feature_list[,2]
selected <- selected_list[,1]


#read tables and combine into a single table
test_table <- read.table("./test/X_test.txt")
train_table <- read.table("./train/X_train.txt")
full <- rbind(test_table, train_table)

test_subj <- read.table("./test/subject_test.txt")
train_subj <- read.table("./train/subject_train.txt")
subj <- rbind(test_subj, train_subj)
colnames(subj) <- "subject"

activity.names <- c("walking", "walking_upstairs", "walking_downstairs", "sitting", "standing", "laying")
test_act <- read.table("./test/y_test.txt")
train_act <- read.table("./train/y_train.txt")
activities <- rbind(test_act, train_act)
colnames(activities) <- "activity"

#apply variable names to the combined table
#colnames(full) <- colNames

desired <- select(full, 1:6, 41:46, 81:86, 121:126,161:166,201,202,214,215,227,228,240,241,253,254,266:271,345:350,424:429,503,504,516,517,529,530,542,543)
colnames(desired) <- selected_list[,2]
subj_act <- cbind(subj,activities)
desired <- cbind(subj_act, desired)
activities <- activity.names[desired[,2]]
desired[,2] <- activities

write.table(desired, "./allsensordata.txt")