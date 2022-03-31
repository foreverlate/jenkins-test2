def gv

pipeline {
    agent any
    
    stages {

        stage("init") {
            steps {
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
