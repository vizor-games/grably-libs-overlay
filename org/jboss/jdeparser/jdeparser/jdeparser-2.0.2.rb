# https://github.com/jdeparser/jdeparser2

extend JavacLib

@github = { project: 'jdeparser/jdeparser2', rev: "#{@version}.Final" }
@srcs = 'src/main/java'

def patch
  patch_w('java11-compat.patch')
end
