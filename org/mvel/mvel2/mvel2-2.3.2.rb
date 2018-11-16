# https://github.com/mvel/mvel

extend JavacLib

@github = { project: 'mvel/mvel', rev: "#{full_name}.Final" }
@srcs = 'src/main/java'

def patch
  patch_w('java11-compat.patch')
end

