# Home: http://www.slf4j.org/

extend JavacLib

@github = { project: 'qos-ch/slf4j', rev: "v_#{@version}" }
@srcs = 'log4j-over-slf4j/src/main/java'
@rdeps = ["=org.slf4j:slf4j-api-#{@version}", '!log4j:log4j']
