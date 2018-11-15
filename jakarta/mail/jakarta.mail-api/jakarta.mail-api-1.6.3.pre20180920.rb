# https://github.com/eclipse-ee4j/javamail

extend JavacLib

@github = { project: 'eclipse-ee4j/javamail', rev: '8388a02729326960377c1b06d6d491d903e4f278' }
@srcs = 'mail/src/main/java'
@res = 'mail/src/main/resources'

@rdeps = ['jakarta.activation:jakarta.activation-api'] if java_version >= 9

def patch
  preprocess_w("#{@res}/javax/mail/Version.java", "#{@srcs}/javax/mail/Version.java") do |data|
    data.gsub('${mail.version}', @version.to_s)
  end

  preprocess_w("#{@res}/META-INF/MANIFEST.MF") do |data|
    data.gsub!('${project.organization.name}', 'Oracle')
    data.gsub!('${mail.spec.version}', '1.6')
    data.gsub!('${mail.version}', @version.to_s)
    data
  end
end
