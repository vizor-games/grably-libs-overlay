# https://github.com/google/guice

extend JavacLib

@github = { project: 'google/guice', rev: @version }
@srcs = 'extensions/throwingproviders/src'
@rdeps = ["=com.google.inject:guice-#{@version}"]
