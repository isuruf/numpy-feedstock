#!/bin/bash

$PYTHON -m pip install --no-deps --ignore-installed -v .

mkdir tempdir
cd tempdir
$PYTHON -c "import numpy;numpy.__config__.show()"
