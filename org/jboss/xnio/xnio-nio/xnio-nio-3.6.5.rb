# https://github.com/xnio/xnio

extend JavacLib

@github = { project: 'xnio/xnio', rev: "#{@version}.Final" }
@srcs = 'nio-impl/src/main/java'
@res = 'nio-impl/src/main/resources'
@rdeps = ['org.jboss.xnio:xnio-api']
@bdeps = @rdeps + ['org.jboss.logging:jboss-logging-processor']

def patch
  # Generate version
  File.open(w('nio-impl/src/main/resources/org/xnio/nio/Version.properties'), 'w') do |f|
    f.puts("version=#{@version}")
    f.puts('jarName=xnio-nio')
  end

  # Exclude osgi
  rm_w('nio-impl/src/main/java/org/xnio/nio/OsgiActivator.java')
end
