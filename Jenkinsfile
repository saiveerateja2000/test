pipeline {
    agent any
    stages {
        stage('Assign') {
            steps{
                script {
                    currentBuild.result = 'SUCCESS'
                }}}
        stage('good') {
            steps {
                script {
                    try{
                        if( 'alpha' == 'alpha2'){
                            sh 'echo "good is working" '
                            }
                        else{
                            sh 'echo "good is bad" '
                            exit 1
                            }
                    }
                    catch{
                        sh 'echo "good is catched" '
                        currentBuild.result = 'ABORTED'
                    }}}}
        
        stage('Next_stage_1') {
            when {
                expression { currentBuild.resultIsBetterOrEqualTo('SUCCESS') }}
            steps {
                script {
                    sh 'echo "next stage 1 is going on"'
                }}}
                
        stage('Next_Stage_2') {
             when {
                expression { currentBuild.resultIsBetterOrEqualTo('SUCCESS') }}
            steps {
                script {
                    sh 'echo "next stage 2 is going on"'
                }}}
                
    }
}
