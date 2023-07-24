#include "Buttons.h"

Buttons::Buttons(QObject *parent) : QObject(parent)
{
   runtime = CommonAPI::Runtime::get();
    myProxy = runtime->buildProxy<ClusterProxy>("local", "cluster_service");

    while (!myProxy->isAvailable())
        usleep(10);
}

<<<<<<< HEAD
std::string readButtonKey() {
    std::string filePath = "../../../HSM/button_key.txt";	
    std::ifstream file(filePath);
    std::string key;

    if (file.is_open()) {
        std::getline(file, key);
        file.close();
    } else {
        std::cerr << "Failed to open file for reading." << std::endl;
    }

    return key;
}

std::string xorWithKey(const std::string& value, const std::string& key) {
    std::string result;
    int valueLength = value.length();
    int keyLength = key.length();

    for (int i = 0; i < valueLength; i++) {
        char valueChar = value[i];
        char keyChar = key[i % keyLength];
        char xorChar = valueChar ^ keyChar;
        result += xorChar;
    }
    return result;
}

=======
>>>>>>> 232b46fc3361de41432b73acd63e60a9c0134d96
void Buttons::adjustButtons(QString clickedButton)
{
    int result;
    CommonAPI::CallStatus callStatus;
<<<<<<< HEAD
    
    std::string key = readButtonKey();

    std::string clickedButtonStdString = clickedButton.toStdString();    
    std::string xoredClick = xorWithKey(clickedButtonStdString, key);
    std::string recover = xorWithKey(xoredClick, key);

    std::cout << "Click : " << clickedButtonStdString << std::endl;
    myProxy->clickButtons(xoredClick, callStatus, result);
=======
    std::string clickedButtonStdString = clickedButton.toStdString();

    std::cout << "Click : " << clickedButtonStdString << std::endl;
    myProxy->clickButtons(clickedButtonStdString, callStatus, result);
>>>>>>> 232b46fc3361de41432b73acd63e60a9c0134d96
    std::cout << "Check error: '" << result << "'\n";
}
