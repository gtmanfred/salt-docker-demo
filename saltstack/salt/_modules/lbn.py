from __future__ import absolute_import
import logging
import os

LOG = logging.getLogger(__name__)

# Module name
__virtualname__ = 'lbn'

# Check condition to load module
def __virtual__():
    return __virtualname__

def getall(*args, **kwargs):
    ret = {"test": True}  
    return ret
