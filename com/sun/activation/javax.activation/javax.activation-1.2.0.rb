# https://github.com/javaee/activation

extend JavacLib

@github = { project: 'javaee/activation', rev: "JAF-#{version.join('_')}" }
@srcs = 'activation/src/main/java'
@res = 'activation/src/main/resources'

def pre_build
  raise 'valid only for java >= 9' unless java_version >= 9
end
