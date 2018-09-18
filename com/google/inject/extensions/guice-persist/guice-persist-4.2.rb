# https://github.com/google/guice

extend JavacLib

@github = { project: 'google/guice', rev: @version }
@srcs = 'extensions/persist/src'
@rdeps = ["=com.google.inject:guice-#{@version}", 'javax.persistence:javax.persistence-api']
@bdeps = @rdeps + ['javax.servlet:javax.servlet-api']
