# Jobber

Jobber is a utility for Unix-like systems that can run arbitrary commands,
or “jobs”, according to a schedule. It is meant to be a better 
alternative to the classic Unix utility cron.

## Features
1. Job execution history: you can see what jobs have recently run, and whether they succeeded or failed.
1. Sophisticated error handling: you can control whether and when a job is run again after it fails.
For example, after an initial failure of a job, Jobber can schedule future runs using an exponential backoff algorithm.

1. Sophisticated error reporting: you can control whether Jobber notifies you 
about each failed run, or only about jobs that 
have been disabled due to repeated failures.

## Docs

Documentation for the current version that we are using can be found at: 
https://dshearer.github.io/jobber/doc/v1.4/

## Usage 

````
docker run -d \ 
    --restart=always \
    --volume /opt/jobber/jobfile:/home/jobberuser/.jobber:rw \
    --name jobber --hostname jobber \
    ghcr.io/jzizka91/docker-jobber:latest
````

## CLI 

Get list of running jobs: 

````
docker exec -it jobber jobber list
````

Check the logs of running jobs: 

````
docker exec -it jobber cat /home/jobberuser/jobber.log
````
