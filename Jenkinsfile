pipeline {
    agent any
    stages {
        stage('Assign') {
            steps{
                script {
                    currentBuild.result = 'SUCCESS'
                }}}
        stage('Loadingfile') {
            steps {
                script {
                    echo "loading groovyfile"
                    groovyfile = load("atom.groovy")
                    echo "Groovy file loaded"
                    
                }}}

        stage('good') {
            steps {
                script {
                    try{
                        if( 'alpha' == 'alpha2'){
                            sh 'echo "good is working" '
                            groovyfile.unit_testing()
                            }
                        else{
                            sh 'echo "good is bad" '
                            groovyfile.unit_testing()
                            }
                    }
                    catch(e){
                        sh 'echo "good is catched" '
                        currentBuild.result = 'SUCCESS'
                    }}}}
        
        stage('Next_stage_1') {
            when {
                expression { currentBuild.resultIsBetterOrEqualTo('SUCCESS') }}
            steps {
                script {
                    sh 'echo "next stage 1 is going on"'
                    sh 'pip3 show coverage'
                }}}
                
        stage('Next_Stage_2') {
             when {
                expression { currentBuild.resultIsBetterOrEqualTo('SUCCESS') }}
            steps {
                script {
                    sh 'echo "next stage 2 is going on"'
                    groovyfile.pyenv()
                }}}
                
    }
}
