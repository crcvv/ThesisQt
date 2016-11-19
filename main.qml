import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Controls.Material 2.0


ApplicationWindow {
    id: window
    visible: true
    width: 640
    height: 480
    title: qsTr("Thesis Qt")

    Drawer {
        id: drawer
        width: 0.66 * window.width
        height: window.height

        DrawerContent {
            anchors.fill: parent
        }
    }

    SwipeView {
        id: swipeView
        anchors.fill: parent
        currentIndex: tabBar.currentIndex

        Page {
            ListModel {
                id: nameModel
                ListElement { image: "ionic.png"; name: "Abraham Lincln"; status: "I'm busy" }
                ListElement { image: "ionic.png"; name: "Ronald Reagan";   status: "Away" }
                ListElement { image: "ionic.png"; name: "John F. Kennedy";  status: "At the cinema" }
                ListElement { image: "ionic.png"; name: "Bill Clinton"; status: "Available" }
            }
            Component {
                id: avatarDelegate
                Avatar {
                    image: model.image
                    name: model.name
                    status: model.status
                }
            }

            Rectangle {
                color: "#a2a2a2"
                anchors.fill: parent

                ListView {
                    anchors.fill: parent
                    clip: true
                    model: nameModel
                    delegate: avatarDelegate

                    spacing: 1
                }
            }
        }

        Page {
            Label {
                text: qsTr("Second page")
                anchors.centerIn: parent
            }
        }

        Page {
            x: 0
            y: 0
            Frame {
                id: frame1
                y: 12
                height: 200
                anchors.left: parent.left
                anchors.leftMargin: 10
                anchors.right: parent.right
                anchors.rightMargin: 10

                Label {
                    id: textArea1
                    text: qsTr("This sample application is part of Bachelor Thesis project: \"COMPARISON STUDY BETWEEN DEVELOPING APPLICATION USER INTERFACE USING WEB TECHNOLOGIES VERSUS QT AND QML\".")
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.WordWrap
                    leftPadding: 6
                    anchors.fill: parent
                }

                Rectangle {
                    y: 158
                    height: 40
                    color: "#c3c0c0"
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: 0
                    anchors.left: parent.left
                    anchors.leftMargin: 0
                    anchors.right: parent.right
                    anchors.rightMargin: 0

                    Label {
                        id: textArea2
                        text: qsTr("Oulu University of Applied Sciences, OAMK")
                        leftPadding: 6
                        verticalAlignment: Text.AlignVCenter
                        anchors.fill: parent
                    }
                }

            }

        }
    }

    footer: TabBar {
        id: tabBar
        currentIndex: swipeView.currentIndex
        TabButton {
            text: qsTr("First")
        }
        TabButton {
            text: qsTr("Second")
        }
        TabButton {
            text: qsTr("Third")
        }
    }
}
