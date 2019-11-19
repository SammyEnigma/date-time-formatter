QT = core

TEMPLATE = lib
TARGET = dateformatter

CODECFORSRC = UTF-8

DEFINES += DATEFORMATER_LIBRARY

DESTDIR = $$PWD/source/lib
DLLDESTDIR = $DESTDIR

INCLUDEPATH += \
    source

DATEFORMATER_PUBLIC_HEADERS = \
    source/include/dateformater_common.h \
    source/include/dateformaterbase.h \
    source/include/dateformaterstandard.h \
    source/include/dateformaterhumanreadable.h

DATEFORMATER_PRIVATE_HEADERS =

DATEFORMATER_SOURCES = \
    source/dateformater_common.cpp \
    source/dateformaterstandard.cpp \
    source/dateformaterhumanreadable.cpp

HEADERS += \
    $$DATEFORMATER_PUBLIC_HEADERS \
    $$DATEFORMATER_PRIVATE_HEADERS

SOURCES += \
    $$DATEFORMATER_SOURCES

RESOURCES = \
    resource/dateformater_resources.qrc

TRANSLATIONS = \
    resource/locale/dateformater_en.ts \
    resource/locale/dateformater_ru.ts
