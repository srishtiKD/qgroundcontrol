import QtQuick          2.12
import QtQuick.Controls 2.4
import QtQuick.Layouts  1.11
import QtQuick.Dialogs  1.3

import QGroundControl                       1.0
import QGroundControl.Controls              1.0
import QGroundControl.Palette               1.0
import QGroundControl.MultiVehicleManager   1.0
import QGroundControl.ScreenTools           1.0
import QGroundControl.Controllers           1.0



//function showToolSelectDialog() {
//    if (!mainWindow.preventViewSwitch()) {
//        //toolSelectDialogComponent.createObject(mainWindow).open()
//         myToolBarMenuid.createObject(mainWindow).open()
//    }
//}

Item {

    id: myToolBarMenu

    function showToolSelectDialog() {
        if (!mainWindow.preventViewSwitch()) {
            //toolSelectDialogComponent.createObject(mainWindow).open()
             myToolBarMenuid.currentToolbar.open()
        }
    }

    width: 500
    height: 500
    Text {
        id: sometext
        text: qsTr("blaaaaaaaaaaaaaaah")
    }



/*
    QGCPalette { id: qgcPal }


    QGCPopupDialog {
        id:         toolSelectDialog
        title:      qsTr("Select Tool")
        buttons:    StandardButton.Close // old
        //Layout.alignment: Qt.AlignLeft //////////
        property real _toolButtonHeight:    ScreenTools.defaultFontPixelHeight * 3
        property real _margins:  10//ScreenTools.defaultFontPixelWidth

        ColumnLayout {
            width:  innerLayout.width + (toolSelectDialog._margins * 2)
            height: innerLayout.height + (toolSelectDialog._margins * 2)



            ColumnLayout {
                id:             innerLayout
                Layout.margins: toolSelectDialog._margins
                spacing:        ScreenTools.defaultFontPixelWidth




                SubMenuButton {
                    id:                 setupButton
                    height:             toolSelectDialog._toolButtonHeight
                    Layout.fillWidth:   true
                    text:               qsTr("Vehicle Setup")
                    imageColor:         qgcPal.text
                    imageResource:      "/qmlimages/Gears.svg"
                    Layout.alignment: Qt.AlignLeft ////////

                    onClicked: {
                        if (!mainWindow.preventViewSwitch()) {
                            toolSelectDialog.close()
                            mainWindow.showSetupTool()
                        }
                    }
                }

                SubMenuButton {
                    id:                 analyzeButton
                    height:             toolSelectDialog._toolButtonHeight
                    Layout.fillWidth:   true
                    text:               qsTr("Analyze Tools")
                    imageResource:      "/qmlimages/Analyze.svg"
                    imageColor:         qgcPal.text
                    visible:            QGroundControl.corePlugin.showAdvancedUI
                    onClicked: {
                        if (!mainWindow.preventViewSwitch()) {
                            toolSelectDialog.close()
                            mainWindow.showAnalyzeTool()
                        }
                    }
                }

                SubMenuButton {
                    id:                 settingsButton
                    height:             toolSelectDialog._toolButtonHeight
                    Layout.fillWidth:   true
                    text:               qsTr("Application Settings")
                    imageResource:      "/res/QGCLogoFull"
                    imageColor:         "transparent"
                    visible:            !QGroundControl.corePlugin.options.combineSettingsAndSetup
                    onClicked: {
                        if (!mainWindow.preventViewSwitch()) {
                            toolSelectDialog.close()
                            mainWindow.showSettingsTool()
                        }
                    }
                }

                ColumnLayout {
                    width:                  innerLayout.width
                    spacing:                0
                    Layout.alignment:       Qt.AlignHCenter


                    QGCLabel {
                        id:                     versionLabel
                        //text:                   qsTr("%1 Version").arg(QGroundControl.appName) //old
                        text: qsTr("%1").arg(QGroundControl.appName) // new

                        font.pointSize:         ScreenTools.smallFontPointSize
                        wrapMode:               QGCLabel.WordWrap
                        Layout.maximumWidth:    parent.width
                        Layout.alignment:       Qt.AlignHCenter // OLD

                    }

                    QGCLabel {
                        text:                   QGroundControl.qgcVersion
                        font.pointSize:         ScreenTools.smallFontPointSize
                        wrapMode:               QGCLabel.WrapAnywhere
                        Layout.maximumWidth:    parent.width
                       // Layout.alignment:       Qt.AlignHCenter // old
                        Layout.alignment: Qt.AlignLeft

                        QGCMouseArea {
                            id:                 easterEggMouseArea
                            anchors.topMargin:  -versionLabel.height
                            anchors.fill:       parent

                            onClicked: {
                                if (mouse.modifiers & Qt.ControlModifier) {
                                    QGroundControl.corePlugin.showTouchAreas = !QGroundControl.corePlugin.showTouchAreas
                                } else if (mouse.modifiers & Qt.ShiftModifier) {
                                    if(!QGroundControl.corePlugin.showAdvancedUI) {
                                        advancedModeConfirmation.open()
                                    } else {
                                        QGroundControl.corePlugin.showAdvancedUI = false
                                    }
                                }
                            }

                            MessageDialog {
                                id:                 advancedModeConfirmation
                                title:              qsTr("Advanced Mode")
                                text:               QGroundControl.corePlugin.showAdvancedUIMessage
                                standardButtons:    StandardButton.Yes | StandardButton.No
                                onYes: {
                                    QGroundControl.corePlugin.showAdvancedUI = true
                                    advancedModeConfirmation.close()
                                }
                            }
                        }
                    }
                }
            }
        }
    }


//    function showToolSelectDialog() {
//        if (!mainWindow.preventViewSwitch()) {
//            //toolSelectDialogComponent.createObject(mainWindow).open()
//             myToolBarMenuid.createObject(mainWindow).open()
//        }
//    }

*/

}  //item
