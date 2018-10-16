# https://github.com/pgjdbc/pgjdbc

extend JavacLib

@github = { project: 'pgjdbc/pgjdbc', rev: "REL#{@version}" }
@srcs = 'pgjdbc/src/main/java'
@res = 'pgjdbc/src/main/resources'
@rdeps = ['com.ongres.scram:client']

def patch
  [
    'org/postgresql/sspi/NTDSAPI.java',
    'org/postgresql/sspi/NTDSAPIWrapper.java',
    'org/postgresql/sspi/SSPIClient.java',
    'org/postgresql/osgi/PGBundleActivator.java',
    'org/postgresql/osgi/PGDataSourceFactory.java'
  ].each { |p| rm_w("pgjdbc/src/main/java/#{p}") }
end
