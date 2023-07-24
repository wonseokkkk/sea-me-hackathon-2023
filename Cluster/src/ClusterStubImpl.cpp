#include "ClusterStubImpl.hpp"
<<<<<<< HEAD
#include "XOR.hpp"
=======
>>>>>>> 068a4b27902e3d95af8c021972a42e3725fb91dc

ClusterStubImpl::ClusterStubImpl() { }
ClusterStubImpl::~ClusterStubImpl() { }

<<<<<<< HEAD
void ClusterStubImpl::updateSpeed(const std::shared_ptr<CommonAPI::ClientId> _client, int xor_speed, updateSpeedReply_t _reply) {
    
    if (xor_speed <= 260){
        _reply(-1);
        std::cout << " invalid value\n";
    }
    else if (260 < xor_speed){
        int key = readSpeedKey();
        int _speed = xorscrollKey(xor_speed, key);
        _speed -= 261;
        emit signalSpeed(_speed); // Emit the signal

        if (0 <= _speed && _speed <= 260) {
            _reply(0);
            std::cout << "Speed : " << _speed << " \n";
        } 
    }
    else {
        _reply(-1);
        std::cout << " invalid value\n";
    }
}

void ClusterStubImpl::updateRPM(const std::shared_ptr<CommonAPI::ClientId> _client, int xor_rpm, updateRPMReply_t _reply) {
     
    if (xor_rpm <= 8001){
        _reply(-1);
	std::cout << "invalid value\n";
    }
    else if (8001 < xor_rpm){
        int key = readRPMKey();
        int _rpm = xorscrollKey(xor_rpm, key);
        _rpm -= 12341;	
        emit signalRPM(_rpm); // Emit the signal

        if (0 <= _rpm && _rpm <= 8000) {
            _reply(0);
            std::cout << "RPM : " << _rpm << " \n";
        }
    }	
    else {
        _reply(-1);
        std::cout << " invalid value\n";
    }
}

void ClusterStubImpl::clickButtons(const std::shared_ptr<CommonAPI::ClientId> _client, std::string xor_command, clickButtonsReply_t _reply) {
    
    std::string key = readButtonKey();
    std::string _command = xorbuttonKey(xor_command, key);
    emit signalButtons(_command); // Emit the signal
    std::cout << "command : " << _command << " \n";
=======
void ClusterStubImpl::updateSpeed(const std::shared_ptr<CommonAPI::ClientId> _client, int _speed, updateSpeedReply_t _reply) {
    std::cout << "Speed : " << _speed << " \n";
    emit signalSpeed(_speed); // Emit the signal

    if (0 <= _speed && _speed <= 260) {
        _reply(0);
    } else {
        _reply(-1);
    }
}

void ClusterStubImpl::updateRPM(const std::shared_ptr<CommonAPI::ClientId> _client, int _rpm, updateRPMReply_t _reply) {
     std::cout << "RPM : " << _rpm << " \n";
     emit signalRPM(_rpm); // Emit the signal

     if (0 <= _rpm && _rpm <= 8000) {
         _reply(0);
     } else {
         _reply(-1);
     }
}

void ClusterStubImpl::clickButtons(const std::shared_ptr<CommonAPI::ClientId> _client, std::string _command, clickButtonsReply_t _reply) {
     std::cout << "command : " << _command << " \n";
     emit signalButtons(_command); // Emit the signal

>>>>>>> 068a4b27902e3d95af8c021972a42e3725fb91dc
    _reply(0);
}
