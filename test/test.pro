TEMPLATE = app
#CONFIG += console
QT += network widgets webenginewidgets webchannel concurrent
CONFIG += debug_and_release warn_on
QMAKE_CXXFLAGS += /MP -std=c++17
QMAKE_CXXFLAGS_RELEASE += $$QMAKE_CFLAGS_RELEASE_WITH_DEBUGINFO
QMAKE_LFLAGS_RELEASE   += $$QMAKE_LFLAGS_RELEASE_WITH_DEBUGINFO

DEFINES +=  "_WIN32_WINNT=0x0601"
OUTPUT_ROOT = ../build

CONFIG(debug,debug|release){
	TARGET = test
	DESTDIR_LIB = $$OUTPUT_ROOT/bin/x64/Debug
	DESTDIR  = $$OUTPUT_ROOT/bin/x64/Debug
	TEMP_DESTDIR = $$OUTPUT_ROOT/temp/Debug/$$TARGET
}

MOC_DIR	= $$TEMP_DESTDIR/moc
RCC_DIR	= $$TEMP_DESTDIR/rcc
UI_DIR	= $$TEMP_DESTDIR/qui
OBJECTS_DIR	= $$TEMP_DESTDIR/obj

SOURCES += \
    main.cpp \
    mainwindow.cpp

HEADERS += \
    mainwindow.h

FORMS += \
    mainwindow.ui
