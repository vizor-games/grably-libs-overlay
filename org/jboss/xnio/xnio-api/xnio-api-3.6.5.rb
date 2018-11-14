# https://github.com/xnio/xnio

extend JavacLib

@github = { project: 'xnio/xnio', rev: "#{@version}.Final" }
@srcs = 'api/src/main/java'
@res = 'api/src/main/resources'
@rdeps = [
  'org.jboss.logging:jboss-logging-annotations',
  'org.jboss.threads:jboss-threads',
  'org.wildfly.client:wildfly-client-config'
]
@bdeps = @rdeps + ['org.jboss.logging:jboss-logging-processor']

def patch
  # Generate version
  File.open(w('api/src/main/resources/org/xnio/Version.properties'), 'w') do |f|
    f.puts("version=#{@version}")
    f.puts('jarName=xnio-api')
  end

  # Exclude osgi
  patch_w('xnio-api-no-osgi.patch')

  # Exclude compatibility stub
  rm_w('api/src/main/java/java/nio/channels')
end
