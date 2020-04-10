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