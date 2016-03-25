QT       += core
QT       -= gui
CONFIG   += console
CONFIG   -= app_bundle
TEMPLATE = app

QMAKE_CXXFLAGS += -Wall -Wextra -Weffc++ -Werror

SOURCES += main.cpp

LIBS += \
  -lboost_date_time \
  -lboost_filesystem \
  -lboost_program_options \
  -lboost_regex \
  -lboost_signals \
  -lboost_system

# Wt
LIBS += -lwt -lwthttp
DEFINES += BOOST_SIGNALS_NO_DEPRECATION_WARNING

# clang
QMAKE_CXX = clang++
QMAKE_LINK = clang++
QMAKE_CC = clang

# C++11
QMAKE_CXXFLAGS += -std=c++11
