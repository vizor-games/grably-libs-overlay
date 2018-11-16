# https://github.com/mvel/mvel

extend JavacLib

@github = { project: 'mvel/mvel', rev: "#{full_name}.Final" }
@srcs = 'src/main/java'
@res = 'src/main/resources'

def patch
  patch_w('java11-compat.patch')
end
