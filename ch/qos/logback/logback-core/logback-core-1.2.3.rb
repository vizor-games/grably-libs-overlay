# https://logback.qos.ch

extend JavacLib

@github = { project: 'qos-ch/logback', rev: "v_#{@version}" }
@srcs = 'logback-core/src/main/java'
@bdeps = [
  'javax.mail:javax.mail-api',
  'javax.servlet:javax.servlet-api',
  'org.codehaus.janino:janino'
]
