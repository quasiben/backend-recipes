#!/bin/sh

#export CFLAGS="-I$PREFIX/include"
#export LDFLAGS="-L$PREFIX/lib -lxml2 -L$PREFIX/lib -lxslt"
#export LDFLAGS_EX="$LDFLAGS -L$PREFIX/lib -lreadline"

  # build.                                                                                                                                                                            
  # -DCMAKE_OSX_ARCHITECTURES=#{Hardware::CPU.universal_archs.as_cmake_arch_flags}"
  # -DMYSQL_DATADIR=#{var}/mysql \
  # -DINSTALL_DOCDIR=share/doc/#{name} \
  # -DSYSCONFDIR=#{etc} \
  # -DCMAKE_FIND_FRAMEWORK=LAST \

# if [ `uname` == Linux ]; then                                                                                                                                                       
#     CC=gcc                                                                                                                                                                          
#     CXX=g++                                                                                                                                                                         
# fi                                                                                                                                                                                  
# if [ `uname` == Darwin ]; then                                                                                                                                                      
#     CC=cc                                                                                                                                                                           
#     CXX=c++                                                                                                                                                                         
# fi                                                                                                                                                                                  
                                                                                                                                                                                    
# export CFLAGS="-Wall -g -m64 -pipe -O2 -march=x86-64 -fPIC"                                                                                                                         
# export CXXLAGS="${CFLAGS}"                                                                                                                                                          
# export CPPFLAGS="-I${PREFIX}/include"                                                                                                                                               
# export LDFLAGS="-L${PREFIX}/lib"                                                                                                                                                    
                                                                                                                                                                                    
# export CMAKE_C_FLAGS="${CFLAGS}"                                                                                                                                                    
# export CMAKE_CXX_FLAGS="${CMAKE_CXX_FLAGS}"                                                                                                                                         
# export CMAKE_INCLUDE_PATH="${PREFIX}/include"                                                                                                                                       
# export CMAKE_LIBRARY_PATH="${PREFIX}/lib"
echo `ls`
# cmake . \                                                                                                                                                                             
#       -DCMAKE_INSTALL_PREFIX=$PREFIX \  
#       -DDEFAULT_CHARSET=utf-8 \
#       -DCOMPILATION_COMMENT=Conda \
      
# -DCMAKE_C_COMPILER=$CC           \
# -DCMAKE_CXX_COMPILER=$CXX        \
    
cmake .                                 \
    -DENABLED_LOCAL_INFILE=1            \
    -DDEFAULT_CHARSET=utf8              \
    -DDEFAULT_COLLATION=utf8_general_ci \
    -DCOMPILATION_COMMENT=Conda         \
    -DCMAKE_INSTALL_PREFIX=$PREFIX

make
make install

ln -s ../scripts/mysql_install_db $PREFIX/bin

mysql_install_db --verbose --user=`whoami` --basedir="/Users/quasiben/anaconda/envs/wapp3" --datadir=/Users/quasiben/anaconda/envs/wapp3/data --tmpdir=/tmp


# ## MySQL
#  brew install mysql
# # unset TMPDIR
# # mysql_install_db --verbose --user=`whoami` --basedir="$(brew --prefix mysql)" --datadir=/usr/local/var/mysql --tmpdir=/tmp
# # sudo chown -R _mysql /usr/local/var/mysql
# # sudo chmod -R o+rwx /usr/local/var/mysql
# # conda install -c https://conda.binstar.org/chuongdo mysql-python

# 

#   /Users/quasiben/anaconda/envs/wapp3/bin/mysqladmin -u root password 'new-password'
#   /Users/quasiben/anaconda/envs/wapp3/bin/mysqladmin -u root -h dirty-horse.local password 'new-password'

# Alternatively you can run:

#   /Users/quasiben/anaconda/envs/wapp3/bin/mysql_secure_installation

#   which will also give you the option of removing the test
# databases and anonymous user created by default.  This is
# strongly recommended for production servers.

# See the manual for more instructions.

# You can start the MySQL daemon with:

#   cd . ; /Users/quasiben/anaconda/envs/wapp3/bin/mysqld_safe &

# You can test the MySQL daemon with mysql-test-run.pl

#   cd mysql-test ; perl mysql-test-run.pl

Please report any problems at http://bugs.mysql.com/

