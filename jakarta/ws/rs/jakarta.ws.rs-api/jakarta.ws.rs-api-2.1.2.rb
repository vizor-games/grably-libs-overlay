# https://github.com/eclipse-ee4j/jaxrs-api

extend JavacLib

@github = { project: 'eclipse-ee4j/jaxrs-api', rev: @version }
@srcs = 'jaxrs-api/src/main/java'
@rdeps = ['jakarta.xml.bind:jakarta.xml.bind-api'] if java_version >= 9

def patch
  # remove module-info, still not support for java >= 9 cause no module for activation api
  rm_w('jaxrs-api/src/main/java/module-info.java')
end
