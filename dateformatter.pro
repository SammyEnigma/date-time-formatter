TEMPLATE = subdirs

SUBDIRS = library \
          example

library.subdir = dateformatter_library
example.subdir = dateformatter_example

example.depends = library
