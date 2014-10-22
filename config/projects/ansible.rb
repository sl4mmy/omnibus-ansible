name "ansible"
maintainer "Kent R. Spillner"
homepage "ansibleworks.com"

install_dir    "/opt/ansible"
build_version   "1.7.2"

# creates required build directories
dependency "preparation"

# ansible dependencies/components
dependency "ansible"

# version manifest file
dependency "version-manifest"

exclude "\.git*"
exclude "bundler\/git"
