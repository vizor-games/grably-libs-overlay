# http://hc.apache.org/

extend JavacLib

@github = { project: 'apache/httpcomponents-core', rev: @version }
@srcs = ['httpcore-nio/src/main/java', 'httpcore-nio/src/main/java-deprecated']
@rdeps = ['org.apache.httpcomponents:httpcore']
