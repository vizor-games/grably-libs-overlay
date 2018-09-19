# http://hc.apache.org/

extend JavacLib

@github = { project: 'apache/httpcomponents-client', rev: @version }
@srcs = ['httpclient/src/main/java', 'httpclient/src/main/java-deprecated']
@rdeps = [
  'org.apache.httpcomponents:httpcore',
  'commons-logging:commons-logging-api',
  'commons-codec:commons-codec'
]
