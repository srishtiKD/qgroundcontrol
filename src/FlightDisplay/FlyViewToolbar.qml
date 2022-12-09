import QtQuick          2.12
import QtQuick.Controls 2.4
import QtQuick.Dialogs  1.3
import QtQuick.Layouts  1.11
import QtQuick.Window   2.11

import QGroundControl               1.0
import QGroundControl.Palette       1.0
import QGroundControl.Controls      1.0
import QGroundControl.ScreenTools   1.0
import QGroundControl.FlightDisplay 1.0
import QGroundControl.FlightMap     1.0

// new
import QGroundControl.MultiVehicleManager   1.0
import QGroundControl.Controllers           1.0
import QtQuick.Controls.Styles 1.4




Item {

    id: flyViewToolbar
    anchors.leftMargin: mainWindow.width*0.155
    anchors.topMargin:mainWindow.height*0.25


    // Right ToolBar For Account Settings
   Rectangle{
    id: rightPanel
    width: mainWindow.width*0.1
    height: mainWindow.height*0.5
    color: "transparent" //qgcPal.toolbarBackground
    anchors.rightMargin: ScreenTools.defaultFontPixelWidth * 1.2
    //anchors.leftMargin: 400//mainWindow.width*0.1
    //anchors.topMargin: 200//mainWindow.height*0.1



    ColumnLayout{
            id:   rightToolbar
            width: mainWindow.width*0.05
            height: mainWindow.height*0.07
            //spacing: 15
            //anchors.fill: parent
            Layout.fillHeight: parent.height
            Layout.fillWidth: parent.width



            // button 1
            Button {
                id: controlBt1
                text: qsTr("Plan")
                font.pixelSize: 15
                anchors.top: parent.top
                onClicked: mainWindow.showPlanView()

                contentItem: Text {
                    text: controlBt1.text
                    font: controlBt1.font
                    opacity: enabled ? 1.0 : 0.3
                    color: controlBt1.down ? "#373737": "#ffffff"
                    horizontalAlignment:Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    elide: Text.ElideRight
                }

                background: Rectangle {
                    implicitWidth: mainWindow.width*0.04
                    implicitHeight: mainWindow.height*0.05
                    opacity: enabled ? 1 : 0.3
                    border.color: controlBt1.down ? "#A9A9A9" : "#373737"
                    border.width: 1
                    radius: mainWindow.width*0.08
                    color:qgcPal.toolbarBackground //"transparent"


                }
            }


            // button 2
            Button {
                id: controlBt2
                text: qsTr("Takeoff")
                font.pixelSize: 15
                anchors.top: controlBt1.bottom
                anchors.topMargin: ScreenTools.defaultFontPixelWidth * 0.5

                contentItem: Text {
                    text: controlBt2.text
                    font: controlBt2.font
                    opacity: enabled ? 1.0 : 0.3
                    color: controlBt2.down ? "#373737": "#ffffff"
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    elide: Text.ElideRight
                }

                background: Rectangle {
                    implicitWidth: mainWindow.width*0.04
                    implicitHeight: mainWindow.height*0.05
                    opacity: enabled ? 1 : 0.3
                    border.color: controlBt2.down ? "#A9A9A9" : "#373737"
                    border.width: 1
                    radius: mainWindow.width*0.08
                    color:qgcPal.toolbarBackground//"transparent"
                }
            }


            // button 3
            Button {
                id: controlBt3
                text: qsTr("Return")
                font.pixelSize: 15
                anchors.top: controlBt2.bottom
                anchors.topMargin: ScreenTools.defaultFontPixelWidth * 0.5
                //icon.source:            "/res/gear-black.svg"

                contentItem: Text {
                    text: controlBt3.text
                    font: controlBt3.font
                    opacity: enabled ? 1.0 : 0.3
                    color: controlBt3.down ? "#373737": "#ffffff"
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    elide: Text.ElideRight
                }

                background: Rectangle {
                    implicitWidth:  mainWindow.width*0.04
                    implicitHeight: mainWindow.height*0.05
                    opacity: enabled ? 1 : 0.3
                    border.color: controlBt3.down ? "#A9A9A9" : "#373737"
                    border.width: 1
                    radius: mainWindow.width*0.03
                    color: qgcPal.toolbarBackground //"transparent"
                }
            }




    } // ColumnLayout



    } //Rectangle






} // Item

