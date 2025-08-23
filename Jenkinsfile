pipeline {
  agent any

  parameters {
    string(name: 'VERSION', defaultValue: '1.0.0', description: 'Release version')
  }

  environment {
    REPO_URL = "https://github.com/ozgemer/devops-experts.git"
    WORKDIR  = "devops-experts"
    APP_URL  = "http://127.0.0.1:5000"
  }

  stages {
    stage('Clone Repo') {
      steps {
        sh 'rm -r "$WORKDIR'
        sh 'git clone "$REPO_URL" "$WORKDIR"'
      }
    }

    stage('Build & Run') {
      steps {
        dir("${WORKDIR}") {
          sh 'docker compose up -d --build'
        }
      }
    }

    stage('Test Webapp') {
      steps {
        sh '''
          set -e
          sleep 5
          curl -fsS -o /dev/null "$APP_URL/"
        '''
      }
    }

    stage('Package publish Files') {
      steps {
        dir("${WORKDIR}") {
          sh '''
            set -e
            mkdir -p publish/
            cp webapp.py publish/
            cp -r templates publish/templates
            tar -czvf "webapp-${VERSION}.tar.gz" publish
          '''
        }
      }
    }

    stage('Archive Artifacts') {
      steps {
        archiveArtifacts artifacts: "${WORKDIR}/webapp-${VERSION}.tar.gz", fingerprint: true
      }
    }
  }

  post {
    always {
      sh 'docker compose -f "$WORKDIR/compose.yml" down'
    }
  }
}
