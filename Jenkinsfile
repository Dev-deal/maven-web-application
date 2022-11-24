node {
    try {
        notifyBuild('STARTED')

def mavenHome=tool name: 'maven_3.8.6'

properties([buildDiscarder(logRotator(artifactDaysToKeepStr: '', artifactNumToKeepStr: '5', daysToKeepStr: '5', numToKeepStr: '5')), [$class: 'JobLocalConfiguration', changeReasonComment: ''], pipelineTriggers([pollSCM('* * * * *')])])

stage('getcodefromgit'){
git branch: 'stage', url: 'https://github.com/Dev-deal/maven-web-application.git'
}

stage('buildpackage'){
notifyBuild(String buildStatus = 'Build has been STARTED')
sh "${mavenHome}/bin/mvn clean package"
}

stage('sonarqubereport'){
notifyBuild(String buildStatus = 'Sonarqube report has been generated')
    sh "${mavenHome}/bin/mvn sonar:sonar"
}

stage('sendtoartifactory'){
notifyBuild(String buildStatus = 'Artifact has been pushed to nexus')
sh "${mavenHome}/bin/mvn deploy"
}

stage('deploytotomcat'){
notifyBuild(String buildStatus = 'Deployment to tomcat server is completed')
    sshagent(['7a50e8f4-ac0d-4bb6-a71d-eabdb54fe32a']){
      sh "scp -o StrictHostKeyChecking=no  target/maven-web-application.war ec2-user@172.31.19.106:/opt/apache-tomcat-9.0.68/webapps"
}


        }

  } catch (e) {
    // If there was an exception thrown, the build failed
    currentBuild.result = "FAILURE"
    throw e
  } finally {
    // Success or failure, always send notifications
    notifyBuild(currentBuild.result)
  }
}

def notifyBuild(String buildStatus = 'STARTED') {
  // build status of null means successful
  buildStatus =  buildStatus ?: 'SUCCESS'

  // Default values
  def colorName = 'RED'
  def colorCode = '#FF0000'
  def subject = "${buildStatus}: Job '${env.JOB_NAME} [${env.BUILD_NUMBER}]'"
  def summary = "${subject} (${env.BUILD_URL})"

  // Override default values based on build status
  if (buildStatus == 'STARTED') {
    color = 'YELLOW'
    colorCode = '#FFFF00'
  } else if (buildStatus == 'SUCCESS') {
    color = 'GREEN'
    colorCode = '#F34621'
  } else {
    color = 'RED'
    colorCode = '#FF0000'
  }

  // Send notifications
  slackSend (color: colorCode, message: summary)
}
