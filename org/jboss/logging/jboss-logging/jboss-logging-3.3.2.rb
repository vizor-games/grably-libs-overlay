# https://github.com/jboss-logging/jboss-logging

extend JavacLib

@github = { project: 'jboss-logging/jboss-logging', rev: "#{@version}.Final" }
@srcs = 'src/main/java'
@rdeps = []
@bdeps = ['log4j:log4j-api', 'org.slf4j:slf4j-api']

def patch
  # Remove unused (by us) log providers
  ['Log4j2Logger', 'Log4j2LoggerProvider', 'JBossLogManagerLogger', 'JBossLogManagerProvider'].each do |p|
    rm_w("src/main/java/org/jboss/logging/#{p}.java")
  end
  patch_w('jboss-logging-remove-nonsupported-logproviders.patch')

  # Support new slf4j api
  patch_w('jboss-logging-slf4j.patch')
end
