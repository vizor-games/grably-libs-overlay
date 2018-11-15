# https://github.com/eclipse-ee4j/jpa-api

extend VirtualLib

@rdeps = 'jakarta.persistence:jakarta.persistence-api'

def info
  warn "library deprecated, please use #{@rdeps}"
end
