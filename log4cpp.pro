# log4cpp.pro : Builds make files for a noop version of log4cpp called log4cpp_null

OBJECTS_DIR = src/.objs
MOC_DIR = src/.moc
RCC_DIR = src/.rcc
VERSION = 5 # To get liblog4cpp.so.5 for consistency with standard log4cpp
QT =

macx-* {
QMAKE_CXXFLAGS += -stdlib=libc++
QMAKE_LFLAGS += -stdlib=libc++
CONFIG += lib_bundle
}

TEMPLATE = lib
TARGET = lib/log4cpp

HEADERS  += \
    include/log4cpp/Appender.hh \
    include/log4cpp/Category.hh \
    include/log4cpp/CategoryStream.hh \
    include/log4cpp/Configurator.hh \
    include/log4cpp/convenience.h \
    include/log4cpp/FileAppender.hh \
    include/log4cpp/Layout.hh \
    include/log4cpp/LayoutAppender.hh \
    include/log4cpp/LoggingEvent.hh \
    include/log4cpp/PatternLayout.hh \
    include/log4cpp/Priority.hh \
    include/log4cpp/PropertyConfigurator.hh \
    include/log4cpp/RollingFileAppender.hh

SOURCES += \
    src/Appender.cpp \
    src/Category.cpp \
    src/CategoryStream.cpp \
    src/Configurator.cpp \
    src/FileAppender.cpp \
    src/Layout.cpp \
    src/LayoutAppender.cpp \
    src/LoggingEvent.cpp \
    src/PatternLayout.cpp \
    src/PropertyConfigurator.cpp \
    src/RollingFileAppender.cpp

INCLUDEPATH += include
