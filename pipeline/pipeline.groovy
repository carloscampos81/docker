pipeline {
  agent {
    docker {
      image 'node:10-alpine'
      args '-p 20001-20100:3000'
    }
  }
  environment {
    CI = 'true'
    HOME = '.'
    npm_config_cache = 'npm-cache'
  }
  stage('Checkout')
    {
        GitManager.clone(this, "https://github.com/jfrogdev/project-examples.git", "*/master", "myGitUserID");
    }
  stages {
    stage('Install Packages') {
      steps {
        sh 'npm install'
      }
    }
    stage('Test and Build') {
      parallel {
        stage('Run Tests') {
          steps {
            sh 'npm run test'
          }
        }
        stage('Create Build Artifacts') {
          steps {
            sh 'npm run build'
          }
        }
      }
    }
    stage('Deployment') {
      parallel {
        
        stage('Desenvolvimento') {
          when {
            branch 'develop'
          }
          steps {
            withAWS(region:'<your-bucket-region>',credentials:'<AWS-Staging-Jenkins-Credential-ID>') {
              s3Delete(bucket: '<bucket-name>', path:'**/*')
              s3Upload(bucket: '<bucket-name>', workingDir:'build', includePathPattern:'**/*');
            }
            mail(subject: 'Staging Build', body: 'New Deployment to Staging', to: 'jenkins-mailing-list@mail.com')
          }
        }

        stage('Homologação') {
          when {
            branch 'stage'
          }
          steps {
            withAWS(region:'<your-bucket-region>',credentials:'<AWS-Staging-Jenkins-Credential-ID>') {
              s3Delete(bucket: '<bucket-name>', path:'**/*')
              s3Upload(bucket: '<bucket-name>', workingDir:'build', includePathPattern:'**/*');
            }
            mail(subject: 'Staging Build', body: 'New Deployment to Staging', to: 'jenkins-mailing-list@mail.com')
          }
        }
        stage('Produção') {
          when {
            branch 'master'
          }
          steps {
            withAWS(region:'<your-bucket-region>',credentials:'<AWS-Production-Jenkins-Credential-ID>') {
              s3Delete(bucket: '<bucket-name>', path:'**/*')
              s3Upload(bucket: '<bucket-name>', workingDir:'build', includePathPattern:'**/*');
            }
            mail(subject: 'Production Build', body: 'New Deployment to Production', to: 'jenkins-mailing-list@mail.com')
          }
        }
      }
    }
  }
}