#ifndef RPM_H
#define RPM_H

#include <QObject>
#include <iostream>
#include <cstdlib>
#include <fstream>

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
