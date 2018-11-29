# https://github.com/undertow-io/undertow

extend JavacLib

@github = { project: 'undertow-io/undertow', rev: "#{@version}.Final" }
@srcs = 'core/src/main/java'
@rdeps = [
  'org.jboss.xnio:xnio-nio',
  "=io.undertow:undertow-parser-generator-#{@version}"
]
@bdeps = @rdeps + ['org.jboss.logging:jboss-logging-processor']

def patch
  # Disable support for jetty alpn for now
  rm_w('core/src/main/java/io/undertow/protocols/alpn/JettyAlpnProvider.java')
end
