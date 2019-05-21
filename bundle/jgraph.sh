# mvn gpg:sign-and-deploy-file \
# 	-Durl=https://oss.sonatype.org/service/local/staging/deploy/maven2/ \
# 	-DrepositoryId=ossrh \
# 	-DpomFile=jgraph-5.12.3.2.pom \
# 	-Dfile=jgraph-5.12.3.2.jar

gpg -ab jgraph-5.12.3.2.pom
gpg -ab jgraph-5.12.3.2.jar
gpg -ab jgraph-sources-5.12.3.2.jar
gpg -ab jgraph-javadoc-5.12.3.2.jar
jar -cvf jgraph-bundle.jar \
	 jgraph-5.12.3.2.pom jgraph-5.12.3.2.pom.asc \
	 jgraph-5.12.3.2.jar jgraph-5.12.3.2.jar.asc \
	 jgraph-sources-5.12.3.2.jar jgraph-sources-5.12.3.2.jar.asc \
	 jgraph-javadoc-5.12.3.2.jar jgraph-javadoc-5.12.3.2.jar.asc


