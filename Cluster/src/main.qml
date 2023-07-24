import QtQuick 2.7
import QtQuick.Controls 2.2
import "."
import QtMultimedia 5.5
<<<<<<< HEAD

ApplicationWindow {
    visible: true
    width: 1918 // screen.width
    height: 920 //screen.height
    property alias myImage1: myImage1
    //property alias gearImage: gearImage
=======
<<<<<<< HEAD
import QtWebEngine 1.5
import QtWebView 1.0

ApplicationWindow {
    visible: true
    width: 1918 //screen.width
    height: 920
    //screen.height
    //property alias gearImage: gearImage
=======

ApplicationWindow {
    visible: true
    width: screen.width
    height: screen.height
    property alias gearImage: gearImage
>>>>>>> 068a4b27902e3d95af8c021972a42e3725fb91dc
>>>>>>> 232b46fc3361de41432b73acd63e60a9c0134d96
    property string bState: "P"
    property bool showWeather: false
    property bool showWarn: false
    property bool showLight: false
<<<<<<< HEAD
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

=======
<<<<<<< HEAD
    property bool showYOUTUBE: false
    property bool showCruise: false
    property bool showMode: true
    property bool showP: true
    property bool showR: false
    property bool showN: false
    property bool showD: false
    property bool showState: false
    property bool showKakaoMap: true
    property bool showSonic: false
=======
>>>>>>> 068a4b27902e3d95af8c021972a42e3725fb91dc
    title: qsTr("Speedometer")

    // Background Image
    Image {
        id: backgroundImage
<<<<<<< HEAD

        source  : showMode ? "image/tmp_14.png" : "image/tmp_27.png"

        anchors.fill: parent
        anchors.verticalCenter: parent
        anchors.horizontalCenter: parent

        width  : 1850
        height : 800
        anchors.rightMargin: 0
        anchors.bottomMargin: 0
        anchors.leftMargin: 0
        anchors.topMargin: 0

    }



    Image {
        id: ultrasonic
        width: 166
        height: 166
        anchors.verticalCenterOffset: -104
        anchors.horizontalCenterOffset: 428
        anchors.centerIn: parent
        source: "image/ultra.png"
        visible: showSonic
    }


    Text {
        id: cruise
        y:-58
        font.pixelSize: 15
        font.bold: true
        font.italic: true
        color: 'white'
        anchors.horizontalCenter: speedMonitor.horizontalCenter
        anchors.horizontalCenterOffset: -7
        anchors.verticalCenterOffset:40
        anchors.bottom: speedMonitor.top

        text  : "on cruise"
        anchors.bottomMargin: 1
        visible: showCruise && showMode
    }

    WebView {
         id: kakaoMapWebView
         width: 709
         height: 782
         // Adjust the width of the Kakao Map
         anchors.horizontalCenterOffset: -604 // Adjust the height of the Kakao Map
         anchors.verticalCenterOffset: 41
         // Adjust the horizontal position of the Kakao Map
         anchors.centerIn: parent
         url: "https://map.kakao.com/" // Replace with your Kakao Map URL
         visible: showKakaoMap
     }

    WebView{
        id: youtubeView
        width: 709
        height: 782
        anchors.horizontalCenterOffset: 622
        anchors.verticalCenterOffset: 41
        // Adjust the horizontal position of the Kakao Map
        anchors.centerIn: parent
        url: youtubeAPI.id
        visible: showYOUTUBE
        Connections{
            target: buttonsReceiver
            onButtonsValueChanged:{
                var buttonValue_youtube = buttonsReceiver.buttonsValue;
                if (buttonValue_youtube === " Autodrive"){
                    showYOUTUBE = !showYOUTUBE;
                }
            }
        }
    }
    Camera {
        id: camera
        deviceId: "/dev/video1"
    }

    VideoOutput {
        id: videoOutput
        width: 709 // Set width of the camera output
        height: 782
        anchors.verticalCenterOffset: 41
        anchors.horizontalCenterOffset: -604 // Set height of the camera output
        anchors.horizontalCenter: parent.horizontalCenter // Center the output horizontally
        anchors.verticalCenter: parent.verticalCenter // Center the output vertically
        source: camera
        visible: showR
    }

    Image
    {
        id : cover_left
        x : 0
        y : 0
        width : 738
        height : 920
        source : showMode ? "image/Removal-413.png" : "image/Removal-661.png"
    }

    Image
    {
        id : cover_right
        x : 1158
        y : 0
        width : 760
        height : 920
        source : showMode ? "image/Removal-219.png" : "image/Removal-289.png"
    }

/*    Image {
        id: weatherIcon
        y: 830
        width: 100
        height: 80
        anchors.verticalCenterOffset: 402
        anchors.horizontalCenterOffset: -244
=======
        anchors.fill: parent
        source: "image/back.png" // Replace with the path to your background image
    }
    // speed gage
    Image {
        id: speedImage
        width: 590
        height: 590
        anchors.verticalCenterOffset: -175
        anchors.horizontalCenterOffset: -548
        anchors.centerIn: parent
        source: "image/dial.png" // Replace with the path to your arc image
    }
    Image {
        id: rpmImage
        width: 550
        height: 550
        anchors.verticalCenterOffset: -185
        anchors.horizontalCenterOffset: 527
        anchors.centerIn: parent
        source: "image/rpm.png" // Replace with the path to your arc image
    }
    // Car Image
    Image {
        id: carImage
        y: -484
        width: 412 // Adjust the width of the car image
        height: 299
        anchors.horizontalCenterOffset: 0
        anchors.bottomMargin: 185 // Adjust the height of the car image
        source: "image/car1.png" // Replace with the path to your car image
        anchors {
            bottom: parent.bottom
            horizontalCenter: parent.horizontalCenter
            margins: 20
        }
    }
>>>>>>> 232b46fc3361de41432b73acd63e60a9c0134d96
    Image {
        id: weatherIcon
        width: 166
        height: 166
<<<<<<< HEAD
        anchors.verticalCenterOffset: 24
        anchors.horizontalCenterOffset: 710
=======
        anchors.verticalCenterOffset: -46
        anchors.horizontalCenterOffset: 0
>>>>>>> 068a4b27902e3d95af8c021972a42e3725fb91dc
>>>>>>> 232b46fc3361de41432b73acd63e60a9c0134d96
        anchors.centerIn: parent
        source: weatherAPI.weatherIcon
        visible: showWeather
    }
<<<<<<< HEAD
    Image {
        id: warnIcon
        width: 470
        height: 100
        anchors.verticalCenterOffset: -300
        anchors.horizontalCenterOffset: -24
=======
<<<<<<< HEAD
*/


    Text {
        id: temperature
        x: 658
        y: 830
        width: 80
        height: 80
        font.pixelSize: 60
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

    Image {
        id: warnIcon
        width: 759
        height: 100
        anchors.verticalCenterOffset: -392
        anchors.horizontalCenterOffset: -16
=======
    Image {
        id: warnIcon
        width: 864
        height: 80
        anchors.verticalCenterOffset: -506
        anchors.horizontalCenterOffset: 0
>>>>>>> 068a4b27902e3d95af8c021972a42e3725fb91dc
>>>>>>> 232b46fc3361de41432b73acd63e60a9c0134d96
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
<<<<<<< HEAD
        id: starIcon
        width: 80
        height: 80
        anchors.verticalCenterOffset: -147
        anchors.horizontalCenterOffset: -474
=======
        id: lightIcon
<<<<<<< HEAD
        y: 18
        width: 80
        height: 80
        anchors.verticalCenterOffset: -392
        anchors.horizontalCenterOffset: -164
=======
        width: 80
        height: 80
        anchors.verticalCenterOffset: -506
        anchors.horizontalCenterOffset: -548
>>>>>>> 068a4b27902e3d95af8c021972a42e3725fb91dc
>>>>>>> 232b46fc3361de41432b73acd63e60a9c0134d96
        anchors.centerIn: parent
        source: "image/star.png"
        visible: showLight
    }
<<<<<<< HEAD
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

=======

<<<<<<< HEAD
    Canvas {
        id: rpmpointer
        x: 9
        y: 34
        width: 1880
        height: 935
        anchors.verticalCenterOffset: -280
        anchors.horizontalCenterOffset: 540
        rotation: 180
        opacity:0.5
        //anchors.centerIn: parent
=======
>>>>>>> 232b46fc3361de41432b73acd63e60a9c0134d96
    Text {
        id: temperature
        font.pixelSize: 40
        font.bold: true
        font.italic: true
        color: 'white'
        anchors.horizontalCenter: weatherIcon.horizontalCenter
        anchors.top: weatherIcon.bottom
<<<<<<< HEAD
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
=======
        anchors.topMargin: -40
        text: weatherAPI.temperature + "°C"
        anchors.horizontalCenterOffset: 1
        visible: showWeather
    }

    Canvas {
        id: speedpointer
        width: parent.width
        height: parent.height
        anchors.verticalCenterOffset: -170
        anchors.horizontalCenterOffset: -548
        rotation: 180
        anchors.centerIn: parent
>>>>>>> 068a4b27902e3d95af8c021972a42e3725fb91dc
        onPaint: {
            var ctx = getContext('2d');
            var centerX = width / 2;
            var centerY = height / 2;

            // Clear the canvas
            ctx.clearRect(0, 0, width, height);

            // Draw the speed bar
<<<<<<< HEAD
            var startAngle=-23*Math.PI/166
            var endAngle=(rpmReceiver.rpmValue/28 -23)*Math.PI/166;
            var gradient = ctx.createLinearGradient(centerX,centerY,centerX+293*Math.cos(endAngle),centerY+293*Math.sin(endAngle));
            gradient.addColorStop(0,"#00ff00");
            gradient.addColorStop(0.2,"#00ff00");

            gradient.addColorStop(0.2,"#00ff7f");
            gradient.addColorStop(0.4,"#00ff7f");

            gradient.addColorStop(0.4,"#ffff00");
            gradient.addColorStop(0.6,"#ffff00");

            gradient.addColorStop(0.6,"#ffa500");
            gradient.addColorStop(0.8,"#ffa500");

            gradient.addColorStop(0.8,"#ff8c00");
            gradient.addColorStop(1,"#ff8c00");

            gradient.addColorStop(1,"#ff0000");

            ctx.beginPath();
            ctx.moveTo(centerX, centerY);
            ctx.arc(centerX,centerY,300,startAngle,endAngle);
            ctx.lineWidth = 15;
            ctx.strokeStyle = gradient;
=======
            var angle = (speedReceiver.speedValue - 35) * Math.PI / 180; // Convert speed to angle
            ctx.beginPath();
            ctx.moveTo(centerX, centerY);
            ctx.lineTo(centerX + 160 * Math.cos(angle), centerY + 160 * Math.sin(angle));
            ctx.lineWidth = 10;
            ctx.strokeStyle = '#ff0000';
            ctx.stroke();
        }

        Connections {
            target: speedReceiver
            onSpeedValueChanged: {
                speedpointer.requestPaint()
            }
        }
    }

    Canvas {
        id: rpmpointer
        width: parent.width
        height: parent.height
        anchors.verticalCenterOffset: -185
        anchors.horizontalCenterOffset: 527
        rotation: 180
        anchors.centerIn: parent
        onPaint: {
            var ctx = getContext('2d');
            var centerX = width / 2;
            var centerY = height / 2;

            // Clear the canvas
            ctx.clearRect(0, 0, width, height);

            // Draw the speed bar
            var angle = ((rpmReceiver.rpmValue / 30) -45) * Math.PI / 180; // Convert rpm to angle
            ctx.beginPath();
            ctx.moveTo(centerX, centerY);
            ctx.lineTo(centerX + 135 * Math.cos(angle), centerY + 135 * Math.sin(angle));
            ctx.lineWidth = 7;
            ctx.strokeStyle = '#ff0000';
>>>>>>> 068a4b27902e3d95af8c021972a42e3725fb91dc
            ctx.stroke();
        }

        Connections {
            target: rpmReceiver
            onRpmValueChanged: {
                rpmpointer.requestPaint()
            }
        }
    }
<<<<<<< HEAD

>>>>>>> 232b46fc3361de41432b73acd63e60a9c0134d96

    Image
    {
        id : cover
<<<<<<< HEAD
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
=======
        x : 642
        y : 192
        width : 600
        height : 624
        source : showMode ? "image/cover_re.png" : "image/tmp_20.png"
    }


    Text
    {
        id : speedMonitor
        font.pixelSize: 100
        font.bold: false
        font.family: "Verdana"
        color : showMode ? "white" : "black"

        anchors.centerIn: parent
        anchors.verticalCenterOffset: 42
        text : speedReceiver.speedValue
        anchors.horizontalCenterOffset: -16
        visible : !showState
    }

    Text
    {
        id : stateShow
        width: 255
        height: 518
        font.pixelSize: 30
        font.bold: true
        font.family: "Arial"
        color: showMode ? "white" : "black"
        anchors.centerIn: parent
        anchors.verticalCenterOffset: 9
        text : " : 50.8km/h"+"\n"+" : 16.6km/L"+"\n"+" : 0.39h:m"
        anchors.horizontalCenterOffset:756
        visible: showState
    }

    Item {



        Text {
            id: pText
            x:1130
            y:830
            width:80
            height : 80
>>>>>>> 232b46fc3361de41432b73acd63e60a9c0134d96
            font.pixelSize: 60
            font.italic: true
            font.bold: true
            text: "P"
<<<<<<< HEAD
            color: showMode ?'white' : 'black'
            visible: showP
=======
            color: showMode ? 'white' : 'black'
            visible : showP
=======
    Row {
        anchors.verticalCenterOffset: 486
        anchors.horizontalCenterOffset: 0
        anchors.centerIn: parent
        spacing: 10

        Text {
            id: pText
            font.pixelSize: 130
            font.italic: true
            font.bold: true
            text: "P"
            color: 'red'
>>>>>>> 068a4b27902e3d95af8c021972a42e3725fb91dc
>>>>>>> 232b46fc3361de41432b73acd63e60a9c0134d96
        }

        Text {
            id: rText
<<<<<<< HEAD
            x: 891
            y: 550
=======
<<<<<<< HEAD
            x:1130
            y:830
            width: 80
            height: 80
>>>>>>> 232b46fc3361de41432b73acd63e60a9c0134d96
            anchors.top:speedMonitor.bottom
            font.pixelSize: 60
            font.italic: true
            font.bold: true
            text: "R"
<<<<<<< HEAD
            color: showMode ?'white' : 'black'
            visible:showR
=======
            color: showMode ? 'white' : 'black'
            visible : showR
=======
            font.pixelSize: 130
            font.italic: true
            font.bold: true
            text: "R"
            color: 'white'
>>>>>>> 068a4b27902e3d95af8c021972a42e3725fb91dc
>>>>>>> 232b46fc3361de41432b73acd63e60a9c0134d96
        }

        Text {
            id: nText
<<<<<<< HEAD
            x: 891
            y: 550
            width: 53
            height: 68
=======
<<<<<<< HEAD
            x:1130
            y:830
            width: 80
            height: 80
>>>>>>> 232b46fc3361de41432b73acd63e60a9c0134d96
            anchors.top:speedMonitor.bottom
            font.pixelSize: 60
            font.italic: true
            font.bold: true
            text: "N"
<<<<<<< HEAD
            color: showMode ?'white' : 'black'
            visible:showN
=======
            color: showMode ? 'white' : 'black'
            visible : showN
=======
            font.pixelSize: 130
            font.italic: true
            font.bold: true
            text: "N"
            color: 'white'
>>>>>>> 068a4b27902e3d95af8c021972a42e3725fb91dc
>>>>>>> 232b46fc3361de41432b73acd63e60a9c0134d96
        }

        Text {
            id: dText
<<<<<<< HEAD
            x: 891
            y: 550
=======
<<<<<<< HEAD
            x:1130
            y:830
            width: 80
            height: 80
>>>>>>> 232b46fc3361de41432b73acd63e60a9c0134d96
            anchors.top:speedMonitor.bottom
            font.pixelSize: 60
            font.italic: true
            font.bold: true
            text: "D"
<<<<<<< HEAD
            color: showMode ?'white' : 'black'
            visible:showD
        }


=======
            color: showMode ? 'white' : 'black'
            visible : showD
=======
            font.pixelSize: 130
            font.italic: true
            font.bold: true
            text: "D"
            color: 'white'
>>>>>>> 068a4b27902e3d95af8c021972a42e3725fb91dc
        }

>>>>>>> 232b46fc3361de41432b73acd63e60a9c0134d96
        Connections {
            target: buttonsReceiver
            onButtonsValueChanged: {
                var buttonValue = buttonsReceiver.buttonsValue;

<<<<<<< HEAD
                bState = buttonValue;
                if(buttonValue==="P" || buttonValue==="N" || buttonValue==="R" || buttonValue==="D")
                {
=======
<<<<<<< HEAD
                bState = buttonValue;
                if (buttonValue === "P" || buttonValue === "R" || buttonValue === "N" || buttonValue === "D") {

>>>>>>> 232b46fc3361de41432b73acd63e60a9c0134d96
                    if(showR || showP || showN || showD)
                    {
                        showR=false;
                        showD=false;
                        showN=false;
                        showP=false;
<<<<<<< HEAD
                    }
                }

                if (buttonValue === "R") {

                    showR=!showR

=======
                       }
                }

                if(buttonValue==="R")
                {
                    showR=!showR
>>>>>>> 232b46fc3361de41432b73acd63e60a9c0134d96
                    if(bState!=="D")
                    {
                        showCruise=false;
                    }
                }
<<<<<<< HEAD
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
=======
                else if(buttonValue==="P")
                {
                    showP=!showP
                }
                else if(buttonValue==="N")
                {
                    showN=!showN
                }
                else if(buttonValue==="D")
                {
                    showD=!showD
=======
                if (buttonValue === "P" || buttonValue === "R" || buttonValue === "N" || buttonValue === "D") {
                    bState = buttonValue;
                    pText.color = bState === "P" ? 'red' : 'white';
                    rText.color = bState === "R" ? 'red' : 'white';
                    nText.color = bState === "N" ? 'red' : 'white';
                    dText.color = bState === "D" ? 'red' : 'white';

                    gearImage.visible = bState === "P";
                    videoOutput.visible = bState === "R";
>>>>>>> 068a4b27902e3d95af8c021972a42e3725fb91dc
>>>>>>> 232b46fc3361de41432b73acd63e60a9c0134d96
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
<<<<<<< HEAD
                else if(buttonValue ==="Cruise")
                {
                    showCruise = !showCruise;
                }
                else if(buttonValue==="modeChange")
                {
                    showMode = !showMode;
=======
<<<<<<< HEAD
                else if(buttonValue === "Autodrive"){
                    showYOUTUBE = !showYOUTUBE;
                }
                else if(buttonValue==="Cruise")
                {
                    showCruise=!showCruise;
                }
                else if(buttonValue==="modeChange")
                {
                    showMode=!showMode;
>>>>>>> 232b46fc3361de41432b73acd63e60a9c0134d96
                }
                else if(buttonValue==="stateChange")
                {
                    showState=!showState
                }
<<<<<<< HEAD

                if(bState==="P")
                {
                    speedReceiver.speedValue=0;

                }

=======
                else if(buttonValue==="sonic")
                {
                    showSonic=!showSonic
                }

                if(bState==="p")
                {
                    speedReceiver.speedValue=0;
                }
=======
>>>>>>> 068a4b27902e3d95af8c021972a42e3725fb91dc
>>>>>>> 232b46fc3361de41432b73acd63e60a9c0134d96
            }
        }

    }

<<<<<<< HEAD
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
=======
<<<<<<< HEAD




    Button {
        id: showMapButton
        width: 50
        // Adjust the width of the button
        height: 38 // Adjust the height of the button
        anchors.verticalCenterOffset: 441
        // Adjust the horizontal position of the button
        anchors.centerIn: parent
        text: "Show Map"
        anchors.horizontalCenterOffset: -934
        onClicked: {
            showKakaoMap = !showKakaoMap;
            kakaoMapWebView.url = "https://map.kakao.com/?q=" + destinationInput.text; // Set the Kakao Map URL with destination
        }
    }




    Item
    {
        width:300
        height:300
        Image
        {
            ParallelAnimation
            {
                running:true
                loops:1

                NumberAnimation
                {

                    target:myImage1
                    property:"opacity"
                    to:0
                    duration:5000
                    easing.type: Easing.InOutQuad
                }
                NumberAnimation
                {

                    target:myImage2
                    property:"opacity"
                    to:0
                    duration:5000
                    easing.type: Easing.InOutQuad
                }
            }

                    Image
                    {
                        id:myImage1
                        anchors.centerIn: parent
                        anchors.verticalCenterOffset: 508
                        anchors.horizontalCenterOffset: 947

                        width:720
                        height:749
                        source:"image/volk.png"
                        opacity:1
                    }

                    Image
                    {
                        id:myImage2
                        x: -10
                        y: -25
                        width:1939
                        height : 1019
                        source:"image/black.png"

                    }
>>>>>>> 232b46fc3361de41432b73acd63e60a9c0134d96
        }
    }



<<<<<<< HEAD
=======

=======
    Image {
        id: gearImage
        width: 450
        height: 450
        scale: 1
        anchors.verticalCenterOffset: -334
        anchors.horizontalCenterOffset: 1
        anchors.centerIn: parent
        source: "image/volk.png" // Replace with the path to your image
        visible: bState === "P"
    }

>>>>>>> 232b46fc3361de41432b73acd63e60a9c0134d96
    Camera {
        id: camera
        deviceId: "/dev/video1"
    }

    VideoOutput {
        id: videoOutput
<<<<<<< HEAD
        width: 410 // Set width of the camera output
        height: 374
        anchors.verticalCenterOffset: -261
        anchors.horizontalCenterOffset: 735 // Set height of the camera output
        anchors.horizontalCenter: parent.horizontalCenter // Center the output horizontally
        anchors.verticalCenter: parent.verticalCenter // Center the output vertically
        source: camera
        visible: showR
    }
=======
        width: 492 // Set width of the camera output
        height: 441
        anchors.verticalCenterOffset: -334
        anchors.horizontalCenterOffset: 0 // Set height of the camera output
        anchors.horizontalCenter: parent.horizontalCenter // Center the output horizontally
        anchors.verticalCenter: parent.verticalCenter // Center the output vertically
        source: camera
        visible: bState === "R"
    }
>>>>>>> 068a4b27902e3d95af8c021972a42e3725fb91dc
>>>>>>> 232b46fc3361de41432b73acd63e60a9c0134d96
}
