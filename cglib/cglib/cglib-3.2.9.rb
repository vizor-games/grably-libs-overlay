# https://github.com/cglib/cglib

extend JavacLib

@github = { :project => "cglib/cglib", :rev => "RELEASE_#{@version.join('_')}" }
@srcs = 'cglib/src/main/java'
@res = 'cglib/src/main/resources'
@rdeps = ['>=org.ow2.asm:asm-7']

def patch
  # disable ant support, we don't need it
  rm_w('cglib/src/main/java/net/sf/cglib/transform/AbstractTransformTask.java')
  rm_w('cglib/src/main/java/net/sf/cglib/transform/AbstractProcessTask.java')

  patch_w('java11-compat.patch')
end
