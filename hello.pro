QT += core
QT -= gui

CONFIG += c++11

TARGET = hello
CONFIG += console
CONFIG -= app_bundle

LIBS += \
       -lboost_system \
       -lboost_filesystem


TEMPLATE = app

SOURCES += \
    svg_converter.cpp

HEADERS += \
    nanosvg.h \
    nanosvgrast.h \
    stb_image_write.h

DISTFILES += \
    hello.pro.user \
    pants.svg \
    shorts.svg \
    tshirt.svg \
    nano.svg

