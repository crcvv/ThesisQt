import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Controls.Material 2.0

import "../Ionic/buttons"
import "../Ionic/cards"
import "../Ionic/lists"
import "../Ionic/bars"

Page {
    title: "Test"

    Card {
        model: ListModel{
            ListElement{
                text: qsTr("Bla bla, test test.")
            }
        }
    }
}
