node{

def mavenHome=tool name: 'maven_3.8.6'

stage('getcodefromgit'){
git branch: 'stage', url: 'https://github.com/Dev-deal/maven-web-application.git'
}

stage('buildpackage'){
sh "${mavenHome}/bin/mvn clean package"
}

stage('sonarqubereport'){
    sh "${mavenHome}/bin/mvn sonar:sonar"
}

stage('sendtoartifactory'){
sh "${mavenHome}/bin/mvn deploy"
}

stage('deploytotomcat'){
    sshagent(['7a50e8f4-ac0d-4bb6-a71d-eabdb54fe32a']){
      sh "scp -o StrictHostKeyChecking=no  target/maven-web-application.war ec2-user@172.31.19.106:/opt/apache-tomcat-9.0.68/webapps"
}



}



}
