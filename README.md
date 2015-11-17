# Make_Task
A Minimal Example for Scheduling Windows Tasks with R

Also see:
  - [Blog Post](https://trinkerrstuff.wordpress.com/2015/02/11/scheduling-r-tasks-via-windows-task-scheduler/)    
  - [Video](https://www.youtube.com/watch?v=UDKy5_SQy2o)     


### Update

Using...

```
@echo off
R CMD BATCH C:\Users\Tyler\Desktop\Make_Task\task.R
```

makes strong assumptions about where R is located and if it's on the user's path.  As [@apwheele](https://trinkerrstuff.wordpress.com/2015/02/11/scheduling-r-tasks-via-windows-task-scheduler/#comment-1553) points out using the full path name to run a [batch file](http://www.statmethods.net/interface/batch.html) is more reliable.
```
@echo off
"C:\R\R-3.2.2\bin\x64\R.exe" CMD BATCH C:\Users\Tyler\Desktop\Make_Task\task.R`
```
