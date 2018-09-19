# https://github.com/jboss-logging/slf4j-jboss-logging

extend JavacLib

@github = { project: 'jboss-logging/slf4j-jboss-logging', rev: "#{@version}.Final" }
@srcs = 'src/main/java'
@rdeps = ['org.jboss.logging:jboss-logging']
@bdeps = @rdeps + ['org.slf4j:slf4j-api']
