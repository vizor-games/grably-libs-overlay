# Home: http://www.slf4j.org/

extend JavacLib

@src = "http://www.slf4j.org/dist/slf4j-#{@version}.tar.gz"
@work_dir = "slf4j-#{@version}"
@srcs = 'slf4j-api/src/main/java'

def post_compile
  # Remove implementation from api (like in original maven build script)
  [@srcs, @build_dir].each { |p| rm_w(File.join(p, 'org/slf4j/impl')) }
end
