import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Controls.Material 2.0

import "../Ionic/buttons"
import "../Ionic/cards"
import "../Ionic/lists"

Page {
    title: "About"

    Card{
        model: ListModel{
            ListElement{
                text: qsTr("This sample application is part of Bachelor Thesis project: \"COMPARISON STUDY BETWEEN DEVELOPING APPLICATION USER INTERFACE USING WEB TECHNOLOGIES VERSUS QT AND QML\".")
            }
        }
        footer: qsTr("Oulu University of Applied Sciences, OAMK")
    }
}
