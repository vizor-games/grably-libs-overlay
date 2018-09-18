# Home: http://www.slf4j.org/

extend JavacLib

@src = "http://www.slf4j.org/dist/slf4j-#{@version}.tar.gz"
@work_dir = "slf4j-#{@version}"
@srcs = 'jul-to-slf4j/src/main/java'
@rdeps = ['org.slf4j:slf4j-api']

