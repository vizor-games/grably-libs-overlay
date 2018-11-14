# https://github.com/jbossas/jboss-threads

extend JavacLib

@github = { project: 'jbossas/jboss-threads', rev: '3.0.0.Alpha1' }
@srcs = 'src/main/java'
@rdeps = ['org.jboss.logging:jboss-logging-annotations', 'org.wildfly.common:wildfly-common']
@bdeps = @rdeps + ['org.jboss.logging:jboss-logging-processor']
