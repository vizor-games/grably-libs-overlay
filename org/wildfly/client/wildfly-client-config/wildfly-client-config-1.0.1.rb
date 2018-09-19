# https://github.com/wildfly/wildfly-client-config

extend JavacLib

@github = { project: 'wildfly/wildfly-client-config', rev: "#{@version}.Final" }
@srcs = 'src/main/java'
@rdeps = [
  'org.jboss.logging:jboss-logging-annotations',
  'org.jboss.logging:jboss-logging',
  'org.wildfly.common:wildfly-common'
]
