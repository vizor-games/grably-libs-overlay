# https://github.com/google/guice

extend JavacLib

@github = { project: 'google/guice', rev: @version }
@srcs = 'extensions/service/src'
@rdeps = ["=com.google.inject:guice-#{@version}"]
