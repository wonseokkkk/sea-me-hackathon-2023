import QtQuick 2.7
import QtQuick.Controls 2.2
import com.seame.Speed 1.0
import com.seame.Buttons 1.0
import com.seame.RPM 1.0
<<<<<<< HEAD
import Qt.labs.folderlistmodel 2.0
=======
>>>>>>> 232b46fc3361de41432b73acd63e60a9c0134d96

ApplicationWindow {
    visible: true
    width: 1280
    height: 960
    title: qsTr("Controller")

    property string clickedButton: "P"

    Speed {
        id: speed
    }

    Buttons {
        id: buttons
    }

    RPM {
        id: rpm
    }

<<<<<<< HEAD
    Image
    {
        id : controlGrey
        source : "image/controlBackGrey.png"
        anchors.fill: parent

    }

    Slider {
        id: speedBar
        width: 500
        height: 219
        rotation: 270
        anchors.verticalCenterOffset: -101
=======
    Slider {
        id: speedBar
        width: 631
        height: 219
        rotation: 270
        anchors.verticalCenterOffset: -26
>>>>>>> 232b46fc3361de41432b73acd63e60a9c0134d96
        anchors.horizontalCenterOffset: -236
        from: 0
        to: 260
        value: 0
<<<<<<< HEAD
        property var cruiseValue : 0

        onValueChanged: {
            if(clickedButton==="P")
            {
                speed.adjustSpeed((0))
                speedBar.value=0
            }

            if(!buttonCruise.isToggled)
            {



                if(clickedButton==="N")
                {
                    speedBar.value=speedBar.cruiseValue
                }
                else
                {
                    speed.adjustSpeed(speedBar.value);
                    cruiseValue=speedBar.value
                }

            }
            else
            {
                speedBar.value=speedBar.cruiseValue
            }



        }

        anchors.centerIn: parent




=======

        onValueChanged: {
            speed.adjustSpeed(speedBar.value);
        }

        anchors.centerIn: parent
>>>>>>> 232b46fc3361de41432b73acd63e60a9c0134d96
    }

    Slider {
        id: rpmBar
<<<<<<< HEAD
        width: 500
        height: 219
        rotation: 270
        anchors.verticalCenterOffset: -100
        anchors.horizontalCenterOffset: 231
        from: 0
        to: 6000
=======
        width: 631
        height: 219
        rotation: 270
        anchors.verticalCenterOffset: -26
        anchors.horizontalCenterOffset: 231
        from: 0
        to: 8000
>>>>>>> 232b46fc3361de41432b73acd63e60a9c0134d96
        value: 0

        onValueChanged: {
            rpm.adjustRPM(rpmBar.value);
        }

        anchors.centerIn: parent
    }

    Column {
        id: orderButtons
<<<<<<< HEAD
        anchors.verticalCenterOffset: -81
        anchors.horizontalCenterOffset: 0
=======
>>>>>>> 232b46fc3361de41432b73acd63e60a9c0134d96
        anchors.centerIn: parent
        spacing: 10

        Button {
            id: buttonP
            text: "P"
            onClicked: {
                buttons.adjustButtons("P");
                clickedButton = "P";
<<<<<<< HEAD
                buttonCruise.isToggled=false
                source: buttonCruise.isToggled ? "image/onCruise.png" : "image/offCruise.png" // Use the state here
                speed.adjustSpeed((0))
                speedBar.value=0
=======
>>>>>>> 232b46fc3361de41432b73acd63e60a9c0134d96
            }
            width: 100
            height: 100
            font.pixelSize: 40
            font.bold: true
            background: Rectangle {
                gradient: Gradient {
                    GradientStop { position: 0.0; color: "black" }
                    GradientStop { position: 1.0; color: "gray" }
                }
            }
            contentItem: Text {
                text: buttonP.text
                color: clickedButton === "P" ? "red" : "white"
                font.pointSize: 40
                font.bold: true
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }
        }

        Button {
            id: buttonR
            text: "R"
            onClicked: {
                buttons.adjustButtons("R");
                clickedButton = "R";
<<<<<<< HEAD
                buttonCruise.isToggled=false
=======
>>>>>>> 232b46fc3361de41432b73acd63e60a9c0134d96
            }
            width: 100
            height: 100
            font.pixelSize: 40
            font.bold: true
            background: Rectangle {
                gradient: Gradient {
                    GradientStop { position: 0.0; color: "black" }
                    GradientStop { position: 1.0; color: "gray" }
                }
            }
            contentItem: Text {
                text: buttonR.text
                color: clickedButton === "R" ? "red" : "white"
                font.pointSize: 40
                font.bold: true
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }
        }

        Button {
            id: buttonN
            text: "N"
            onClicked: {
                buttons.adjustButtons("N");
                clickedButton = "N";
<<<<<<< HEAD
                buttonCruise.isToggled=false
=======
>>>>>>> 232b46fc3361de41432b73acd63e60a9c0134d96
            }
            width: 100
            height: 100
            font.pixelSize: 40
            font.bold: true
            background: Rectangle {
                gradient: Gradient {
                    GradientStop { position: 0.0; color: "black" }
                    GradientStop { position: 1.0; color: "gray" }
                }
            }
            contentItem: Text {
                text: buttonN.text
                color: clickedButton === "N" ? "red" : "white"
                font.bold: true
                font.pointSize: 40
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }
        }

        Button {
            id: buttonD
            text: "D"
            onClicked: {
                buttons.adjustButtons("D");
                clickedButton = "D";
            }
            width: 100
            height: 100
            font.pixelSize: 40
            font.bold: true
            background: Rectangle {
                gradient: Gradient {
                    GradientStop { position: 0.0; color: "black" }
                    GradientStop { position: 1.0; color: "gray" }
                }
            }
            contentItem: Text {
                text: buttonD.text
                color: clickedButton === "D" ? "red" : "white"
                font.bold: true
                font.pointSize: 40
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }
        }
    }
    Button {
        id: buttonWeather
        property bool isToggled: false
<<<<<<< HEAD
        x: 372
        y: 691 // Add this line
=======
        x: 354
        y: 826 // Add this line
>>>>>>> 232b46fc3361de41432b73acd63e60a9c0134d96

        onClicked: {
            buttons.adjustButtons("Weather");
            isToggled = !isToggled; // This line toggles the state
        }
        width: 100
        height: 100

        contentItem: Image {
            id: weatherImage
            width: 100
            height: 100
            source: buttonWeather.isToggled ? "image/weather1.png" : "image/weather.png" // Use the state here
        }

        background: Rectangle {
            color: "transparent"
        }
    }
    Button {
        id: buttonWarn
        property bool isToggled: false
        x: 590
<<<<<<< HEAD
        y: 681 // Add this line
=======
        y: 826 // Add this line
>>>>>>> 232b46fc3361de41432b73acd63e60a9c0134d96

        onClicked: {
            buttons.adjustButtons("Warn");
            isToggled = !isToggled; // This line toggles the state
        }
        width: 100
        height: 100

        contentItem: Image {
            id: warnImage
            width: 100
            height: 100
            source: buttonWarn.isToggled ? "image/warn.png" : "image/warn1.png" // Use the state here
        }

        background: Rectangle {
            color: "transparent"
        }
    }
    Button {
        id: buttonLight
        property bool isToggled: false
<<<<<<< HEAD
        x: 772
        y: 671 // Add this line
=======
        x: 771
        y: 816 // Add this line
>>>>>>> 232b46fc3361de41432b73acd63e60a9c0134d96

        onClicked: {
            buttons.adjustButtons("Light");
            isToggled = !isToggled; // This line toggles the state
        }
        width: 200
        height: 120

        contentItem: Image {
            id: starImage
<<<<<<< HEAD
            width: 90
            height: 90
            source: buttonLight.isToggled ? "image/on.png" : "image/off.png" // Use the state here
        }

        background: Rectangle {
            color: "transparent"
        }
    }


    Button {
            id: ultrasonic
            property bool isToggled: false
            x: 109
            y: 154 // Add this line

            onClicked: {
                buttons.adjustButtons("sonic");
                isToggled = !isToggled; // This line toggles the state
            }
            width: 200
            height: 120

            contentItem: Image {
                id: ultra
                width: 100
                height: 100
                source: ultrasonic.isToggled ? "image/ultra.png" : "image/untra.png" // Use the state here
            }

            background: Rectangle {
                color: "transparent"
            }
        }

        Timer {
            id: fileReadTimer
            interval: 2000 // 5초마다 파일을 읽습니다.
            running: true
            repeat: true

            onTriggered: {
                var file = new XMLHttpRequest();
                file.open("GET", "file:///home/sea/data.txt");
                file.onreadystatechange = function() {
                    if (file.readyState === XMLHttpRequest.DONE && file.status === 200) {
                        var lines = file.responseText.split('\n');
                        var currentLine = 0;
                        for (var i = 0; i < lines.length; i++) {
                            var value = parseInt(lines[i]);
                            if (!isNaN(value) && value <= 50) {
                                ultrasonic.clicked();
                                break;
                            }
                        }
                    }
                }
                file.send();
            }
        }


    Button {
        id: buttonCruise
        property bool isToggled: false
        x: 950
        y: 680 // Add this line

        onClicked: {
            if(clickedButton==="D" && !buttonModeChange.isToggled)
           {
                buttons.adjustButtons("Cruise");
                isToggled = !isToggled; // This line toggles the state
            }

        }

        width: 200
        height: 120

        contentItem: Image {
            id: cruiseImage
            width: 100
            height: 100
            source: buttonCruise.isToggled ? "image/onCruise.png" : "image/offCruise.png" // Use the state here
        }

        background: Rectangle {
            color: "transparent"
        }
    }

    Button {
        id: buttonModeChange
        property bool isToggled: false
        x: 100
        y: 680 // Add this line

        onClicked: {

            buttons.adjustButtons("modeChange");
            isToggled = !isToggled; // This line toggles the state
            buttonCruise.isToggled=false


        }

        width: 200
        height: 120

        contentItem: Image {
            id: modeImage
            width: 100
            height: 100
            source: buttonModeChange.isToggled ? "image/1217.png" : "image/1217r.png" // Use the state here
=======
            width: 100
            height: 100
            source: buttonLight.isToggled ? "image/on.png" : "image/off.png" // Use the state here
>>>>>>> 232b46fc3361de41432b73acd63e60a9c0134d96
        }

        background: Rectangle {
            color: "transparent"
        }
    }

<<<<<<< HEAD

    Button {
        id: autodrive
        property bool isToggled: false
        x: 1495
        y: 680 // Add this line

        onClicked: {
            buttons.adjustButtons("Autodrive");
            isToggled = !isToggled; // This line toggles the state
        }
        width: 200
        height: 120

        contentItem: Image {
            id: autodrivveImage

            width: 100
            height: 100
            source: autodrive.isToggled ? "image/Autodrive_on.png" : "image/Autodrive_off.png"
        }
        background: Rectangle {
            color: "transparent"
        }
    }



    Button {
        id: buttonStateChange
        property bool isToggled: false
        x: 1185
        y: 680 // Add this line

        onClicked: {

            buttons.adjustButtons("stateChange");
            isToggled = !isToggled; // This line toggles the state



        }

        width: 200
        height: 120

        contentItem: Image {
            id: autoImage
            x: 100
            y: 150
            width: 100
            height: 100
            source: buttonStateChange.isToggled ? "image/bu1.png" : "image/bu2.png" // Use the state here
        }

        background: Rectangle {
            color: "transparent"
        }
    }



    TextEdit {
        id: textEdit
        x: 128
        y: 59
        width: 80
        height: 20
        font.pixelSize: 12
    }
}


=======
    Text {
        id: text1
        x: 350
        y: 91
        text: qsTr("Speed")
        font.bold: true
        font.pixelSize: 36
    }

    Text {
        id: text2
        x: 831
        y: 91
        text: qsTr("RPM")
        font.bold: true
        font.pixelSize: 36
    }
}
>>>>>>> 232b46fc3361de41432b73acd63e60a9c0134d96
