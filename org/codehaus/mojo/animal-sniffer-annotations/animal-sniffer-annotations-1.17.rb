# https://github.com/mojohaus/animal-sniffer

extend JavacLib

@github = { project: 'mojohaus/animal-sniffer', rev: "animal-sniffer-parent-#{@version}" }
@srcs = 'animal-sniffer-annotations/src/main/java'
