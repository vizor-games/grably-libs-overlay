# https://github.com/javaee/activation

extend VirtualLib

@rdeps = 'jakarta.activation:jakarta.activation-api'

def info
  warn "library deprecated, please use #{@rdeps}"
end
