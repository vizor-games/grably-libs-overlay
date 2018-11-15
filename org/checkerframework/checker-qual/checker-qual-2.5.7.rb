# http://checkerframework.org/

extend JavacLib

dirs = ['checker', 'framework', 'dataflow'].map { |d| "#{d}/src/main/java" }

@github = { project: 'typetools/checker-framework', rev: "checker-framework-#{@version}" }
@srcs = { { dirs => '**/qual/**/*.java' } => '!**/package-info.java' }
