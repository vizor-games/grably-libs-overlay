# https://github.com/99soft/rocoto

extend JavacLib

@github = { project: '99soft/rocoto', rev: "rocoto-#{@version}" }
@srcs = 'src/main/java'
@rdeps = ['com.google.inject:guice']

def patch
  patch_w('rocoto-guice-4.2.patch')

  # do not use google's internal classes
  glob_w('**/*.java').each do |f|
    preprocess_w(f) do |s|
      s.gsub('com.google.inject.internal.util.$Preconditions', 'com.google.common.base.Preconditions')
    end
  end
end
