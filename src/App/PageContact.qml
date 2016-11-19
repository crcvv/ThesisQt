import QtQuick 2.0
import QtQuick.Controls 2.0

import "../Ionic/variables/fontawesome.js" as FontAwesome
import "../Ionic/lists"

Page {
    property variant item: {
        avatar: "qrc:/src/App/images/venkman.jpg"
        title:"Abraham Lincoln"
        detail: "I'm busy"
    }

    id: page

    IconListView {
        anchors.fill: parent

        header: Image {
            width: parent.width
            height: sourceSize.height / sourceSize.height * parent.width

            source: page.item.avatar

            Label {
                text: page.item.title
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 20
                anchors.left: parent.left
                anchors.leftMargin: 10
                font.bold: true
                font.pointSize: 18
                z: 2
                color: "#FFFFFF"
            }
        }

        model: [
            {
                text: "Status",
                note: page.item.detail
            },
            {
                text: "Mute",
                rightIcon: FontAwesome.icons.fa_bell
            },
            {
                text: "Phone number",
                rightIcon: FontAwesome.icons.fa_phone
            },
            {
                text: "WiFi password",
                rightIcon: FontAwesome.icons.fa_signal
            }
        ]
    }
}
