# https://github.com/eclipse-ee4j/jms-api

extend VirtualLib

@rdeps = 'jakarta.jms:jakarta.jms-api'

def info
  warn "library deprecated, please use #{@rdeps}"
end
