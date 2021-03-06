QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++11
TARGET = feedback
TEMPLATE = app

LIBS    +=  -lX11

QT += core gui  network

# The following define makes your compiler emit warnings if you use
# any Qt feature that has been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0


TRANSLATIONS += translation/feedback_en_US.ts

SOURCES += \
    browse_button.cpp \
    closeBtn_hover.cpp \
    customstyle.cpp \
    feedback.cpp \
    fileitem_init.cpp \
    hidebtnhover.cpp \
    main.cpp \
    singleApplication.cpp \
    submit_fail.cpp \
    submit_success.cpp \
    systeminfo_button.cpp \



HEADERS += \
    browse_button.h \
    closeBtn_hover.h \
    customstyle.h \
    feedback.h \
    fileitem_init.h \
    hidebtnhover.h \
    singleApplication.h \
    submit_fail.h \
    submit_success.h \
    systeminfo_button.h \



RESOURCES += \
    feedback.qrc

DISTFILES +=

unix {
    target.path = /usr/bin/
    INSTALLS += target
}

desktopfile.files = feedback.desktop
desktopfile.path = /usr/share/applications/

INSTALLS += desktopfile
