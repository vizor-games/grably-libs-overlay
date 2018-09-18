# Home: http://www.slf4j.org/

extend JavacLib

@github = { project: 'qos-ch/slf4j', rev: "v_#{@version}" }
@srcs = 'slf4j-api/src/main/java'

def post_compile
  # Remove implementation from api (like in original maven build script)
  [@srcs, @build_dir].each { |p| rm_w(File.join(p, 'org/slf4j/impl')) }
end
