## CICD Testing

This project is for testing of the following concepts:

1) Unit testing
2) Automation of unit testing
3) Building of docker containers
4) Deployment of docker containers
5) Automation of build & deploy of docker containers to gke

Hopefully if I can achieve the above, I'll gain a much better understanding of CICD Pipelines, containerization, and cloud deployment.

## Notes

For a test to fail, the code itself must fail - there can't be try:except in the test cases, it has to actually break the program to cause a CI fail condition. 
*Edit* Can confirm this is correct, see failed pipeline on cicd-testing/intentional-ci-fail branch.


*Update* I've got to the stage of automated building and running of docker containers, it's only taken me 106 failed pipeline attempts but here we are. 
My next step is to add in some post-run tests to make sure that the flask app is actually functioning as expected, and from there I'll deploy to my gke cluster.
After that, I'll improve the pre-build tests for the application, perhaps add in some more functionality, and then go from there.

*Update 2* So, it's my current understanding that you can't publish and run directly to gke clusters via .gitlab-ci.yml functions, and you actually have to do the following:
1) Pre-build the docker container
2) Upload it to gcr, the google container registry
3) From the google cloud platform, establish a function to pull that container to the gke cluster
4) Run the container on the cluster
*EDIT* Turns out you can work around the assumption by using [this thing called gke-deploy](https://cloud.google.com/cloud-build/docs/deploying-builds/deploy-gke) which seems to explain how to do this from build from the safety of your own repo config files.
*EDIT 2* I've followed [this docmentaton on mirroring to google's cloud source repository](https://cloud.google.com/solutions/mirroring-gitlab-repositories-to-cloud-source-repositories) to make the deploying easier.
