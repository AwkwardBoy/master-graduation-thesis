#！ /bin/bash
g++ -I/usr/local/Cellar/r/3.5.1/lib/R/include -DNDEBUG -I/usr/local/lib/R/3.5/site-library/Rcpp/include -I/usr/local/lib/R/3.5/site-library/RcppEigen/include -fPIC  -Wall -mtune=core2 -g -O2 -c FISTA.cpp -o FISTA.o
g++ -dynamiclib -Wl,-headerpad_max_install_names -undefined dynamic_lookup -single_module -multiply_defined suppress -L/usr/local/opt/gettext/lib -L/usr/local/opt/readline/lib -L/usr/local/lib -L/usr/local/Cellar/r/3.5.1/lib/R/lib -o FISTA.so FISTA.o -L/usr/local/Cellar/r/3.5.1/lib/R/lib -lR -lintl -Wl,-framework -Wl,CoreFoundation