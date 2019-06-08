import QtQuick 2.0
import QtQuick.Controls 2.5
Item {

    Rectangle{
        width: 500
        height: 500
        visible: true
        color: "steelblue"
        radius:100
        antialiasing: true
        border.color: "black"
        border.width: 2
        //        property alias ali:color
        //        gradient: Gradient{
        //            GradientStop { position: 0.0; color: "red" }
        //            GradientStop { position: 0.2; color: "yellow" }
        //            GradientStop { position: 0.5; color: "blue" }
        //            GradientStop { position: 1.0; color: "green" }
        //        }
        Text {
            id:tex
            width: 20
            height: 10
            anchors.centerIn: parent
            text: mousearea.pressedButtons & Qt.LeftButton ? "Left":"Right";
            color: mousearea.pressedButtons & Qt.LeftButton ? "white" : "black"
//            font:Font{
//                bold:true
//                pixelSize: 10
//            }

        }
        MouseArea{
            id:mousearea
            anchors.fill: parent
            acceptedButtons: Qt.LeftButton | Qt.RightButton
            onClicked:
            {
                add();
                console.log(mouse.button)
                if (mouse.button === Qt.RightButton)
                {
                    parent.color = 'blue';
                    //                    tex.text = "Left";
                    //                    tex.color = "white";
                }
                else
                {
                    parent.color = 'red';
                    //                    tex.text = "Right";
                    //                    tex.color = "black";
                }

            }
        }

    }
    function add()
    {
    console.log("asd")
    }
}
