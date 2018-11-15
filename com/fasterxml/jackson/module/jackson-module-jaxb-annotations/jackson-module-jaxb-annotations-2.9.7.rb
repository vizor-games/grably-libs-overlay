# https://github.com/FasterXML

extend JavacLib

@github = { project: 'FasterXML/jackson-modules-base', rev: "jackson-modules-base-#{@version}" }
@srcs = 'src/main/java'
@res = 'src/main/resources'
@rdeps = ["=com.fasterxml.jackson.core:jackson-databind-#{@version}"]
@rdeps += ['jakarta.xml.bind:jakarta.xml.bind-api'] if java_version >= 9
@work_dir = 'jaxb'

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
