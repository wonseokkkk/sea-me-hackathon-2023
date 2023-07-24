import QtQuick 2.7
import QtQuick.Controls 2.2
import "."
import QtMultimedia 5.5

ApplicationWindow {
    visible: true
    width: 1918 // screen.width
    height: 920 //screen.height
    property alias myImage1: myImage1
    //property alias gearImage: gearImage
    property string bState: "P"
    property bool showWeather: false
    property bool showWarn: false
    property bool showLight: false
    property bool showCruise : false
    property bool showMode : true
    property bool showP: true
    property bool showR: false
    property bool showN: false
    property bool showD : false
    property bool showState : false

    title: qsTr("Speedometer")

    // Background Image

    Image {
        id: backgroundImage

        source: showMode ? "image/tmp_14.png" : "image/tmp_22.png" // Replace with the path to your background image

        anchors.fill:parent
        anchors.verticalCenter: parent
        anchors.horizontalCenter: parent

        width : 1850
        height : 800
    }





    // Arc Image

    Image {
        id: weatherIcon
        width: 166
        height: 166
        anchors.verticalCenterOffset: 24
        anchors.horizontalCenterOffset: 710
        anchors.centerIn: parent
        source: weatherAPI.weatherIcon
        visible: showWeather
    }
    Image {
        id: warnIcon
        width: 470
        height: 100
        anchors.verticalCenterOffset: -300
        anchors.horizontalCenterOffset: -24
        anchors.centerIn: parent
        source: "image/warning.png"
        visible: showWarn
    }
    Timer {
        id: blinkTimer
        interval: 500 // Blink every 500ms
        running: false // Don't start running automatically
        repeat: true
        onTriggered: {
            warnIcon.visible = !warnIcon.visible // Toggle visibility
        }
    }
    Image {
        id: starIcon
        width: 80
        height: 80
        anchors.verticalCenterOffset: -147
        anchors.horizontalCenterOffset: -474
        anchors.centerIn: parent
        source: "image/star.png"
        visible: showLight
    }
    Text {
        id: cruise
        y: -58
        font.pixelSize: 15
        font.bold: true
        font.italic: true
        color: 'white'
        anchors.horizontalCenter: speedMonitor.horizontalCenter
        anchors.horizontalCenterOffset:-7
        anchors.verticalCenterOffset: 40
        anchors.bottom: speedMonitor.top


        text : "on cruise"
        anchors.bottomMargin: 1
        visible : showCruise && showMode

    }

    Text {
        id: temperature
        font.pixelSize: 40
        font.bold: true
        font.italic: true
        color: 'white'
        anchors.horizontalCenter: weatherIcon.horizontalCenter
        anchors.top: weatherIcon.bottom
        anchors.topMargin: 37
        text: weatherAPI.temperature + "°C"
        anchors.horizontalCenterOffset: 0
        visible: showWeather
    }



    Canvas {
            id: rpmpointer
            width: 1825
            height:935
            anchors.verticalCenterOffset: -280
            anchors.horizontalCenterOffset: 540
            rotation: 180
            opacity: 0.5
            //anchors.centerIn: parent
            onPaint: {
                var ctx = getContext('2d');
                var centerX = width / 2;
                var centerY = height / 2;

                // Clear the canvas
                ctx.clearRect(0, 0, width, height);

                // Draw the speed bar as a fan shape
                var startAngle = -23 * Math.PI / 166
                var endAngle = (rpmReceiver.rpmValue/28 - 23) * Math.PI / 166; // Convert speed to angle



                var gradient = ctx.createLinearGradient(centerX, centerY, centerX + 293 * Math.cos(endAngle), centerY + 293 * Math.sin(endAngle));
                gradient.addColorStop(0, "#00ff00");
                gradient.addColorStop(0.2, "#00ff00");

                gradient.addColorStop(0.2, "#00ff7f");
                gradient.addColorStop(0.4, "#00ff7f");

                gradient.addColorStop(0.4, "#ffff00");
                gradient.addColorStop(0.6, "#ffff00");

                gradient.addColorStop(0.6, "#ffa500");
                gradient.addColorStop(0.8, "#ffa500");

                gradient.addColorStop(0.8, "#ff8c00");
                gradient.addColorStop(1, "#ff8c00");

                gradient.addColorStop(1, "#ff0000");

                // Draw the speed bar

                ctx.beginPath();

                ctx.moveTo(centerX, centerY);
                ctx.arc(centerX, centerY, 290, startAngle, endAngle);

                ctx.lineWidth = 15;
                ctx.strokeStyle = gradient;
                ctx.stroke();




            }

            Connections {
                target: rpmReceiver
                onRpmValueChanged: {
                    rpmpointer.requestPaint()
                }
            }
        }

    Image
    {
        id : cover
        x: 618
        y: 182
        width: 581
        height: 583
        source: showMode ? "image/cover_re.png" : "image/tmp_20.png"
    }


    Text {
        id : speedMonitor
        font.pixelSize: 70
        font.bold: false
        font.family: "Georgia"
        color: showMode ?'white' : 'black'


        anchors.centerIn: parent
        anchors.verticalCenterOffset:0
        text : speedReceiver.speedValue
        anchors.horizontalCenterOffset: -6
        visible : !showState


    }

    Text{

        id : stateShow
        font.pixelSize: 30
        font.bold : true
        font.family: "Arial"
        color:showMode ? "white" : "black"
        anchors.centerIn: parent
        anchors.verticalCenterOffset:0
        text : "거리 : 50.8km/h"+"\n"+"연비 : 16.6km/L" + "\n" + "시간 : 0:39h:m"
        anchors.horizontalCenterOffset: -6
        visible : showState

    }


    Item {

        Text {
            id: pText
            x: 891
            y: 550

            width: 60
            height: 100
            font.pixelSize: 60
            font.italic: true
            font.bold: true
            text: "P"
            color: showMode ?'white' : 'black'
            visible: showP
        }

        Text {
            id: rText
            x: 891
            y: 550
            anchors.top:speedMonitor.bottom
            font.pixelSize: 60
            font.italic: true
            font.bold: true
            text: "R"
            color: showMode ?'white' : 'black'
            visible:showR
        }

        Text {
            id: nText
            x: 891
            y: 550
            width: 53
            height: 68
            anchors.top:speedMonitor.bottom
            font.pixelSize: 60
            font.italic: true
            font.bold: true
            text: "N"
            color: showMode ?'white' : 'black'
            visible:showN
        }

        Text {
            id: dText
            x: 891
            y: 550
            anchors.top:speedMonitor.bottom
            font.pixelSize: 60
            font.italic: true
            font.bold: true
            text: "D"
            color: showMode ?'white' : 'black'
            visible:showD
        }


        Connections {
            target: buttonsReceiver
            onButtonsValueChanged: {
                var buttonValue = buttonsReceiver.buttonsValue;

                bState = buttonValue;
                if(buttonValue==="P" || buttonValue==="N" || buttonValue==="R" || buttonValue==="D")
                {
                    if(showR || showP || showN || showD)
                    {
                        showR=false;
                        showD=false;
                        showN=false;
                        showP=false;
                    }
                }

                if (buttonValue === "R") {

                    showR=!showR

                    if(bState!=="D")
                    {
                        showCruise=false;
                    }
                }
                else if(buttonValue === "P")
                {
                    showP=!showP
                }
                else if(buttonValue === "N")
                {
                    showN=!showN
                }
                else if(buttonValue === "D")
                {
                    showD=!showD
                }
                else if(buttonValue === "Weather"){
                    showWeather = !showWeather;
                    weatherAPI.requestWeather("Seoul");
                }
                else if(buttonValue === "Warn"){
                    if (showWarn) {
                        blinkTimer.stop(); // Stop blinking
                        warnIcon.visible = false; // Ensure the icon is hidden
                    } else {
                        blinkTimer.start(); // Start blinking
                    }
                    showWarn = !showWarn;
                }
                else if(buttonValue === "Light"){
                    showLight = !showLight;
                }
                else if(buttonValue ==="Cruise")
                {
                    showCruise = !showCruise;
                }
                else if(buttonValue==="modeChange")
                {
                    showMode = !showMode;
                }
                else if(buttonValue==="stateChange")
                {
                    showState=!showState
                }

                if(bState==="P")
                {
                    speedReceiver.speedValue=0;

                }

            }
        }

    }

    Item {
        width: 300
        height: 300

        Image {

            ParallelAnimation {
                running: true
                loops: 1

                NumberAnimation {
                    target: myImage1
                    property: "opacity"
                    to: 0
                    duration: 5000 // 10초 동안 서서히 사라짐
                    easing.type: Easing.InOutQuad // 선택적인 이징 설정
                }
                NumberAnimation {
                    target: myImage2
                    property: "opacity"
                    to: 0
                    duration: 5000 // 10초 동안 서서히 사라짐
                    easing.type: Easing.InOutQuad // 선택적인 이징 설정
                }
            }

            Image
            {
                id: myImage1
                anchors.centerIn: parent
                anchors.verticalCenterOffset: 462
                anchors.horizontalCenterOffset: 911

                width: 823
                height: 721
                source: "image/volk.png" // 이미지 파일의 경로와 이름에 맞게 수정
                opacity: 1 // 초기 투명도 설정
            }

            Image
            {
                id:myImage2
                width : 1850
                height : 1000
                source : "image/black.png"
                opacity:1
            }
        }
    }



    Camera {
        id: camera
        deviceId: "/dev/video1"
    }

    VideoOutput {
        id: videoOutput
        width: 410 // Set width of the camera output
        height: 374
        anchors.verticalCenterOffset: -261
        anchors.horizontalCenterOffset: 735 // Set height of the camera output
        anchors.horizontalCenter: parent.horizontalCenter // Center the output horizontally
        anchors.verticalCenter: parent.verticalCenter // Center the output vertically
        source: camera
        visible: showR
    }
}
