#include <iostream>
#include <fstream>
#include <string>
#include <cstdlib>


int xorscrollKey(int value, int key) {
    return value ^ key;
}

std::string xorbuttonKey(const std::string& value, const std::string& key) {
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

int readSpeedKey() {
    std::string filePath = "../../../HSM/speed_key.txt"; // 파일 경로 수정 필요
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
