# https://github.com/wildfly/wildfly-common

extend JavacLib

@github = { project: 'wildfly/wildfly-common', rev: "#{@version}.Final" }
@srcs = 'src/main/java'
@rdeps = [
  'org.jboss.logging:jboss-logging-annotations',
  'org.jboss.logging:jboss-logging'
]
