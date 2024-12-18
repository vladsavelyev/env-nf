#!/usr/bin/env nextflow

nextflow.enable.dsl = 2

// Define the Docker container to use
process.container = 'ubuntu:latest'

// Enable Docker
docker.enabled = true

process printEnv {
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