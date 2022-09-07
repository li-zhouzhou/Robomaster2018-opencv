QT -= gui

CONFIG += c++14 console
CONFIG -= app_bundle
#CONFIG -= qt5# <----->#洲洲注意啊：这里可加可不加，加的话，需要指明qt版本
TEMPLATE = app
# The following define makes your compiler emit warnings if you use
# any feature of Qt which as been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

#Libraries
unix: CONFIG += link_pkgconfig

#OpenCV
unix: PKGCONFIG += opencv

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0
INCLUDEPATH += /usr/local/include \
               /usr/local/include/opencv \
              /usr/local/include/opencv2 \

LIBS += /usr/lib/x86_64-linux-gnu/libopencv_*.so
LIBS += /usr/lib/x86_64-linux-gnu/libopencv_highgui.so
LIBS += /usr/lib/x86_64-linux-gnu/libopencv_imgproc.so
LIBS += /usr/lib/x86_64-linux-gnu/libopencv_flann.so
LIBS += /usr/lib/x86_64-linux-gnu/libopencv_ml.so
LIBS += /usr/lib/x86_64-linux-gnu/libopencv_core.so
LIBS += /usr/lib/x86_64-linux-gnu/libopencv_photo.so
LIBS += /usr/lib/x86_64-linux-gnu/libopencv_video.so
LIBS += /usr/lib/x86_64-linux-gnu/libopencv_objdetect.so
LIBS += /usr/lib/x86_64-linux-gnu/libopencv_calib3d.so
LIBS += /usr/lib/x86_64-linux-gnu/libopencv_features2d.so


#V4L2
unix:!macx: LIBS += -lpthread
unix:!macx: LIBS += -lv4l2


SOURCES += Main/main.cpp \
    Driver/RMVideoCapture.cpp \
    Armor/ArmorDetector.cpp \
    General/numeric_rm.cpp \
    General/opencv_extended.cpp \
    Pose/AngleSolver.cpp \
    Serials/Serial.cpp \
    Rune/Rune.cpp \
    Main/test_sentry.cpp \
    Main/ImgProdCons.cpp

HEADERS += \
    Driver/RMVideoCapture.hpp \
    Armor/ArmorDetector.h \
    General/General.h \
    General/numeric_rm.h \
    General/opencv_extended.h \
    Pose/AngleSolver.hpp \
    Serials/Serial.h \
    Rune/Rune.h \
    Main/ImgProdCons.h

DISTFILES += \
    Armor/SVM.xml \
    Armor/SVM2.xml \
    Armor/SVM3.xml \
    Armor/README.md \
    Pose/angle_solver_params.xml \
    Pose/README.md \
    Serials/README.md \
    Rune/README.md
