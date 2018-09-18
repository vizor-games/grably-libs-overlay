# https://commons.apache.org/proper/commons-logging/

extend JavacLib

@github = { project: 'apache/commons-logging', rev: "LOGGING_#{@version.join('_')}" }
@srcs = "src/main/java"
@rdeps = ['log4j:log4j']
@bdeps = @rdeps + ['javax.servlet:javax.servlet-api']

def patch
  # remove unused loggers support
  rm_w("src/main/java/org/apache/commons/logging/impl/AvalonLogger.java")
  rm_w("src/main/java/org/apache/commons/logging/impl/LogKitLogger.java")
end
