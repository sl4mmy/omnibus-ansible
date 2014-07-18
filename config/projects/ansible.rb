name "ansible"
maintainer "Kent R. Spillner"
homepage "ansibleworks.com"

install_path    "/opt/ansible"
build_version   "1.6.6"

# creates required build directories
dependency "preparation"

# ansible dependencies/components
dependency "ansible"

# version manifest file
dependency "version-manifest"

exclude "\.git*"
exclude "bundler\/git"
