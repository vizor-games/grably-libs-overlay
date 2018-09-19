# https://github.com/FasterXML

extend JavacLib

@github = { project: 'FasterXML/jackson-jaxrs-providers', rev: "jackson-jaxrs-providers-#{@version}" }
@srcs = 'src/main/java'
@res = 'src/main/resources'
@rdeps = [
  "=com.fasterxml.jackson.jaxrs:jackson-jaxrs-base-#{@version}",
  "=com.fasterxml.jackson.module:jackson-module-jaxb-annotations-#{@version}"
]
@work_dir = 'json'

def patch
  pkg = @package || "#{group}.#{@module || @work_dir}"
  f = "src/main/java/#{pkg.gsub('.', '/')}/PackageVersion.java"
  preprocess_w("#{f}.in", f) do |s|
    s.gsub!('@projectversion@', @version.to_s)
    s.gsub!('@projectgroupid@', group)
    s.gsub!('@projectartifactid@', name)
    s.gsub!('@package@', pkg)
    s
  end
end
