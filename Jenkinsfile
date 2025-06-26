pipeline {
  agent {
    docker {
      image 'blang/latex:ubuntu'
      args '-u root'
    }
  }

  stages {
    stage('Build PDF') {
      steps {
        sh 'lualatex --jobname="audio" 2024-wa-vorlage.tex' 
        archiveArtifacts artifacts: '*.pdf', fingerprint: true
      }
    }
  }
}
