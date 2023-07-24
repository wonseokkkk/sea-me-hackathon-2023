#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include "SpeedReceiver.h" // Include the new header
#include "ButtonsReceiver.h"
#include "RPMReceiver.h"
#include <qqml.h>
#include <QMetaType>
#include <string>
#include <iostream>
#include <thread>
#include <CommonAPI/CommonAPI.hpp>
#include "ClusterStubImpl.hpp"

#include "WeatherAPI.h"
<<<<<<< HEAD
#include "YoutubeAPI.h"
=======
>>>>>>> 068a4b27902e3d95af8c021972a42e3725fb91dc

using namespace std;
Q_DECLARE_METATYPE(std::string)

int main(int argc, char *argv[])
{
    qRegisterMetaType<std::string>();

    std::shared_ptr<CommonAPI::Runtime> runtime = CommonAPI::Runtime::get();
    std::shared_ptr<ClusterStubImpl> myService =
        std::make_shared<ClusterStubImpl>();
    runtime->registerService("local", "cluster_service", myService);
    std::cout << "Successfully Registered Service!" << std::endl;

    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QGuiApplication app(argc, argv);
    QQmlApplicationEngine engine;

    SpeedReceiver speedStorage;
    ButtonsReceiver buttonStorage;
    RPMReceiver rpmStorage;
    WeatherAPI weatherAPIStorage;
<<<<<<< HEAD
    YoutubeAPI youtubeAPIStorage;
=======
>>>>>>> 068a4b27902e3d95af8c021972a42e3725fb91dc

    engine.rootContext()->setContextProperty("speedReceiver", &speedStorage);
    engine.rootContext()->setContextProperty("buttonsReceiver", &buttonStorage);
    engine.rootContext()->setContextProperty("rpmReceiver", &rpmStorage);
    engine.rootContext()->setContextProperty("weatherAPI", &weatherAPIStorage);
<<<<<<< HEAD
    engine.rootContext()->setContextProperty("youtubeAPI", &youtubeAPIStorage);
=======
>>>>>>> 068a4b27902e3d95af8c021972a42e3725fb91dc

    QObject::connect(&(*myService), &ClusterStubImpl::signalSpeed, &speedStorage, &SpeedReceiver::receiveSpeed); // Connect the instances
    QObject::connect(&(*myService), &ClusterStubImpl::signalButtons, &buttonStorage, &ButtonsReceiver::receiveButtons); // Connect the instances
    QObject::connect(&(*myService), &ClusterStubImpl::signalRPM, &rpmStorage, &RPMReceiver::receiveRPM); // Connect the instances

<<<<<<< HEAD

=======
>>>>>>> 068a4b27902e3d95af8c021972a42e3725fb91dc
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
    if (engine.rootObjects().isEmpty())
        return -1;
    return app.exec();
}
