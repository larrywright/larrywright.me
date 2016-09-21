def hostip() {
    sh(returnStdout: true, script:'ip route show 0.0.0.0/0 | grep -Eo \'via \\S+\' | awk \'{ print \$2 }\'')
}  
 node{
  stage 'Check out source'
  git url: 'https://github.com/larrywright/larrywright.me.git'
  sh 'git submodule update --init'
 }
 node{
  stage 'Build Docker image'
  sh 'sudo docker build -t larrywright/larrywright.me .'
 }
 node{
  stage 'Test'
  sh 'if $(sudo docker ps -a| grep -q "larrywright.me") ; then sudo docker stop larrywright.me ; sudo docker rm larrywright.me; fi'
  sh 'if $(sudo docker ps -a | grep -q "nginx") ; then sudo docker stop nginx && sudo docker rm nginx; fi'
  sh 'sudo docker run -d --name larrywright.me -v /usr/share/nginx/html larrywright/larrywright.me:latest'
  sh 'sudo docker run -d --name nginx -p 80:80 --volumes-from larrywright.me nginx'
  sh "curl ${hostip()}"
  sh 'sudo docker stop larrywright.me'
  sh 'sudo docker rm larrywright.me' 
  sh 'sudo docker stop nginx'
  sh 'sudo docker rm nginx' 
 }
 node{
  stage 'Deploy'
  withCredentials([[$class: 'UsernamePasswordMultiBinding', credentialsId: 'larrywright-docker', passwordVariable: 'pass', usernameVariable: 'user']]) {
    // some block
    sh 'sudo docker login --username $user --password $pass'
  }
  sh 'sudo docker push larrywright/larrywright.me'
 }
