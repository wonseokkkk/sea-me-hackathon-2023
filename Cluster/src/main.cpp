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
=======
<<<<<<< HEAD
=======
<<<<<<< HEAD
#include "YoutubeAPI.h"
=======
>>>>>>> 068a4b27902e3d95af8c021972a42e3725fb91dc
>>>>>>> 232b46fc3361de41432b73acd63e60a9c0134d96
>>>>>>> 7626f1dca45b2eefd9be3d4e654ae3e4a6b17765

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
=======
<<<<<<< HEAD
=======
<<<<<<< HEAD
    YoutubeAPI youtubeAPIStorage;
=======
>>>>>>> 068a4b27902e3d95af8c021972a42e3725fb91dc
>>>>>>> 232b46fc3361de41432b73acd63e60a9c0134d96
>>>>>>> 7626f1dca45b2eefd9be3d4e654ae3e4a6b17765

    engine.rootContext()->setContextProperty("speedReceiver", &speedStorage);
    engine.rootContext()->setContextProperty("buttonsReceiver", &buttonStorage);
    engine.rootContext()->setContextProperty("rpmReceiver", &rpmStorage);
    engine.rootContext()->setContextProperty("weatherAPI", &weatherAPIStorage);
<<<<<<< HEAD
=======
<<<<<<< HEAD
=======
<<<<<<< HEAD
    engine.rootContext()->setContextProperty("youtubeAPI", &youtubeAPIStorage);
=======
>>>>>>> 068a4b27902e3d95af8c021972a42e3725fb91dc
>>>>>>> 232b46fc3361de41432b73acd63e60a9c0134d96
>>>>>>> 7626f1dca45b2eefd9be3d4e654ae3e4a6b17765

    QObject::connect(&(*myService), &ClusterStubImpl::signalSpeed, &speedStorage, &SpeedReceiver::receiveSpeed); // Connect the instances
    QObject::connect(&(*myService), &ClusterStubImpl::signalButtons, &buttonStorage, &ButtonsReceiver::receiveButtons); // Connect the instances
    QObject::connect(&(*myService), &ClusterStubImpl::signalRPM, &rpmStorage, &RPMReceiver::receiveRPM); // Connect the instances

<<<<<<< HEAD
=======
<<<<<<< HEAD
=======
<<<<<<< HEAD

=======
>>>>>>> 068a4b27902e3d95af8c021972a42e3725fb91dc
>>>>>>> 232b46fc3361de41432b73acd63e60a9c0134d96
>>>>>>> 7626f1dca45b2eefd9be3d4e654ae3e4a6b17765
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
    if (engine.rootObjects().isEmpty())
        return -1;
    return app.exec();
}
