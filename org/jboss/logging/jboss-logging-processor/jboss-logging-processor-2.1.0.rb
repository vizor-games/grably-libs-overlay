# https://github.com/jboss-logging/jboss-logging-tools

extend JavacLib

@github = { project: 'jboss-logging/jboss-logging-tools', rev: "#{@version}.Final" }
@srcs = 'processor/src/main/java'
@res = 'processor/src/main/resources'
@rdeps = [
  'org.jboss.logging:jboss-logging',
  'org.jboss.logging:jboss-logging-annotations',
  'org.jboss.jdeparser:jdeparser'
]
