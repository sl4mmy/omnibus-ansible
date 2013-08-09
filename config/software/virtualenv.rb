name "virtualenv"
version "1.10.1"

dependency "pip"

build do
  command "#{install_dir}/embedded/bin/pip install virtualenv==#{version}"
end
