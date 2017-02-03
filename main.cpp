#include <QGuiApplication>
#include <QQmlApplicationEngine>

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    engine.load(QUrl(QLatin1String("qrc:/src/App/main.qml")));

    bool isAndroid = false;
    #ifdef Q_OS_ANDROID
    isAndroid = true;
    #endif

    engine.globalObject().setProperty("hasBackButtonText", !isAndroid);

    return app.exec();
}
