name "ansible"
maintainer "Kent R. Spillner"
homepage "ansibleworks.com"

replaces        "ansible"
install_path    "/opt/ansible"
build_version   "1.5.4"

# creates required build directories
dependency "preparation"

# ansible dependencies/components
dependency "ansible"

# version manifest file
dependency "version-manifest"

exclude "\.git*"
exclude "bundler\/git"
