import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Controls.Material 2.0

import "../Ionic/buttons"
import "../Ionic/cards"
import "../Ionic/lists"

ApplicationWindow {
    id: window
    visible: true
    width: 640
    height: 480
    title: qsTr("Thesis Qt")

    FontLoader{ source: "qrc:/src/Ionic/fonts/fontawesome-webfont.ttf"}

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
            AvatarListView {
                anchors.fill: parent

                model: ListModel {
                    ListElement{
                        avatar: "qrc:/src/App/images/venkman.jpg"
                        title:"Abraham Lincoln"
                        detail: "I'm busy"
                    }
                    ListElement{
                        avatar: "qrc:/src/App/images/spengler.jpg"
                        title:"Ronald Reagan"
                        detail: "Away"
                    }
                    ListElement{
                        avatar: "qrc:/src/App/images/stantz.jpg"
                        title:"John F. Kennedy"
                        detail: "At the cinema"
                    }
                    ListElement{
                        avatar: "qrc:/src/App/images/winston.jpg"
                        title:"Bill Clinton"
                        detail: "Available"
                    }
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
            Card{
                model: ListModel{
                    ListElement{
                        text: qsTr("This sample application is part of Bachelor Thesis project: \"COMPARISON STUDY BETWEEN DEVELOPING APPLICATION USER INTERFACE USING WEB TECHNOLOGIES VERSUS QT AND QML\".")
                    }
                }
                footer: qsTr("Oulu University of Applied Sciences, OAMK")
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
