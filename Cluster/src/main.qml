import QtQuick 2.7
import QtQuick.Controls 2.2
import "."
import QtMultimedia 5.5
import QtWebEngine 1.5
import QtWebView 1.0

ApplicationWindow {
    visible: true
    width: 1918 //screen.width
    height: 920
    //screen.height
    //property alias gearImage: gearImage
    property string bState: "P"
    property bool showWeather: false
    property bool showWarn: false
    property bool showLight: false
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
    title: qsTr("Speedometer")

    // Background Image
    Image {
        id: backgroundImage

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
        anchors.centerIn: parent
        source: weatherAPI.weatherIcon
        visible: showWeather
    }
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
        id: lightIcon
        y: 18
        width: 80
        height: 80
        anchors.verticalCenterOffset: -392
        anchors.horizontalCenterOffset: -164
        anchors.centerIn: parent
        source: "image/star.png"
        visible: showLight
    }

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
        onPaint: {
            var ctx = getContext('2d');
            var centerX = width / 2;
            var centerY = height / 2;

            // Clear the canvas
            ctx.clearRect(0, 0, width, height);

            // Draw the speed bar
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
            font.pixelSize: 60
            font.italic: true
            font.bold: true
            text: "P"
            color: showMode ? 'white' : 'black'
            visible : showP
        }

        Text {
            id: rText
            x:1130
            y:830
            width: 80
            height: 80
            anchors.top:speedMonitor.bottom
            font.pixelSize: 60
            font.italic: true
            font.bold: true
            text: "R"
            color: showMode ? 'white' : 'black'
            visible : showR
        }

        Text {
            id: nText
            x:1130
            y:830
            width: 80
            height: 80
            anchors.top:speedMonitor.bottom
            font.pixelSize: 60
            font.italic: true
            font.bold: true
            text: "N"
            color: showMode ? 'white' : 'black'
            visible : showN
        }

        Text {
            id: dText
            x:1130
            y:830
            width: 80
            height: 80
            anchors.top:speedMonitor.bottom
            font.pixelSize: 60
            font.italic: true
            font.bold: true
            text: "D"
            color: showMode ? 'white' : 'black'
            visible : showD
        }

        Connections {
            target: buttonsReceiver
            onButtonsValueChanged: {
                var buttonValue = buttonsReceiver.buttonsValue;

                bState = buttonValue;
                if (buttonValue === "P" || buttonValue === "R" || buttonValue === "N" || buttonValue === "D") {

                    if(showR || showP || showN || showD)
                    {
                        showR=false;
                        showD=false;
                        showN=false;
                        showP=false;
                       }
                }

                if(buttonValue==="R")
                {
                    showR=!showR
                    if(bState!=="D")
                    {
                        showCruise=false;
                    }
                }
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
                }
                else if(buttonValue==="stateChange")
                {
                    showState=!showState
                }
                else if(buttonValue==="sonic")
                {
                    showSonic=!showSonic
                }

                if(bState==="p")
                {
                    speedReceiver.speedValue=0;
                }
            }
        }

    }





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
        }
    }




}
