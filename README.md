<<<<<<< HEAD
=======
<<<<<<< HEAD

# sea-me-hackathon-2023

## Contents
- [Step 1 : Install Ubuntu image on VMware](#Step-1-VMwareWorkstation17)
- [Step 2 : Windows settings for VMware WIFI](#windows-settings-for-VMware-WIFI)
- [Step 3 : VMware Ubuntu settings](#VMware-Ubuntu-Settings)
---

This project provides a set Ubuntu image file. Therefore, you need to install VMware to use image files.<br><br>

## Install Ubuntu image on VMware
### Step 1 VMwareWorkstation17

https://www.vmware.com/products/workstation-pro/workstation-pro-evaluation.html<br><br>


### download set Ubuntu image file<br><br>

https://www.~~~~~~~~~<br><Br>


#### install Ubuntu
<img src="https://github.com/AveesLab/hackathon-someip/assets/125881959/103899b6-ddb3-4683-a5bd-52689cf37e62" width="70%" height="50%" title="px(픽셀) 크기 설정" alt="install_ubuntu"></img><br><br>


<img src="https://github.com/AveesLab/sea-me-hackathon-2023/assets/125881959/7eccbd12-e5b6-47f4-a89f-5bd6cfd712ad" width="70%" height="50%" title="px(픽셀) 크기 설정" alt="installimage1"></img><br><br>


#### install iso file
<img src="https://github.com/AveesLab/sea-me-hackathon-2023/assets/125881959/14af5302-b502-448e-a278-a33c94ff9213" width="70%" height="50%" title="px(픽셀) 크기 설정" alt="installimage2"></img><br><br>


#### personalize Linux
<img src="https://github.com/AveesLab/sea-me-hackathon-2023/assets/125881959/345fd04e-6d98-47a6-a90f-cb7a0eabc44a" width="70%" height="50%" title="px(픽셀) 크기 설정" alt="seame"></img>

username : sea

password : me<br><br><br><br>


<img src="https://github.com/AveesLab/sea-me-hackathon-2023/assets/125881959/705c89d8-ad3f-4709-a8e2-b615046d4782" width="70%" height="50%" title="px(픽셀) 크기 설정" alt="installimage3"></img><br><br>


#### power on
<img src="https://github.com/AveesLab/sea-me-hackathon-2023/assets/125881959/ba02f129-df3d-4936-aba5-88c37c553112" width="70%" height="50%" title="px(픽셀) 크기 설정" alt="power on"></img><br><br>


#### login ubuntu
<img src="https://github.com/AveesLab/hackathon-someip/assets/125881959/de8ff45e-6300-46a9-ac82-1b571c5e6356" width="70%" height="50%" title="px(픽셀) 크기 설정" alt="login"></img><br><br>
*WIN10*

## windows settings for VMware WIFI<br>
*Based on win10*


<img src="https://github.com/AveesLab/hackathon-someip/assets/125881959/39679920-dbbe-410c-9efb-f930d1135a5c" width="70%" height="50%" title="px(픽셀) 크기 설정" alt="Untitled"></img><br><br>


<img src="https://github.com/AveesLab/hackathon-someip/assets/125881959/7479d59d-bb6d-4602-9413-971ea376a2ea" width="70%" height="50%" title="px(픽셀) 크기 설정" alt="vmware_wifi1"></img><br><br>


<img src="https://github.com/AveesLab/sea-me-hackathon-2023/assets/125881959/71b66e42-8dcb-4268-bbea-73c0bb558753" width="70%" height="50%" title="px(픽셀) 크기 설정" alt="winwifiset1"></img><br><br>


#### VMware settings (Edit -> Virtual Network Editor)
<img src="https://github.com/AveesLab/hackathon-someip/assets/125881959/56a925ee-be6a-406d-b937-520cba8535a9" width="70%" height="50%" title="px(픽셀) 크기 설정" alt="vmware1"></img><br><br>


#### change settings
<img src="https://github.com/AveesLab/sea-me-hackathon-2023/assets/125881959/20d9b8b8-20c1-4081-b732-6a15680edec6" width="70%" height="50%" title="px(픽셀) 크기 설정" alt="virtualneteditor"></img><br><br>


#### VMnet0 Bridged check (set VMnet0 Bridged(Automatic) -> Apply -> OK)
<img src="https://github.com/AveesLab/hackathon-someip/assets/125881959/72f990b8-08ca-45d4-af25-d527a5484636" width="70%" height="50%" title="px(픽셀) 크기 설정" alt="bridge"></img><br><br>


## VMware Ubuntu Settings
<img src="https://github.com/AveesLab/sea-me-hackathon-2023/assets/125881959/6c2d604b-f0cb-44f7-a162-0f96415d8583" width="70%" height="50%" title="px(픽셀) 크기 설정" alt="wifiubuntuset1"></img><br><br>


#### hardware setup
You should set Memory and Processors in recommended range<br>
<img src="https://github.com/AveesLab/hackathon-someip/assets/125881959/0c0147a9-ae4c-493f-81a0-3fe76e7251b3" width="70%" height="50%" title="px(픽셀) 크기 설정" alt="install_ram"></img><br><br>


### Network Adapter (Custom: VMnet0)
<img src="https://github.com/AveesLab/sea-me-hackathon-2023/assets/125881959/f0583e5e-d6c8-4809-b91a-9bda2d9d206f" width="70%" height="50%" title="px(픽셀) 크기 설정" alt="SetVMnet0"></img><br><br>

### Network Connect
<img src="https://github.com/AveesLab/sea-me-hackathon-2023/assets/125881959/7ecbe022-a8f9-4e7b-b5d3-b8f3e00032ab" width="70%" height="50%" title="px(픽셀) 크기 설정" alt="networkconnect"></img><br><br>


### network ping check
If the network settings of the two devices are well established, the ping test result can be checked as follows.<br>
If ping transmission between the two devices is successful, preparations for vsomeip communication are completed.<br>
<pre>
<code>
//check your device's IP address
ifconfig -a
</code>
</pre>
  <img src="https://github.com/AveesLab/hackathon-someip/assets/125881959/ebf358fd-5c51-41a5-ad92-6976392c2d01" width="70%" height="50%" title="px(픽셀) 크기 설정" alt="ifconfig-a"></img><br><br>


### ping to TX2
<img src="https://github.com/AveesLab/hackathon-someip/assets/125881959/06ef3f9e-3e89-468e-aa5b-1985d7b73dae" width="70%" height="50%" title="px(픽셀) 크기 설정" alt="ping_to_tx2"></img><br><br>


### ping to laptop VMware
<img src="https://github.com/AveesLab/hackathon-someip/assets/125881959/349ef132-b782-4f6d-bb54-e722a2ff6308" width="70%" height="50%" title="px(픽셀) 크기 설정" alt="ping to laptop"></img><br><br>


**If you've finished, please refer to the README of the cluster and controller**
=======
>>>>>>> 7626f1dca45b2eefd9be3d4e654ae3e4a6b17765
# SEA:ME@Korea 2023 Summer Hackathon<br>

During this hackathon, your mission is to develop a new digital instrument cluster system based on our baseline implementation in this repository. We'll provide you an Nvidia Jetson TX 2 embedded board that is the final target system. However, the instrument cluster can run on Intel/AMD CPU-based Ubuntu Linux distributions. If you use a Windows laptop, you have to install VMware and Ubuntu Linux as a guest operating system. We provide a preconfigured VMware image that includes all the libraries, tools, and source codes ready for the hackathon in the following link:

- [VMware Ubuntu image](https://github.com/AveesLab/sea-me-hackathon-2023/blob/master/VMware%20Ubuntu%20image/README.md)<br>

Otherwise, if you want to use a native Linux environment, you have to install (i) vsomeip, (ii) CommonAPI, and (iii) QT5. Please follow the instructions below to prepare your development environment:
<!---
## Contents
- [Step 1: Install OpenJDK Java 8](#step-1-install-openjdk-java-8)
- [Step 2: Install Boost.Asio library](#step-2-install-boostasio-library)
- [Step 3: Build the CommonAPI Runtime Library](#step-3-build-the-commonapi-runtime-library)
- [Step 4: Build the vsomeip Library](#step-4-build-the-vsomeip-library)
- [Step 5: Build the CommonAPI SOME/IP Runtime Library](#step-5-build-the-commonapi-someip-runtime-library)
- [Step 6: Install Qt](#step-6-install-qt)
- [Step 7: Execute Cluster & Controller](#step-7-execute-cluster-and-controller)
---
<br>


# CommonAPI vSomeIP QT Setup
-->

## Step 0: Make sure you have installed git and cmake
```bash
sudo apt update
sudo apt install git
sudo apt install cmake
```

<br/>

## Step 1: Install OpenJDK Java 8
```bash
sudo apt install openjdk-8-jdk
```

You can check installation

```bash
java -version
```

If you already have openJDK 11 in your system, your default JDK version will be 11.
![스크린샷, 2023-07-07 21-58-18](https://github.com/AveesLab/sea-me-hackathon-2023/assets/96398568/49d28f85-6f4f-4ca6-a971-abfa95dd7f68)

Then you can change the JDK version using the following command:

```bash
sudo update-alternatives --config java
```

Please select java-8 as in the following: 
![스크린샷, 2023-07-07 21-58-41](https://github.com/AveesLab/sea-me-hackathon-2023/assets/96398568/130277ce-b1bd-4c0c-8375-8a877ab1c869)
```bash
java -version
```
![스크린샷, 2023-07-07 21-59-08](https://github.com/AveesLab/sea-me-hackathon-2023/assets/96398568/f3c6b169-3de6-4bba-83ba-087a9e92da07)


<br/>

## Step 2: Install the Boost.Asio library
Boost.Asio is a C++ network library.
```bash
sudo apt install libboost-all-dev
```

<br/>

## Step 3: Build the CommonAPI core runtime

Create a build directory, which is `build-commonapi` in my case.

```bash
cd ~
mkdir build-commonapi && cd build-commonapi
```

Download, build, and install the CommonAPI runtime.

```bash
git clone https://github.com/GENIVI/capicxx-core-runtime.git
cd capicxx-core-runtime/
git checkout 3.2.0
mkdir build
cd build
cmake ..
make -j6
sudo make install
```

Result:

```bash
[100%] Linking C shared library libCommonAPI.so
[100%] Built target CommonAPI
```

<br/>

## Step 4: Build the vsomeip library

Install dependent packages.
```bash
sudo apt install asciidoc source-highlight doxygen graphviz libgtest-dev
```
Download and build the vsomeip library.

```bash
cd ~
cd build-commonapi
git clone https://github.com/COVESA/vsomeip.git
cd vsomeip
git checkout 3.1.20.3
mkdir build
cd build
cmake -DENABLE_SIGNAL_HANDLING=1 -DDIAGNOSIS_ADDRESS=0x10 ..
make -j6
sudo make install
```


Result:

```bash
[100%] Linking CXX executable vsomeipd
[100%] Built target vsomeipd
```

<br/>

## Step 5: Build the CommonAPI SOME/IP runtime library

Download and build the CommonAPI SOME/IP runtime library.

```bash
cd ~
cd build-commonapi
git clone https://github.com/GENIVI/capicxx-someip-runtime.git
cd capicxx-someip-runtime/
git checkout 3.2.0
mkdir build
cd build
cmake -DUSE_INSTALLED_COMMONAPI=OFF ..
make -j6
sudo make install

```

Result:

```bash
[100%] Linking CXX shared library libCommonAPI-SomeIP.so
[100%] Built target CommonAPI-SomeIP
```

#### Add library path
```bash
cd ~
sudo vi .bashrc
```
Add the following line at the end of the .bash file:
```bash
export LD_LIBRARY_PATH=/usr/local/lib:$LD_LIBRARY_PATH
```

Source the .bashrc.

```bash
source .bashrc
```
<br/>



## Step 6: Install Qt

Install the QT5 packages.
```bash
sudo apt install qt5-default
sudo apt install qtcreator
sudo apt install qtdeclarative5-dev
```

You must install the QT Multimdeia module.
```bash
sudo apt install qtmultimedia5-dev
sudo apt install qml-module-qtquick-controls2
sudo apt install libqt5multimediawidgets5 libqt5multimedia5
sudo apt install libqt5multimedia5-plugins qml-module-qtmultimedia
```


<br/>

## Step 7: Execute Cluster and Controller
The environment setup is completed.<br>
You can run the Controller and Cluster by following each README in the links below:
- [Cluster](https://github.com/AveesLab/sea-me-hackathon-2023/tree/master/Cluster)
- [Controller](https://github.com/AveesLab/sea-me-hackathon-2023/tree/master/Controller)
<<<<<<< HEAD
=======
>>>>>>> 232b46fc3361de41432b73acd63e60a9c0134d96
>>>>>>> 7626f1dca45b2eefd9be3d4e654ae3e4a6b17765
