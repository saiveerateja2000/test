pipeline {
    agent any
    stages {
        stage('Assign') {
            steps {
                script {
                    currentBuild.result = 'ABORTED'
                }}}
        stage('good') {
            steps {
                script {
                    try{
                        if( 'alpha' = 'alpha'){
                            echo 'good is working '}
                        else{
                            echo 'good is bad'
                            exit 1}
                    }
                    catch(e){
                        echo 'good is catched'}
                    }}}
        
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
