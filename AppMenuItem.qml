import QtQuick 2.0
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3
import QtQuick.Extras 1.4

Row {
    property string icon
    property string text

    width: 200
    height: 400
    
    IonIcon {
        text: parent.icon
    }
    
    Label {
        text: parent.text
        anchors.verticalCenter: parent.verticalCenter
        verticalAlignment: Text.AlignTop
    }
}
