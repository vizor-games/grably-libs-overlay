# http://hc.apache.org/

extend JavacLib

@github = { project: 'apache/httpcomponents-core', rev: @version }
@srcs = ['httpcore/src/main/java', 'httpcore/src/main/java-deprecated']
