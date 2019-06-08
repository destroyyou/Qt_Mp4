import QtQuick 2.0
import QtQuick.Layouts 1.3

Item {
    width: 500
    height: 500
    visible: true
    //    Image {
    //        id: jpg
    //        anchors.fill: parent
    //        visible: true
    //        fillMode: Image.PreserveAspectFit
    //        source: "qrc:/Pictures/P71218-165636.jpg"
    //    }
    //    ColumnLayout{
    //        anchors.fill: parent
    //        spacing: 20
    //        Rectangle{

    //            color: "red"
    //        }
    //        Rectangle{
    //            color: "red"
    //        }
    //        Rectangle{

    //            color: "red"
    //        }
    //        Rectangle{

    //            color: "red"
    //        }
    //    }
    Loader{
        width: 500
        height: 500
        source: "qrc:/qml/Mainwindow.qml"
        Component.onCompleted:
        console.log("complete");
    }

    Component{
        id:com
        GridLayout{
            anchors.fill: parent
            Rectangle {
                Layout.alignment: Qt.AlignCenter
                color: "red"
                Layout.minimumWidth: 40
                Layout.minimumHeight: 40
            }

            Rectangle {
                Layout.alignment: Qt.AlignRight
                color: "green"
                Layout.minimumHeight: 40
                Layout.minimumWidth: 70
            }

            Rectangle {
                Layout.alignment: Qt.AlignBottom
                Layout.fillHeight: true
                color: "blue"
                Layout.minimumWidth: 70
                Layout.minimumHeight: 40
            }
        }
    }
    //    Column{
    //        spacing: 20
    //        Repeater{
    //            model:
    //                [{text:qsTr("1"),color:"red"},
    //                {text:qsTr("1"),color:"red"},
    //                {text:qsTr("1"),color:"red"},
    //                {text:qsTr("1"),color:"red"},
    //                {text:qsTr("1"),color:"red"}]
    //           Rectangle{
    //               width: 100
    //               height: 50

    //               color: modelData.color
    //               Text {
    //                   anchors.centerIn: parent
    //                   text: qsTr(modelData.text)
    //               }
    //           }

    //        }
    //    }

    //    Mainwindow{

    //    }

}
