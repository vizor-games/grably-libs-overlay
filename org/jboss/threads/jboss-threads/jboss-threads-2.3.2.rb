# https://github.com/jbossas/jboss-threads

extend JavacLib

@github = { project: 'jbossas/jboss-threads', rev: "#{@version}.Final" }
@srcs = 'src/main/java'
@rdeps = ['org.jboss.logging:jboss-logging-annotations', 'org.wildfly.common:wildfly-common']
@bdeps = @rdeps + ['org.jboss.logging:jboss-logging-processor']
