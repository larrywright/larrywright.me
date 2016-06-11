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
  echo 'Test not implemented yet'
 }
 node{
  stage 'Deploy'
  echo 'Test not implemented yet'
 }
