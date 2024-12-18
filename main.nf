#!/usr/bin/env nextflow

nextflow.enable.dsl = 2

process printEnv {
    container 'ubuntu:latest'

    input:
    env TOWER_ACCESS_TOKEN

    output:
    stdout

    script:
    """
    echo "TOWER_ACCESS_TOKEN: \$TOWER_ACCESS_TOKEN"
    """
}

workflow {
    printEnv(System.env.TOWER_ACCESS_TOKEN) | view
}