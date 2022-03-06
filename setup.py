from setuptools import setup, Extension
from setuptools.command.build_ext import build_ext

import os

os.environ['CC'] = 'g++-8'

source_files = [
    'src/circin.cpp',
    'src/dist.cpp',
    'src/layout.cpp',
    'src/main.cpp',
    'src/routing.cpp',
    'src/routing_private.cpp',
    'src/pymodule/foresight.i'
]

foresight_module = Extension('foresight',\
                    source_files,\
                    include_dirs=['include', 'include/boost_1_78_0'],
                    extra_compile_args=['-fopenmp','-std=c++11'])

setup(
    name='ForeSight',
    version='0.1',
    author='Suhas Vittal',
    author_email='suhaskvittal@gatech.edu or suhaskvittal@gmail.com',
    url='n/a',
    ext_modules=[foresight_module],
    py_module=['foresight']
)

