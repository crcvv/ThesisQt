import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Controls.Material 2.0


Item {
    property string image: "ionic.png"
    property string name: "Firstname Lastname"
    property string status: "status"

    id: avatar

    width: parent.width
    height: 90

    Rectangle {
        id: rectangle1
        anchors.bottomMargin: 0
        anchors.topMargin: 0
        anchors.fill: parent

        //border.width: 1
        //border.color: "#000000"

        Image {
            width: 70
            height: 70
            anchors.left: parent.left
            anchors.leftMargin: 5
            anchors.top: parent.top
            anchors.topMargin: 10
            source: avatar.image
        }

        Text {
            text: avatar.name;
            anchors.top: parent.top
            anchors.topMargin: 20
            anchors.left: parent.left
            anchors.leftMargin: 80
            font.pixelSize: 16
        }
        Text {
            color: "#666666"
            text: avatar.status;
            anchors.top: parent.top
            anchors.topMargin: 45
            anchors.left: parent.left
            anchors.leftMargin: 80
            font.pixelSize: 14
        }
    }
}
