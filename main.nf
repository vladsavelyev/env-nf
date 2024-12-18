#!/usr/bin/env nextflow

nextflow.enable.dsl = 2

process printEnv {
    container 'ubuntu:latest'

    input:
    val myvar
    
    output:
    stdout

    script:
    """
    echo "TOWER_ACCESS_TOKEN from outside the container is: $myvar"
    echo "All environment variables inside the container:"
    env | sort
    """
}

workflow {
    myvar = System.getenv('TOWER_ACCESS_TOKEN') ?: 'TOWER_ACCESS_TOKEN is not set'
    printEnv(myvar) | view
}