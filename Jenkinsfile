pipeline{


  agent any
  tools{
    'gradlew-8.14'
  }
  stages{
    stage("build jar"){
      steps{
        script{
          sh 'gradlew build'
          echo "building the application"
        }
      }
    }
    
    stage("deploy"){
      steps{
        script{
          echo "deploying the application"
        }
      }
    }
  }


  
}
