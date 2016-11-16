import QtQuick 2.0
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3
import QtQuick.Extras 1.4

Label {
    font.pointSize: 20
    font.family: ionicons.name

    bottomPadding: 4
    rightPadding: 4
    leftPadding: 4
    topPadding: 4

    FontLoader { id: ionicons; source: "ionicons.ttf" }
}
