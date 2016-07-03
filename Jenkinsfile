 node{
  stage 'Check out source'
  git url: 'https://github.com/larrywright/larrywright.me.git'
 }
 node{
  stage 'Build Docker image'
  sh 'sudo docker build -t larrywright/larrywright.me .'
 }
 node{
  stage 'Test'
  sh 'docker run -d --name larrywright.me -p 1313:1313 larrywright.me/larrywright.me:latest'
  sh 'curl -f localhost:1313'
  sh 'docker stop larrywright.me'
  sh 'docker rm larrywright.me' 
 }
 node{
  stage 'Deploy'
  echo 'Deploy not implemented yet'
 }
