# https://github.com/ongres/scram

extend JavacLib

@github = { project: 'ongres/scram', rev: "1.0.0-beta.2" }
@srcs = 'client/src/main/java'
@rdeps = ["=com.ongres.scram:common-#{@version}"]
