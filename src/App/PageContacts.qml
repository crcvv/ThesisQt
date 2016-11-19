import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Controls.Material 2.0

import "../Ionic/buttons"
import "../Ionic/cards"
import "../Ionic/lists"

Page {
    AvatarListView {
        anchors.fill: parent

        onItemClicked: {
            stack.push(Qt.createComponent("PageContact.qml"), { "item": item })
        }
        
        model: ListModel {
            ListElement{
                avatar: "qrc:/src/App/images/venkman.jpg"
                title:"Abraham Lincoln"
                detail: "I'm busy"
            }
            ListElement{
                avatar: "qrc:/src/App/images/spengler.jpg"
                title:"Ronald Reagan"
                detail: "Away"
            }
            ListElement{
                avatar: "qrc:/src/App/images/stantz.jpg"
                title:"John F. Kennedy"
                detail: "At the cinema"
            }
            ListElement{
                avatar: "qrc:/src/App/images/winston.jpg"
                title:"Bill Clinton"
                detail: "Available"
            }
        }
    }
}
