#!/bin/bash

cat > site.cfg <<EOF
[DEFAULT]
libraries = blas,cblas,lapack
library_dirs = $PREFIX/lib
include_dirs = $PREFIX/include
EOF

$PYTHON -m pip install --no-deps --ignore-installed -v .
