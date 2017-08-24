# ========================================================================
# Concourse Java Support
#
# Importing scripts should use as follows:
#
#     #!/bin/bash
#     set -e
#     source <folder>/concourse-java.sh
#
# ========================================================================


# Setup Maven and Gradle symlinks for caching
setup_symlinks() {
	[[ -d $PWD/maven && ! -d $HOME/.m2 ]] && ln -s $PWD/maven $HOME/.m2
	[[ -d $PWD/gradle && ! -d $HOME/.gradle ]] && ln -s $PWD/gradle $HOME/.gradle
}

