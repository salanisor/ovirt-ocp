#!/usr/bin/env python3
import sys,libvirt
from xml.dom import minidom

domName = 'worker0'

conn = None
try:
    conn = libvirt.open("qemu:///system")
except libvirt.libvirtError as e:
    print(repr(e), file=sys.stderr)
    exit(1)

dom = None
try:
    dom = conn.lookupByName(domName)
except libvirt.libvirtError as e:
    print(repr(e), file=sys.stderr)
    exit(1)

type = dom.OSType()
print('The OS type of the domain is "' + type + '"')

conn.close()
exit(0)
