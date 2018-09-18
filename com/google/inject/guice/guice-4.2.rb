# https://github.com/google/guice

extend JavacLib

@github = { project: 'google/guice', rev: @version }
@srcs = 'core/src'
@rdeps = [
  'com.google.guava:guava',
  'javax.inject:javax.inject',
  'org.ow2.asm:asm',
  'aopalliance:aopalliance',
  'cglib:cglib'
]
