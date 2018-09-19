# https://github.com/jboss-logging/jboss-logging-tools

extend JavacLib

@github = { project: 'jboss-logging/jboss-logging-tools', rev: "#{@version}.Final" }
@srcs = 'annotations/src/main/java'
@rdeps = []
@bdeps = @rdeps + ['org.jboss.logging:jboss-logging']
