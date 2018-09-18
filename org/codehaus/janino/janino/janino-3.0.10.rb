# http://janino-compiler.github.io/janino

extend JavacLib

@github = { project: 'janino-compiler/janino', rev: 'ca418d7e1075992c25cfc11727287e208ac72916' }
@srcs = 'janino/src/main/java'
@res = 'janino/src/main/resources'
@rdeps = ["=org.codehaus.janino:commons-compiler-#{@version}"]


def patch
  # we don't need ang
  rm_w('janino/src/main/java/org/codehaus/janino/AntCompilerAdapter.java')
end
