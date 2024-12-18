#!/usr/bin/env nextflow

nextflow.enable.dsl = 2

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