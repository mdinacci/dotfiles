# Env variables
set -x JAVA_HOME (/usr/libexec/java_home -v 1.8)
set -x MAVEN_OPTS '-XX:MaxPermSize=512m -Xmx1024m -Dfile.encoding=UTF8'

# Theme
set fish_theme robbyrussell

logo
