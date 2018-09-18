# https://github.com/google/guava

extend JavacLib

@github = { project: 'google/guava', rev: "v#{@version}" }
@srcs = 'guava/src'
@rdeps = ['com.google.code.findbugs:jsr305']
@bdeps = @rdeps + [
  'com.google.errorprone:error_prone_annotations',
  'com.google.j2objc:j2objc-annotations',
  'org.codehaus.mojo:animal-sniffer-annotations',
  'org.checkerframework:checker-qual'
]
