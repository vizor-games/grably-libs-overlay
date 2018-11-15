# https://github.com/eclipse-ee4j/common-annotations-api

extend VirtualLib

@rdeps = 'jakarta.annotation:jakarta.annotation-api'

def info
  warn "library deprecated, please use #{@rdeps}"
end
