# https://github.com/google/guice

extend JavacLib

@github = { project: 'google/guice', rev: @version }
@srcs = 'extensions/jmx/src'
@rdeps = ["=com.google.inject:guice-#{@version}"]
