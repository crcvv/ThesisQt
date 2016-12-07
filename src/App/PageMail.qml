import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Controls.Material 2.0

import "../Ionic/buttons"
import "../Ionic/cards"
import "../Ionic/lists"
import "../Ionic/bars"

import "../Ionic/variables/fontawesome.js" as FontAwesome

Page {
    title: "Mail"

    ThumbnailListView {
        id: thumbnailListView1
        anchors.rightMargin: 0
        anchors.bottomMargin: 0
        anchors.leftMargin: 0
        anchors.topMargin: 0
        anchors.fill: parent

        model: ListModel {
            ListElement{
                avatar: "qrc:/src/App/images/totoro.png"
                title:"Totoro"
                detail: "Movie night tonight?"
            }

            ListElement{
                avatar: "qrc:/src/App/images/license-to-ill.jpg"
                title:"Bill Doe"
                detail: "Book you recommended"
            }

            ListElement{
                avatar: "qrc:/src/App/images/slimer.jpg"
                title:"Ghostbusters Slimer"
                detail: "Who ya gonna call?"
            }

            ListElement{
                avatar: "qrc:/src/App/images/totoro.png"
                title:"Totoro"
                detail: "Movie night tonight?"
            }
        }
    }

    ButtonDefault {
        text: "Send email"
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0
        anchors.left: parent.left
        anchors.right: parent.right
        class_name: "energized large"
        iconRight: false
        icon: FontAwesome.icons.fa_envelope
    }
}
