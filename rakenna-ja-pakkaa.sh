rm -rf ~/.m2/repository/org/javers/
./gradlew createRelease -x test
./gradlew publishToMavenLocal -x test
pushd "$HOME/.m2/repository" || return
tar cfv javers-8.tar org/javers
popd || return
mv "$HOME/.m2/repository/javers-8.tar" .
