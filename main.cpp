#include "mainwindow.h"
#include <QApplication>
#include <QtQuick/QQuickView>
#include <QQmlApplicationEngine>
#include <QGuiApplication>
int main(int argc, char *argv[])
{
    QGuiApplication a(argc, argv);
//    MainWindow w;
//    w.show();
    QQuickView viewer;
    viewer.setSource(QUrl(QStringLiteral("qrc:///qml/main.qml")));
    viewer.show();
//    QQmlApplicationEngine engine;
//    engine.load(QUrl(QStringLiteral("qrc:/qml/qml.qml")));
    return a.exec();
}
