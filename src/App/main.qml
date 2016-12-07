import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Controls.Material 2.0

import "../Ionic/bars"
import "../Ionic/buttons"
import "../Ionic/cards"
import "../Ionic/lists"

import "../Ionic/variables/fontawesome.js" as FontAwesome

ApplicationWindow {
    id: window
    visible: true
    width: 640
    height: 480
    title: qsTr("Thesis Qt")

    property string pageTitle: ""

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

        property var pages: {
            "tabs": Qt.createComponent("PageTabs.qml"),
            "mail": Qt.createComponent("PageMail.qml"),
            "contact": Qt.createComponent("PageContact.qml"),
            "friends": Qt.createComponent("PageContacts.qml")
        }

        initialItem: pages.tabs

        function updateAppTitle() {
            if (currentItem)
                window.pageTitle = currentItem.title
        }

        onCurrentItemChanged: {
            updateAppTitle()

            if (currentItem)
                currentItem.titleChanged.connect(updateAppTitle)
        }
    }

    onClosing: {
        if (stack.depth > 1) {
            stack.pop()
            close.accepted = false
        }
    }

    header: Bar {
        class_name: "royal"
        title: window.pageTitle

        leftComponent: ButtonDefault {
            class_name: "royal"
            icon: FontAwesome.icons.fa_bars

            onClicked: {
                if (drawer.opened())
                    drawer.close()
                else
                    drawer.open()
            }
        }
    }
}
