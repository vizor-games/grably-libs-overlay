# https://logback.qos.ch

extend GroovyLib

@github = { project: 'qos-ch/logback', rev: "v_#{@version}" }
@srcs = ['logback-classic/src/main/java', 'logback-classic/src/main/groovy']
@res = ['logback-classic/src/main/resources', 'logback-classic/src/main/groovy']
@rdeps = ['org.slf4j:slf4j-api', "=ch.qos.logback:logback-core-#{@version}"]
@bdeps = @rdeps + [
  'javax.servlet:javax.servlet-api',
  'javax.mail:javax.mail-api',
  'org.codehaus.groovy:groovy'
]
