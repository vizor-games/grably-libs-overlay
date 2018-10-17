# https://github.com/lz4/lz4-java

extend JavacLib

@github = { project: 'lz4/lz4-java', rev: version }
@srcs = ['src/java', 'src/java-unsafe', 'src/java-gen']
@res = 'src/resources'
@bdeps = ['=org.mvel:mvel2-2.3.2']

def patch
  cp = java_classpath(get_deps('org.mvel:mvel2'))
  [
    java_cmd, '-cp', cp, "-Dout.dir=#{w('src/java-gen')}", 'org.mvel2.sh.Main',
    '../gen_sources.mvel',
  ].run(chdir: w('src/build/source_templates'))
end
