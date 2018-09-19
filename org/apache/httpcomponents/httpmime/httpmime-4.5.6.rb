# http://hc.apache.org/

extend JavacLib

@github = { project: 'apache/httpcomponents-client', rev: @version }
@srcs = ['httpmime/src/main/java', 'httpmime/src/main/java-deprecated']
@rdeps = ['org.apache.httpcomponents:httpcore']
