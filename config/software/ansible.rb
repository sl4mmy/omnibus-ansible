name "ansible"
version "release1.5.2"

dependency "bzip2"
dependency "gdbm"
dependency "gmp"
dependency "libyaml"
dependency "pip"
dependency "python"
dependency "sqlite3"
dependency "virtualenv"

build do
  command "#{install_dir}/embedded/bin/virtualenv #{install_dir}/embedded/ansible"
  command "#{install_dir}/embedded/ansible/bin/pip install ansible"
  command "cp #{install_dir}/embedded/ansible/bin/ansible{,-doc,-playbook,-pull} #{install_dir}/bin"
end
