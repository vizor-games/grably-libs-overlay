# https://logging.apache.org/log4j/1.2

extend JavacLib

@github = { project: 'apache/log4j', rev: "v#{@version.join('_')}" }
@srcs = 'src/main/java'
@res = 'src/main/resources'
@rdeps = ['javax.mail:javax.mail-api', 'javax.jms:javax.jms-api']
