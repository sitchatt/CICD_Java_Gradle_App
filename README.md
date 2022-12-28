# DevopsProject_JavaApp
CICD pipeline for Java application to deploy on kubernetes cluster using Jenkins | Devops Project

This application is java spring boot web application

build tool is ** gradle **
when we build the code using command ./gradlew build  it will generate war file. that war can be placed in tomcat server to see application web page
code is integrated with sonarqube plugin which help us in static code analysis

./gradlew sonarqube



Steps:
✔️ Installing the tools which are required CICD ( Docker, k8s, Jenkins, Sonarqube, Nexus, Helm, Datree)
✔️Integration of Jenkins & Sonarqube for static code analysis 
✔️ Dockerizing Application and pushing the image to private registry 
✔️ Identifying the misconfiguration  in HELM charts using datree
✔️ Pushing the helm charts to nexus for re-usability 
✔️Manual approval for deployment 
✔️Deploying the application on k8s cluster using the helm charts 
✔️ Configuring mail server 
✔️ Enabling  pull request trigger 
