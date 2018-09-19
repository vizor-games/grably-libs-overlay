# https://github.com/classgraph/classgraph

extend JavacLib

@github = { project: 'classgraph/classgraph', rev: "fast-classpath-scanner-#{@version}" }
@srcs = 'src/main/java'
