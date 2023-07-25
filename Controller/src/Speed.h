#ifndef SPEED_H
#define SPEED_H

#include <QObject>
<<<<<<< HEAD
#include <fstream>
#include <cstdlib>
=======
<<<<<<< HEAD
#include <fstream>
#include <cstdlib>
=======
#include <iostream>
>>>>>>> 232b46fc3361de41432b73acd63e60a9c0134d96
>>>>>>> 7626f1dca45b2eefd9be3d4e654ae3e4a6b17765


#include <iostream>
#include <string>
#include <unistd.h>
#include <CommonAPI/CommonAPI.hpp>
#include <v1/commonapi/ClusterProxy.hpp>

using namespace v1_0::commonapi;

class Speed : public QObject
{
    Q_OBJECT

public:
    explicit Speed(QObject *parent = nullptr);
    std::shared_ptr < CommonAPI::Runtime > runtime;
    std::shared_ptr<ClusterProxy<>> myProxy;

public slots:
    void adjustSpeed(int scrollValue);
};

#endif // SPEED_H
