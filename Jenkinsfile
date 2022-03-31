def gv

pipeline {
    agent any
    
    stages {

        stage("init") {
            steps {
		withCrenditals([[$class		: 'UsernamePasswordMultiBinding',
				 crendentialsID	: 'PCF_LOGIN',
				 usernameVariable : 'USERNAME',
				 passwordVariable : 'PASSWORD']]) {
			sh '/usr/local/bin/cf login -a http://api.run.pivotal.io -u $ USERNAME -p $PASSWORD'
		}
			
		    
		sh "chmod +x -R ${env.WORKSPACE}"
                sh './run.sh'
                echo 'building the app'
          
            }
        }
        
         stage("build") {
            steps {
           
                echo 'building the app'
            }
        }
        
        stage("test") {
               steps {
                echo 'testing the app'
            }
        }
        stage("deploy") {
               steps {
                echo 'deploying the app'
              }
            
        }
    }   
}
