#include "RPM.h"

RPM::RPM(QObject *parent) : QObject(parent)
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
int readRPMKey() {
    std::string filePath = "../../../HSM/rpm_key.txt"; // 파일 경로 수정 필요
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

    return 0; // 읽기 실패 시 기본값으로 0을 반환하도록 설정
}


<<<<<<< HEAD
=======
=======
>>>>>>> 232b46fc3361de41432b73acd63e60a9c0134d96
>>>>>>> 7626f1dca45b2eefd9be3d4e654ae3e4a6b17765
void RPM::adjustRPM(int scrollValue)
{
    int result;
    CommonAPI::CallStatus callStatus;

<<<<<<< HEAD
=======
<<<<<<< HEAD
>>>>>>> 7626f1dca45b2eefd9be3d4e654ae3e4a6b17765
    int key = readRPMKey();

    int offvalue = scrollValue + 12341;
    int xoredRPM = offvalue ^ key;

    std::cout << "RPM : " << scrollValue << std::endl;
    std::cout << "offRPM : " << offvalue << std::endl;
    std::cout << "xorRPM : " << xoredRPM << std::endl;
    myProxy->updateRPM(xoredRPM, callStatus, result);
<<<<<<< HEAD
=======
=======
    std::cout << "RPM : " << scrollValue << std::endl;
    myProxy->updateRPM(scrollValue, callStatus, result);
>>>>>>> 232b46fc3361de41432b73acd63e60a9c0134d96
>>>>>>> 7626f1dca45b2eefd9be3d4e654ae3e4a6b17765
    std::cout << "Check error: '" << result << "'\n";
}
