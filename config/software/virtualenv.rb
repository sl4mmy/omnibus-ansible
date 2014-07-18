name "virtualenv"
default_version "1.11.6"

dependency "pip"

build do
  command "#{install_dir}/embedded/bin/pip install virtualenv==#{version}"
end
