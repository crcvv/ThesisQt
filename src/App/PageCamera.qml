import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Controls.Material 2.0
import QtQuick.Layouts 1.3
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
                imagePreview.source = preview

                cameraViews.currentIndex = 1
            }
        }
    }

    StackLayout {
        anchors.fill: parent
        anchors.rightMargin: 10
        anchors.leftMargin: 10
        anchors.topMargin: 10
        anchors.bottomMargin: 10

        id: cameraViews

        ColumnLayout {
            spacing: 10
            anchors.fill: parent

            VideoOutput {
                autoOrientation: true
                Layout.fillHeight: true
                Layout.fillWidth: true
                source: camera
                focus: visible
            }

            ButtonDefault {
                text: "Take picture"
                Layout.fillWidth: true
                icon: FontAwesome.icons.fa_camera
                class_name: "royal large"
                iconRight: false
                onClicked: camera.imageCapture.capture()
            }
        }

        ColumnLayout {
            spacing: 10
            anchors.fill: parent

            Image {
                id: "imagePreview"
                Layout.fillHeight: true
                Layout.fillWidth: true
            }

            ButtonDefault {
                text: "Discard"
                Layout.fillWidth: true
                icon: FontAwesome.icons.fa_times
                class_name: "royal large"
                iconRight: false
                onClicked: {
                    cameraViews.currentIndex = 0
                }
            }
        }
    }
}
