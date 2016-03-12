name "ansible"
maintainer "Kent R. Spillner"
homepage "ansibleworks.com"

install_dir    "/opt/ansible"
build_version   "1.8.4"

# creates required build directories
dependency "preparation"

# ansible dependencies/components
dependency "ansible"

# version manifest file
dependency "version-manifest"

override :python, version: "2.7.11"

exclude "\.git*"
exclude "bundler\/git"
