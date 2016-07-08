# log4cpp.pro : Builds make files for a noop version of log4cpp called log4cpp_null

OBJECTS_DIR = src/.objs
MOC_DIR = src/.moc
RCC_DIR = src/.rcc
QT =

macx-* {
QMAKE_CXXFLAGS += -stdlib=libc++
QMAKE_LFLAGS += -stdlib=libc++
}

win32-* {
CONFIG += staticlib
}

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

TEMPLATE = lib
TARGET = lib/log4cpp

INCLUDEPATH += include
