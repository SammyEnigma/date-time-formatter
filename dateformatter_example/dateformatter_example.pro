QT = core

TEMPLATE = app
TARGET = dateformatter-example

SOURCES = \
    main.cpp


unix|win32: LIBS += -L$$PWD/../dateformatter_library/source/lib/ -ldateformatter

INCLUDEPATH += $$PWD/../dateformatter_library/source/include
DEPENDPATH += $$PWD/../dateformatter_library/source/include

win32:!win32-g++: PRE_TARGETDEPS += $$PWD/../dateformatter_library/source/lib/dateformatter.lib
else:unix|win32-g++: PRE_TARGETDEPS += $$PWD/../dateformatter_library/source/lib/libdateformatter.a
