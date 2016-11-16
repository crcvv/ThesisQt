import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Controls.Material 2.0


ApplicationWindow {
    id: window
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

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

        Page1 {
        }

        Page {
            Column {
                anchors.centerIn: parent

                RadioButton { text: qsTr("Small") }
                RadioButton { text: qsTr("Medium");  checked: true }
                RadioButton { text: qsTr("Large") }
            }
        }

        Page {
            Label {
                text: qsTr("Second page")
                anchors.centerIn: parent
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
