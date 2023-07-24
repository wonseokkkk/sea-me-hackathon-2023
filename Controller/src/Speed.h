#ifndef SPEED_H
#define SPEED_H

#include <QObject>
#include <fstream>
#include <cstdlib>


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
