# https://github.com/mycila/guice

extend JavacLib

@github = { project: 'mycila/guice', rev: "mycila-guice-#{@version}" }

@modules = ['closeable', 'injection', 'jsr250', 'legacy', 'service']
@srcs = @modules.map { |m| "extensions/#{m}/src/main/java" }
@res = 'res'
@rdeps = ['com.google.inject:guice']

def patch
  # concat all services
  services = 'res/META-INF/services/com.google.inject.Module'
  mkdir_w(File.dirname(services))
  File.open(w(services), 'w') do |f|
    @modules.each do |m|
      s = w("extensions/#{m}/src/main/resources/META-INF/services/com.google.inject.Module")
      next unless File.exist?(s)
      IO.readlines(s).each { |l| f.puts l.strip }
    end
  end

  # use global cglib instead of google's internal (we don't have it)
  glob_w("**/*.java").each do |java|
    preprocess_w(java) do |s|
      s.gsub!("com.google.inject.internal.cglib", "net.sf.cglib")
      s.gsub!("$FastMethod", "FastMethod")
      s.gsub!("$CodeGenerationException", "CodeGenerationException")
      s
    end
  end

  patch_w('skip-errors-on-close.patch')
end
