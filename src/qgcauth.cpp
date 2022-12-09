
//#include <QGuiApplication>
//#include <QQmlApplicationEngine>
//#include "qgcauth.h"
//#include <QQmlContext>
//#include <QQuickWindow>
//#include <QDebug>




////#include "QGC.h"
//#include "QGCApplication.h"
////#include "AppMessages.h"

//QGCApplication ::QGCApplication(QApplication *parent) : QApplication(parent)
//{
//    /// update any logic to change the variable bSettingMainWindow.
//    /// QML will automatically validate it.
//    bSettingMainWindow = true;
//    emit bSettingMainWindowChanged();
//}
















/*
Backend::Backend(QQmlApplicationEngine *engine, QObject *parent) : QObject(parent)
{
    _engine = engine;
}

void Backend::changeWindow()
{
    QObject *qObject = _engine->rootObjects().first();
    Q_ASSERT( qObject != NULL );

    QQuickWindow* mainWindow = qobject_cast<QQuickWindow*>(qObject);
    Q_ASSERT( mainWindow );

    _main = !_main;
    if (_main)
    {
        _engine->load(QUrl(QStringLiteral("qrc:/qml/MainRootWindow.qml")));
    } else
    {
        _engine->load(QUrl(QStringLiteral("qrc:/AuthWindow.qml")));
    }
    mainWindow->close();
    qObject->deleteLater();
}

*/























/*


    //** windowLoader.cpp
    WindowLoader::WindowLoader(QObject *parent) : QObject(parent) {

    }

    void WindowLoader::loadWindow()  {
        if(bSettingMainWindow){ //this will be from a internal flag, this check is only one time during launch
            connect(&loadQMlEngine,SIGNAL(objectCreated(QObject *, const QUrl &)),this,SLOT(connectToBasic(QObject *, const QUrl &)),Qt::QueuedConnection);
            loadQMlEngine.rootContext()->setContextProperty( "interface", 9001 );
            loadQMlEngine.load(QUrl(QStringLiteral("qrc:/AuthWindow.qml")));
        } else {
            connect(&loadQMlEngine,SIGNAL(objectCreated(QObject *, const QUrl &)),this,SLOT(connectToMain(QObject *, const QUrl &)),Qt::QueuedConnection);
            loadQMlEngine.rootContext()->setContextProperty( "interface", 42 );
            loadQMlEngine.load(QUrl(QStringLiteral("qrc:/qml/MainRootWindow.qml")));
        }
    }

    void WindowLoader::connectToBasic(QObject *object, const QUrl &url) {
        if(object){
            connect(object, SIGNAL(switchToBasicSignal()), this, SLOT(loadBasicWindow()));
        }
    }

    void WindowLoader::connectToMain(QObject *object, const QUrl &url) {
        if(object){
            connect(object, SIGNAL(switchToMainSignal()), this, SLOT(loadMainWindow()));
        }
    }

    void WindowLoader::loadBasicWindow() {
        loadQMlEngine.rootObjects()[0]->deleteLater();
        loadQMlEngine.destroyed();

        loadQMlEngine.rootContext()->setContextProperty( "interface", 9001 );
        loadQMlEngine.load(QUrl(QStringLiteral("qrc:/qml/MainRootWindow.qml")));
    }

    void WindowLoader::loadMainWindow() {
        loadQMlEngine.rootObjects()[0]->deleteLater();
        loadQMlEngine.destroyed();

        loadQMlEngine.rootContext()->setContextProperty( "interface", 42 );
        loadQMlEngine.load(QUrl(QStringLiteral("qrc:/AuthWindow.qml")));

    }
//    QGuiApplication app(argc, argv);

//    QQmlApplicationEngine engine;
//    engine.load(QUrl(QStringLiteral("qrc:/AuthWindow.qml")));

//    return app.exec();

    int qgcauth() //(int argc, char *argv[])
    {


    return 0;
}

*/
