# https://github.com/javaee/javamail

extend VirtualLib

@rdeps = 'jakarta.mail:jakarta.mail-api'

def info
  warn "library deprecated, please use #{@rdeps}"
end
