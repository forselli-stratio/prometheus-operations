@Library('libpipelines@master') _

hose {
    EMAIL = 'eos'
    MODULE = 'prometheus-dcos'
    REPOSITORY = 'prometheus-dcos'
    BUILDTOOL = 'make'
    NEW_VERSIONING = 'true'
    PKGMODULESNAMES = ['prometheus-dcos']
    DOCKERHUBSKIP = 'true'
    ANCHORE_POLICY = "production"

    DEV = { config ->
        doPackage(config)
        doDocker(config)
        doDeploy(config)
    }
}
