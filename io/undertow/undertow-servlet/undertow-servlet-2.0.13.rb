# https://github.com/undertow-io/undertow

extend JavacLib

@github = { project: 'undertow-io/undertow', rev: "#{@version}.Final" }
@srcs = 'servlet/src/main/java'
@rdeps = ["=io.undertow:undertow-core-#{@version}"]
@bdeps = @rdeps + [
  'javax.servlet:javax.servlet-api',
  'javax.annotation:javax.annotation-api',
  'org.jboss.logging:jboss-logging-processor'
]

def patch
  # Disable osgi
  rm_w('servlet/src/main/java/io/undertow/servlet/osgi')
end
