# https://asm.ow2.io/

extend JavacLib

tag = @version.join('_')

@src = "https://gitlab.ow2.org/asm/asm/-/archive/ASM_#{tag}/asm-ASM_#{tag}.tar.gz"
@work_dir = "asm-ASM_#{tag}"
@srcs = [
  'asm',
  'asm-analysis',
  'asm-commons',
  'asm-tree',
  'asm-util'
].map { |s| "#{s}/src/main/java" }
