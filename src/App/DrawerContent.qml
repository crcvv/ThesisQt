import QtQuick 2.0
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3
import QtQuick.Extras 1.4

import "../Ionic/variables/fontawesome.js" as FontAwesome
import "../Ionic/lists"

Item {

    ColumnLayout {
        id: column1
        anchors.fill: parent

        Item {
            width: 110
            height: 110
            Layout.minimumHeight: 110
            Layout.minimumWidth: 110
            Image {
                id: image1
                anchors.rightMargin: 5
                anchors.leftMargin: 5
                anchors.bottomMargin: 5
                anchors.topMargin: 5
                anchors.fill: parent
                source: "qrc:/src/App/images/ionic.png"
            }
        }

        RowLayout {
            height: 50
            Layout.minimumWidth: 0
            Layout.fillWidth: true
            spacing: 0

            anchors.left: parent.left
            anchors.leftMargin: 0
            anchors.right: parent.right
            anchors.rightMargin: 0

            Label {
                id: username
                text: qsTr("Username")
                rightPadding: 1
                leftPadding: 10
                font.bold: true
            }

            Label {
                id: email
                text: qsTr("email@email.com")
                Layout.minimumWidth: 0
                leftPadding: 10
                font.bold: false
            }

            Item {
                Layout.fillWidth: true
            }

            ToolButton {
                id: switchButton
                text: "▼"
                Layout.alignment: Qt.AlignRight | Qt.AlignVCenter

                Layout.preferredHeight: 50
                Layout.preferredWidth: 50

                onClicked: {
                    drawerStack.currentIndex = (drawerStack.currentIndex == 0 ? 1 : 0);

                    if (drawerStack.currentIndex == 0)
                        text = "▼";
                    else
                        text = "▲";
                }
            }
        }

        StackLayout {
            Layout.fillHeight: true

            id: "drawerStack"

            IconListView {
                anchors.fill: parent

                model: [{
                    page: "mail",
                    text: "Check mail",
                    leftIcon: FontAwesome.icons.fa_envelope,
                },
                {
                    page: "tabs",
                    text: "Call Someone",
                    leftIcon: FontAwesome.icons.fa_comment,
                    rightIcon: FontAwesome.icons.fa_phone
                },
                {
                    page: "tabs",
                    text: "Friends",
                    leftIcon: FontAwesome.icons.fa_users,
                    badge: "0",
                    badge_class_name: "energized"
                },
                {
                    text: "Activities",
                    my_divider: true
                },
                {
                    text: "Breaking Bad",
                    leftIcon: FontAwesome.icons.fa_glass,
                    note: "Blue, yellow"
                },
                {
                    text: "Music",
                    leftIcon: FontAwesome.icons.fa_music,
                    note: "Lalala"
                },
                {
                    text: "Login",
                    leftIcon: FontAwesome.icons.fa_sign_in
                }]

                onItemClicked: {
                    if (item.page) {
                        // Pop all the way to root
                        stack.pop(null)

                        // Replace root
                        stack.replace(stack.pages[item.page])
                    }
                    drawer.close()
                }
            }

            IconListView {
                hasDivider: true
                anchors.fill: parent
                model: [{
                    text: "Add account",
                    leftIcon: FontAwesome.icons.fa_plus,
                },
                {
                    text: "Manage accounts",
                    leftIcon: FontAwesome.icons.fa_users,
                },
                {
                    text: "Settings",
                    leftIcon: FontAwesome.icons.fa_cog,
                },
                {
                    text: "Login",
                    leftIcon: FontAwesome.icons.fa_sign_in,
                }]
            }
        }
    }
}
