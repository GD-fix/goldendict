######################################################################
# Automatically generated by qmake (2.01a) ?? ????. 2 18:38:07 2008
######################################################################

TEMPLATE = app
TARGET = goldendict
VERSION = 0.7.99-svn
#DEPENDPATH += . generators
INCLUDEPATH += .

QT += webkit
QT += xml
QT += network

CONFIG += exceptions rtti stl

OBJECTS_DIR = build
UI_DIR = build
MOC_DIR = build
RCC_DIR = build

LIBS += -lvorbisfile -lvorbis -logg -lz -lzip -lhunspell

win32 {
  LIBS += -liconv -lwsock32 -lwinmm -lpsapi
  RC_FILE = goldendict.rc
  INCLUDEPATH += winlibs/include
  LIBS += -Lwinlibs/lib
}

unix {
  LIBS += -lXtst

  PREFIX = $$(PREFIX)

  isEmpty( PREFIX ) {
  PREFIX = /usr/local
  }

  DEFINES += PROGRAM_DATA_DIR=\\\"$$PREFIX/share/apps/goldendict/\\\"

  target.path = $$PREFIX/bin/
  locale.path = $$PREFIX/share/apps/goldendict/locale/
  locale.files = locale/ru.qm

  INSTALLS += target locale
}

DEFINES += PROGRAM_VERSION=\\\"$$VERSION\\\"

# Input
HEADERS += folding.hh \
           inc_case_folding.hh \
           inc_diacritic_folding.hh \
	   mainwindow.hh \
	   sptr.hh \
	   dictionary.hh \
	   ex.hh \
	   config.hh \
	   sources.hh \
	   utf8.hh \
	   file.hh \
	   bgl_babylon.hh \
	   bgl.hh \
	   initializing.hh \
	   article_netmgr.hh \
	   dictzip.h \
	   btreeidx.hh \
	   stardict.hh \
	   chunkedstorage.hh \
	   xdxf2html.hh \
	   iconv.hh \
	   lsa.hh \
	   htmlescape.hh \
	   dsl.hh \
	   dsl_details.hh \
	   filetype.hh \
	   fsencoding.hh \
	   groups.hh \
	   groups_widgets.hh \
	   instances.hh \
	   article_maker.hh \
	   scanpopup.hh \
	   articleview.hh \
	   externalviewer.hh \
	   wordfinder.hh \
	   groupcombobox.hh \
	   keyboardstate.hh \
	   mouseover.hh \
	   preferences.hh \
	   mutex.hh \
	   mediawiki.hh \
	   sounddir.hh \
           hunspell.hh \
           dictdfiles.hh \
           audiolink.hh \
           wstring.hh \
           wstring_qt.hh \
           processwrapper.hh \
           hotkeywrapper.hh \
           searchpanewidget.hh \
           hotkeyedit.hh
	  

FORMS += groups.ui dictgroupwidget.ui mainwindow.ui sources.ui initializing.ui\
         groupselectorwidget.ui scanpopup.ui articleview.ui preferences.ui\
	 about.ui

SOURCES += folding.cc main.cc dictionary.cc config.cc sources.cc \
           mainwindow.cc utf8.cc file.cc bgl_babylon.cc bgl.cc initializing.cc \
	   article_netmgr.cc dictzip.c btreeidx.cc stardict.cc \
	   chunkedstorage.cc xdxf2html.cc iconv.cc lsa.cc htmlescape.cc \
	   dsl.cc dsl_details.cc filetype.cc fsencoding.cc groups.cc \
	   groups_widgets.cc instances.cc article_maker.cc scanpopup.cc \
	   articleview.cc externalviewer.cc wordfinder.cc \
	   groupcombobox.cc keyboardstate.cc mouseover.cc preferences.cc \
	   mutex.cc mediawiki.cc sounddir.cc hunspell.cc dictdfiles.cc \
           audiolink.cc wstring.cc wstring_qt.cc processwrapper.cc \
           hotkeywrapper.cc hotkeyedit.cc

win32 {
  SOURCES += mouseover_win32/ThTypes.c
  HEADERS += mouseover_win32/ThTypes.h
}

RESOURCES += resources.qrc flags.qrc

TRANSLATIONS += locale/ru.ts
