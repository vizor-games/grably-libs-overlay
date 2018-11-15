# http://janino-compiler.github.io/janino

extend JavacLib

@github = { project: 'janino-compiler/janino', rev: '4b98b5b44ee329685503e264751067fab259f7b7' }
@srcs = 'janino/src/main/java'
@res = 'janino/src/main/resources'
@rdeps = ["=org.codehaus.janino:commons-compiler-#{@version}"]


def patch
  # we don't need ant
  rm_w('janino/src/main/java/org/codehaus/janino/AntCompilerAdapter.java')
end
