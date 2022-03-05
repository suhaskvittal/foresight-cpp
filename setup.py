from distutils.core import setup, Extension

import os

os.environ['CC'] = 'g++-11'

source_files = [
    'src/circin.cpp',
    'src/dist.cpp',
    'src/layout.cpp',
    'src/main.cpp',
    'src/routing.cpp',
    'src/routing_private.cpp',
    'src/pymodule/foresight.i'
]
compiler_options = [
    '-fopenmp',
    '-std=c++11',
    'Iinclude/boost_1_78_0',
    '-O3'
]

foresight_module = Extension('_foresight',\
                    source_files,\
                    include_dirs=['include', 'include/boost_1_78_0'],
                    extra_compile_args=['-std=c++11','-O3', '-fopenmp'])

setup(
    name='ForeSight',
    version='0.1',
    author='Suhas Vittal',
    ext_modules=[foresight_module],
    py_module=['foresight']
)

