import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Controls.Material 2.0

import "../Ionic/buttons"
import "../Ionic/cards"
import "../Ionic/lists"

Page {
    id: "page_tabs"

    SwipeView {
        id: swipeView
        anchors.fill: parent
        currentIndex: tabBar.currentIndex

        PageContacts {
        }

        PageCamera {
        }

        PageAbout {
        }

        onCurrentIndexChanged: {
            page_tabs.title = currentItem.title
        }

        Component.onCompleted: {
            page_tabs.title = currentItem.title
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
