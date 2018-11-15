# https://github.com/google/error-prone

extend JavacLib

@github = { project: 'google/error-prone', rev: "v#{@version}" }
@srcs = 'annotations/src/main/java'
