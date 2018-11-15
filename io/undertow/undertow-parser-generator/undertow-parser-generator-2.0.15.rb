# https://github.com/undertow-io/undertow

extend JavacLib

@github = { project: 'undertow-io/undertow', rev: "#{@version}.Final" }
@srcs = 'parser-generator/src/main/java'
@res = 'parser-generator/src/main/resources'
@rdeps = ['org.jboss.classfilewriter:jboss-classfilewriter']
