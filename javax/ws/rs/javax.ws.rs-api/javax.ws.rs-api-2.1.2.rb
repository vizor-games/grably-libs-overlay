# https://github.com/jax-rs/api

extend VirtualLib

@rdeps = 'jakarta.ws.rs:jakarta.ws.rs-api'

def info
  warn "library deprecated, please use #{@rdeps}"
end
