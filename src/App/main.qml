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
        width: 0.8 * window.width
        height: window.height

        DrawerContent {
            anchors.fill: parent
        }
    }

    StackView {
        id: stack

        anchors.fill: parent

        initialItem: PageTabs {}
    }

    onClosing: {
        if (stack.depth > 1) {
            stack.pop()
            close.accepted = false
        }
    }
}
