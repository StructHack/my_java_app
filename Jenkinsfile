pipeline{
  agent any
  tools{
    gradle
  }
  environment{
    NEW_VERSION= '1.3.3'
  }
  stages{
    stage("build"){
      steps{
        echo 'building the application...'
        echo "building the version ${NEW_VERSION}"
      }
    }
    stage("test"){
          steps{
            echo "testing the appppplicaiton"
            echo "${SERVER_CREDENTIALS}"
          }
    }
    stage("deploy"){

      steps{
        echo "deploying the application"
        withCredentials([
          usernamePassword(credentials: 'server-credentials', usernameVariable:USER, passwordVariable: PASSWORD)
        ]){
          echo "${USER} :::: ${PASSWORD}"
        }
      }
      
    }
  }
}
