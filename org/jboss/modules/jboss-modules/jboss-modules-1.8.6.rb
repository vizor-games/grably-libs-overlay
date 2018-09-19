# https://github.com/jboss-modules/jboss-modules

extend JavacLib

@github = { project: 'jboss-modules/jboss-modules', rev: "#{@version}.Final" }
@srcs = 'src/main/java'
