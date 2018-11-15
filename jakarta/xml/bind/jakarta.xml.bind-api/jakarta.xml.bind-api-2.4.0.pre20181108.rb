# https://github.com/eclipse-ee4j/jaxb-api

extend JavacLib

@github = { project: 'eclipse-ee4j/jaxb-api', rev: '08638fd1b85422b0a4403843719d51cd15e4ed90' }
@srcs = ['jaxb-api/src/main/java']
@res = ['jaxb-api/src/main/resources']
@rdeps = ['jakarta.activation:jakarta.activation-api']

def patch
  # still no support for java >= 9 cause no module-info in activation-api :(
  rm_w('jaxb-api/src/main/java/module-info.java')
end
