cp %LIBRARY_LIB%\libblas.lib %LIBRARY_LIB%\blas.lib
cp %LIBRARY_LIB%\libcblas.lib %LIBRARY_LIB%\cblas.lib

%PYTHON% -m pip install --no-deps --ignore-installed -v .
if errorlevel 1 exit 1

XCOPY %RECIPE_DIR%\f2py.bat %SCRIPTS% /s /e
if errorlevel 1 exit 1

del %SCRIPTS%\f2py.exe
if errorlevel 1 exit 1

mkdir tempdir
cd tempdir
%PYTHON% -c "import numpy;numpy.__config__.show()"
