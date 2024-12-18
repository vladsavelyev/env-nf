#!/usr/bin/env nextflow

nextflow.enable.dsl = 2

process printEnv {
    container 'ubuntu:latest'
    
    output:
    stdout

    script:
    """
    env | sort
    """
}

workflow {
    printEnv | view
}