# https://github.com/google/guice

extend JavacLib

@github = { project: 'google/guice', rev: @version }
@srcs = 'extensions/servlet/src'
@rdeps = ["=com.google.inject:guice-#{@version}"]
@bdeps = @rdeps + ['javax.servlet:javax.servlet-api']
