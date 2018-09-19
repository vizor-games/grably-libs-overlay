# http://hc.apache.org/

extend JavacLib

@github = { project: 'apache/httpasyncclient', rev: @version }
@srcs = ['httpasyncclient/src/main/java', 'httpasyncclient/src/main/java-deprecated']
@rdeps = [
  'org.apache.httpcomponents:httpcore-nio',
  'org.apache.httpcomponents:httpclient'
]
