#include <iostream>
#include <fstream>
#include <string>
#include <cstdlib>

int speed_offset = 261;
int rpm_offset = 8001;

int xorWithKey(int value, int key) {
    return value ^ key;
}

int readKeyFromFile() {
    std::string filePath = "../../../key.txt"; // 파일 경로 수정 필요
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
