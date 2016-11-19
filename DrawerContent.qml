import QtQuick 2.0
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3
import QtQuick.Extras 1.4

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
                source: "ionic.png"
            }
        }

        RowLayout {
            height: 50
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
                    stack.currentIndex = (stack.currentIndex == 0 ? 1 : 0);

                    if (stack.currentIndex == 0)
                        text = "▼";
                    else
                        text = "▲";
                }
            }
        }

        StackLayout {
            id: stack

            Layout.fillHeight: true

            ColumnLayout {
                Layout.fillHeight: false
                Layout.fillWidth: false

                AppMenuItem {
                    icon: "\uf132"
                    text: "Check mail"
                }

                AppMenuItem {
                    icon: "\uf11d"
                    text: "Call Someone"
                }

                AppMenuItem {
                    icon: "\uf212"
                    text: "Friends"
                }

                AppMenuItem {
                    icon: "\uf269"
                    text: "Breaking Bad"
                }

                AppMenuItem {
                    icon: "\uf20c"
                    text: "Music"
                }

                AppMenuItem {
                    icon: "\uf29e"
                    text: "Login"
                }

                Item {
                    Layout.fillHeight: true
                }

            }

            ColumnLayout {
                AppMenuItem {
                    icon: "\uf48b"
                    text: "Add account"
                }

                AppMenuItem {
                    icon: "\uf212"
                    text: "Manage accounts"
                }

                AppMenuItem {
                    icon: "\uf13e"
                    text: "Settings"
                }

                AppMenuItem {
                    icon: "\uf29e"
                    text: "Login"
                }

                Item {
                    Layout.fillHeight: true
                }

            }
        }

    }
}
