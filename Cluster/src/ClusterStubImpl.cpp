#include "ClusterStubImpl.hpp"
#include "XOR.hpp"

ClusterStubImpl::ClusterStubImpl() { }
ClusterStubImpl::~ClusterStubImpl() { }

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
    _reply(0);
}
