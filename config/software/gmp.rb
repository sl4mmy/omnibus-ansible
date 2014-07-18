name "gmp"
default_version "5.1.2"

source :url => "ftp://ftp.gnu.org/gnu/#{name}/#{name}-#{version}.tar.bz2",
       :md5 => "7e3516128487956cd825fef01aafe4bc"

relative_path "#{name}-#{version}"

env = {
  "LDFLAGS" => "-L#{install_dir}/embedded/lib -I#{install_dir}/embedded/include",
  "CFLAGS" => "-L#{install_dir}/embedded/lib -I#{install_dir}/embedded/include",
  "LD_RUN_PATH" => "#{install_dir}/embedded/lib"
}

build do
  command "./configure --prefix=#{install_dir}/embedded"
  command "make -j #{max_build_jobs}", :env => env
  command "make install"
end
