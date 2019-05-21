# mvn gpg:sign-and-deploy-file \
# 	-Durl=https://oss.sonatype.org/service/local/staging/deploy/maven2/ \
# 	-DrepositoryId=ossrh \
# 	-DpomFile=${PROJ}.pom \
# 	-Dfile=${PROJ}.jar

PROJ="jgraph-5.12.3.2"

gpg -ab ${PROJ}.pom
gpg -ab ${PROJ}.jar
gpg -ab ${PROJ}-javadoc.jar
gpg -ab ${PROJ}-sources.jar
jar -cvf ${PROJ}-bundle.jar \
	 ${PROJ}.pom ${PROJ}.pom.asc \
	 ${PROJ}.jar ${PROJ}.jar.asc \
	 ${PROJ}-javadoc.jar ${PROJ}-javadoc.jar.asc \
	 ${PROJ}-sources.jar ${PROJ}-sources.jar.asc


