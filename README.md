<include a CircleCI status badge, here>

[![CircleCI](https://circleci.com/gh/chrisiregbu/project-ml-microservice-kubernetes/tree/main.svg?style=svg)](https://circleci.com/gh/chrisiregbu/project-ml-microservice-kubernetes/tree/main)

## Project Overview

In this project, I had to operationalise a working Machine Learning Microsservice API using Kubernetes Kubernetes, which is an open-source system for automating the management of containerized applications. The microservice API has been trained to predict housing prices in Boston according to several features, such as avergae rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. 

I completed the following as part of this project:

* Tested my project code using linting
* Completed a Dockerfile to containerize the microservice application
* Deployed the containerized application using Docker and made a prediction. The output os the prediction is in the file "docker_out.txt"
* Improved the log statements in the source code for the application
* Configured Kubernetes and created a Kubernetes cluster using K3s in Cloud9 environment
* Deployed the containerized application using Kubernetes and made a prediction. The output of the prediction is in the file "kubernetes_out.txt"
* Uploaded a complete Github repo with CircleCI to indicate that my code has been tested

In this project, you will apply the skills you have acquired in this course to operationalize a Machine Learning Microservice API. 

You are given a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project tests your ability to operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

### Project Tasks

Your project goal is to operationalize this working, machine learning microservice using [kubernetes](https://kubernetes.io/), which is an open-source system for automating the management of containerized applications. In this project you will:
* Test your project code using linting
* Complete a Dockerfile to containerize this application
* Deploy your containerized application using Docker and make a prediction
* Improve the log statements in the source code for this application
* Configure Kubernetes and create a Kubernetes cluster
* Deploy a container using Kubernetes and make a prediction
* Upload a complete Github repo with CircleCI to indicate that your code has been tested

## Setup the Environment

* Run `python3 -m venv venv` to create a virtualenv 
* Run `source venv/bin/activate` to activate the virtual environment
* Run `make install` to install the necessary dependencies
* Run `make lint` to run lint checks on the project code and to pass two lint checks; hadolint checks the Dockerfile for errors while pylint checks the app.py source code for errors.

### Running `app.py`
### There are three ways to run the application

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

### Steps to setup Kubernetes

* Setup and Configure Docker locally
* Setup and Configure Kubernetes locally
* Create Flask app in Container
* Run via kubectl

## Description of files

1. .circleci/config.yml
    This is the directory (.circle) holds the config.yml that checks the project code for errors.

2. app.py: 
    Represents the Containerized Machine Learning application

3. docker_out.txt: 
    This file contains the output of running the docker container locally, calling the prediction script,
    make_predictions.sh; the log output, which includes the output prediction value.

4. Dockerfile: 
    This is used to containerize the app.py application. It creates a working directory, installs the necessary dependencies, 
    exposes port 80, and specifies that app.py run at container launch. 
    
5. kubernetes_out.txt: 
    This contains the logs output when the docker container is run on a kubernetes cluster

6. make_prediction.sh: 
    This is used to make api calls to the application

7. Makefile: 
    This contains instructions on environment setup and lint tests

8. requirements.txt: 
    This contains the dependencies that needs to be installed for the applicationto work

9. run_docker.sh: 
    This file contains the build, list, and run steps for running the Docker application locally

run_kubernetes.sh:
     A script file that runs a docker image with kubernetes, lists the kubernetes pod(s), and forwards the 
     container port to a host, using kubectl.

11. upload_docker.sh:
    This file tags and uploads the built docker image to my own personal Docker ID

12. model_data: 
    This contains the data the application uses to make predictions