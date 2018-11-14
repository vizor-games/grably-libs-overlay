# https://github.com/javaee/javamail
# will be moved soon to
# https://github.com/eclipse-ee4j/javamail

extend JavacLib

@github = { project: 'javaee/javamail', rev: "JAVAMAIL-#{@version.join('_')}" }
@srcs = 'mail/src/main/java'
@res = 'mail/src/main/resources'

@rdeps = ['com.sun.activation:javax.activation'] if java_version >= 9

def patch
  preprocess_w("#{@res}/javax/mail/Version.java", "#{@srcs}/javax/mail/Version.java") do |data|
    data.gsub('${mail.version}', @version.to_s)
  end

  preprocess_w("#{@res}/META-INF/MANIFEST.MF") do |data|
    data.gsub!('${project.organization.name}', 'Sun Microsystems Inc.')
    data.gsub!('${mail.spec.version}', '1.5')
    data.gsub!('${mail.version}', '1.5.1')
    data
  end
end
