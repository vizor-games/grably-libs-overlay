# https://github.com/jax-rs/api

extend JavacLib

@github = { project: 'jax-rs/api', rev: @version }
@srcs = 'jaxrs-api/src/main/java'

def patch
  # remove module-info
  rm_w('jaxrs-api/src/main/java/module-info.java')
end
