#ifndef RPM_H
#define RPM_H

#include <QObject>
#include <iostream>
<<<<<<< HEAD
#include <cstdlib>
#include <fstream>

=======


#include <iostream>
>>>>>>> 232b46fc3361de41432b73acd63e60a9c0134d96
#include <string>
#include <unistd.h>
#include <CommonAPI/CommonAPI.hpp>
#include <v1/commonapi/ClusterProxy.hpp>

using namespace v1_0::commonapi;

class RPM : public QObject
{
    Q_OBJECT

public:
    explicit RPM(QObject *parent = nullptr);
    std::shared_ptr < CommonAPI::Runtime > runtime;
    std::shared_ptr<ClusterProxy<>> myProxy;

public slots:
    void adjustRPM(int scrollValue);
};

#endif // RPM_H
