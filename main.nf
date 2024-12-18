process printEnv {
    container 'ubuntu:latest'
    
    output:
    stdout

    script:
    """
    env | sort
    """
}
