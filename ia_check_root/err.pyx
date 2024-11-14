#! /usr/bin/env python
# cython: language_level=3
# distutils: language=c++

""" check whether root """

from structlog import get_logger

#from iacommon import InnovationException

logger = get_logger()

class NotRootException(Exception):
	""" root ACTIVATE !!! """

if __name__ == '__main__':
	try:
		raise NotRootException('testing')
	except NotRootException as error:
		logger.info(error)

__author__:str = 'you.com' # NOQA
