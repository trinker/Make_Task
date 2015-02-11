recurrence <- "once"
task_name <- "MyTask"
bat_loc <- "C:\\Users\\Tyler\\Desktop\\Make_Task\\task.bat"
time <- "00:21"

system(sprintf("schtasks /create /sc %s /tn %s /tr \"%s\" /st %s", recurrence, task_name, bat_loc, time))


## Additional arguments
browseURL("https://msdn.microsoft.com/en-us/library/windows/desktop/bb736357%28v=vs.85%29.aspx")

## Open the scheduled tasks
system("control schedtasks")
