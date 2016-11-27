import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Controls.Material 2.0

import "../Ionic/buttons"
import "../Ionic/cards"
import "../Ionic/lists"

import "../Ionic/variables/fontawesome.js" as FontAwesome
import "../Ionic/variables/items.js" as StyleHelper

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
            font.family: "FontAwesome"
            font.pixelSize: StyleHelper.item_icon_font_size
            text: FontAwesome.icons.fa_users
        }
        TabButton {
            font.family: "FontAwesome"
            font.pixelSize: StyleHelper.item_icon_font_size
            text: FontAwesome.icons.fa_camera
        }
        TabButton {
            font.family: "FontAwesome"
            font.pixelSize: StyleHelper.item_icon_font_size
            text: FontAwesome.icons.fa_info_circle
        }
    }
}
