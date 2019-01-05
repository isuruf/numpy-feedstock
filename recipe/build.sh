#!/bin/bash

$PYTHON -m pip install --no-deps --ignore-installed -v .

$PYTHON -c "import numpy;numpy.__config__.show()"
