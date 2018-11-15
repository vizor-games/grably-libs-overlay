# https://github.com/FasterXML

extend JavacLib

@github = { project: 'FasterXML/jackson-jaxrs-providers', rev: "jackson-jaxrs-providers-#{@version}" }
@srcs = 'src/main/java'
@res = 'src/main/resources'
@rdeps = [
  "=com.fasterxml.jackson.core:jackson-databind-#{@version}",
  'jakarta.ws.rs:jakarta.ws.rs-api'
]
@work_dir = 'base'
