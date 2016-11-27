import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Controls.Material 2.0
import QtQuick.Layouts 1.1
import QtMultimedia 5.4

import "../Ionic/buttons"
import "../Ionic/cards"
import "../Ionic/lists"

import "../Ionic/variables/fontawesome.js" as FontAwesome

Page {
    id: page1
    title: "Camera"

    onFocusChanged: {
        // Called when tabs change

        if(focus && visible)
            camera.start()
        else
            camera.stop()
    }

    onVisibleChanged: {
        // Called when page containing tabs is replaced with another page

        if(focus && visible)
            camera.start()
        else
            camera.stop()
    }

    Camera {
        id: camera

        imageCapture {
            onImageCaptured: {
                // TODO: Do anything with "preview" ...
            }
        }
    }

    GridLayout {
        anchors.rightMargin: 10
        anchors.leftMargin: 10
        anchors.topMargin: 10
        columnSpacing: 10
        rowSpacing: 10
        anchors.bottomMargin: 10
        anchors.fill: parent
        rows: 2
        columns: 2

        VideoOutput {
            autoOrientation: true
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.columnSpan: 2
            source: camera
            focus: visible
        }

        ButtonDefault {
            text: "Select picture"
            height: 50
            Layout.fillWidth: true
            icon: FontAwesome.icons.fa_picture_o
            class_name: "royal"
        }

        ButtonDefault {
            text: "Take picture"
            height: 50
            Layout.fillWidth: true
            icon: FontAwesome.icons.fa_camera
            class_name: "royal"
        }
    }
}
