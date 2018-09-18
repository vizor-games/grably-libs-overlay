# https://github.com/google/guava

extend JavacLib

@github = { project: 'google/guava', rev: "v#{@version}" }
@srcs = 'guava/src'
@rdeps = []
@bdeps = @rdeps + [
  'com.google.errorprone:error_prone_annotations',
  'com.google.j2objc:j2objc-annotations',
  'org.codehaus.mojo:animal-sniffer-annotations',
  'com.google.code.findbugs:jsr305',
  'org.checkerframework:checker-qual'
]
