#include "Speed.h"

Speed::Speed(QObject *parent) : QObject(parent)
{
    runtime = CommonAPI::Runtime::get();
    myProxy = runtime->buildProxy<ClusterProxy>("local", "cluster_service");

    while (!myProxy->isAvailable())
        usleep(10);
}

<<<<<<< HEAD
=======
<<<<<<< HEAD
>>>>>>> 7626f1dca45b2eefd9be3d4e654ae3e4a6b17765
int readSpeedKey() {
    std::string filePath = "../../../HSM/speed_key.txt";
    std::ifstream file(filePath);
    std::string line;

    if (file.is_open()) {
        if (std::getline(file, line)) {
            int key = std::stoi(line);
            file.close();
            return key;
        } else {
            std::cerr << "Failed to read key from file." << std::endl;
        }
    } else {
        std::cerr << "Failed to open file for reading." << std::endl;
    }

    return 0;
}

void Speed::adjustSpeed(int scrollValue)
{
    int result;	
    CommonAPI::CallStatus callStatus;

    int key = readSpeedKey();

    int offvalue = scrollValue + 261; 
    int xoredSpeed = offvalue ^ key;

    std::cout << "Speed : " << scrollValue << std::endl;
    myProxy->updateSpeed(xoredSpeed , callStatus, result);
    std::cout << "Check error: '" << result << "'\n";
}

<<<<<<< HEAD
=======
=======
void Speed::adjustSpeed(int scrollValue)
{
    int result;
    CommonAPI::CallStatus callStatus;

    std::cout << "Speed : " << scrollValue << std::endl;
    myProxy->updateSpeed(scrollValue, callStatus, result);
    std::cout << "Check error: '" << result << "'\n";
}
>>>>>>> 232b46fc3361de41432b73acd63e60a9c0134d96
>>>>>>> 7626f1dca45b2eefd9be3d4e654ae3e4a6b17765
