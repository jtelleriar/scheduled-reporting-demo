# Scheduled Reporting Demo

Rundeck container running containerized cron job.

## Preparation

To run this example you will need to use **docker-compose**.
Under the following URL you will find complete installation tutorial:  
https://docs.docker.com/compose/install/  
  
Clone the repository and go to the main directory

```
cd ~/git/scheduled-reporting-demo
```

Then, you can run Rundeck container:
```
docker-compose up
```

Rundeck will be accessible with your web browser under the following URL:

```
http://localhost/rundeck
```

## Scheduling a job

Login with the following credentials:

```
Username: admin
Password: admin
```
Next, click on **Example Project** and go to **JOBS** section.  

Click on the "play" button next to "Generate Time Report" and run your job by clicking the green button.  

The example report will be saved in 

```
/tmp/reports/report[timestamp].html
```
