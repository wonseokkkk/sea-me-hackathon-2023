#ifndef CLUSTERSTUBIMPL_H_
#define CLUSTERSTUBIMPL_H_
#include <CommonAPI/CommonAPI.hpp>
#include <v1/commonapi/ClusterStubDefault.hpp>
#include <QObject>

class ClusterStubImpl: public QObject, public v1_0::commonapi::ClusterStubDefault {
    Q_OBJECT
public:
    ClusterStubImpl();
    virtual ~ClusterStubImpl();
<<<<<<< HEAD
    virtual void updateSpeed(const std::shared_ptr<CommonAPI::ClientId> _client, int _speed, updateSpeedReply_t _reply);
    virtual void updateRPM(const std::shared_ptr<CommonAPI::ClientId> _client, int _rpm, updateRPMReply_t _reply);
    virtual void clickButtons(const std::shared_ptr<CommonAPI::ClientId> _client, std::string _command, clickButtonsReply_t _reply);
=======
<<<<<<< HEAD
    virtual void updateSpeed(const std::shared_ptr<CommonAPI::ClientId> _client, int _speed, updateSpeedReply_t _reply);
    virtual void updateRPM(const std::shared_ptr<CommonAPI::ClientId> _client, int _rpm, updateRPMReply_t _reply);
    virtual void clickButtons(const std::shared_ptr<CommonAPI::ClientId> _client, std::string _command, clickButtonsReply_t _reply);
=======
<<<<<<< HEAD
    virtual void updateSpeed(const std::shared_ptr<CommonAPI::ClientId> _client, int xor_speed, updateSpeedReply_t _reply);
    virtual void updateRPM(const std::shared_ptr<CommonAPI::ClientId> _client, int xor_rpm, updateRPMReply_t _reply);
    virtual void clickButtons(const std::shared_ptr<CommonAPI::ClientId> _client, std::string xor_command, clickButtonsReply_t _reply);
=======
    virtual void updateSpeed(const std::shared_ptr<CommonAPI::ClientId> _client, int _speed, updateSpeedReply_t _reply);
    virtual void updateRPM(const std::shared_ptr<CommonAPI::ClientId> _client, int _rpm, updateRPMReply_t _reply);
    virtual void clickButtons(const std::shared_ptr<CommonAPI::ClientId> _client, std::string _command, clickButtonsReply_t _reply);
>>>>>>> 068a4b27902e3d95af8c021972a42e3725fb91dc
>>>>>>> 232b46fc3361de41432b73acd63e60a9c0134d96
>>>>>>> 7626f1dca45b2eefd9be3d4e654ae3e4a6b17765
signals:
    void signalSpeed(int);
    void signalRPM(int);
    void signalButtons(std::string);
};
#endif /* CLUSTERSTUBIMPL_H_ */
