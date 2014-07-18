name "sqlite3"
default_version "3.7.17"

source :url => "http://www.sqlite.org/2013/sqlite-autoconf-3071700.tar.gz",
       :md5 => "18c285053e9562b848209cb0ee16d4ab"

relative_path "sqlite-autoconf-3071700"

env = {
  "LDFLAGS" => "-L#{install_dir}/embedded/lib -I#{install_dir}/embedded/include",
  "CFLAGS" => "-L#{install_dir}/embedded/lib -I#{install_dir}/embedded/include",
  "LD_RUN_PATH" => "#{install_dir}/embedded/lib"
}

build do
  command ["./configure",
           "--prefix=#{install_dir}/embedded",
           "--enable-readline=no"].join(" "), :env => env

  command "make -j #{max_build_jobs}", :env => env
  command "make install"
end
