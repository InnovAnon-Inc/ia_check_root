#! /usr/bin/env python
# cython: language_level=3
# distutils: language=c++

""" check whether root """

import os

from .err import NotRootException

def check_root()->bool:
	return((os.geteuid() == 0) or (os.getuid() == 0))

def verify_root()->None:
	is_root:bool = check_root()
	if is_root:
		return
	raise NotRootException()

if __name__ == '__main__':
	is_root:bool = check_root()
	print('is root:', is_root,)

__author__:str = 'you.com' # NOQA
