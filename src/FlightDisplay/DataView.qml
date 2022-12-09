import QtQuick          2.12
import QtQuick.Controls         2.4
import QtQuick.Dialogs          1.3
import QtQuick.Layouts          1.12

import QtLocation               5.3
import QtPositioning            5.3
import QtQuick.Window           2.2
import QtQml.Models             2.1

import QGroundControl               1.0
import QGroundControl.Airspace      1.0
import QGroundControl.Airmap        1.0
import QGroundControl.Controllers   1.0
import QGroundControl.Controls      1.0
import QGroundControl.FactSystem    1.0
import QGroundControl.FlightDisplay 1.0
import QGroundControl.FlightMap     1.0
import QGroundControl.Palette       1.0
import QGroundControl.ScreenTools   1.0
import QGroundControl.Vehicle       1.0


import QGroundControl.MultiVehicleManager   1.0


Item {

    id: dataView
    anchors.left: parent.left
    anchors.top: parent.top

    // Right ToolBar For Account Settings
Rectangle{
    id: leftPanel
    width: mainWindow.width*0.1
    height: mainWindow.height*1
    color: "transparent"//qgcPal. cn
    anchors.top:            parent.top
    //anchors.bottom:         parent.bottom
    anchors.left:         parent.left
    anchors.leftMargin: ScreenTools.defaultFontPixelWidth * 0.5
    gradient: Gradient {
        orientation: Gradient.Vertical
        GradientStop { position: 0;                                     color: "gray" }    //gradient start color
        GradientStop { position: currentButton.x + currentButton.width; color: _mainStatusBGColor }
        GradientStop { position: 1;                                     color: _root.color }
    }


    ColumnLayout{
            id:                     rightToolbar
            //anchors.top:            parent.top
            //anchors.bottom:         parent.bottom
            //anchors.right:          parent.right
            width: mainWindow.width*0.1
            height: mainWindow.height*0.5
            spacing: 0
            //anchors.fill: parent
            Layout.fillHeight: parent.height
            Layout.fillWidth: parent.width


/*
            // button 1
            Button {
                id: controlBt1
                text: qsTr("Plan")
                font.pixelSize: 18
                anchors.top: parent.top
                MouseArea {
                                        anchors.fill: parent
                onClicked:              mainWindow.showPlanView() //accountToolbar.popup() //mainWindow.showToolSelectDialog()
                           }
                 //onClicked: mainWindow.showPlanView()

                contentItem: Text {
                    text: controlBt1.text
                    font: controlBt1.font
                    opacity: enabled ? 1.0 : 0.3
                    color: controlBt1.down ? "#000000" : "#373737"
                    horizontalAlignment: Text.AlignLeft//Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    elide: Text.ElideRight
                }

                background: Rectangle {
                    implicitWidth: mainWindow.width*0.1
                    implicitHeight: mainWindow.height*0.1
                    opacity: enabled ? 1 : 0.3
                    border.color: controlBt1.down ? "#A9A9A9" : "#373737"
                    border.width: 1
                    radius: 2
                    color:"transparent"
                }
            }


            // button 2
            Button {
                id: controlBt2
                text: qsTr("Takeoff")
                font.pixelSize: 18
                anchors.top: controlBt1.bottom

                contentItem: Text {
                    text: controlBt2.text
                    font: controlBt2.font
                    opacity: enabled ? 1.0 : 0.3
                    color: controlBt2.down ? "#A9A9A9" : "#373737"
                    horizontalAlignment:  Text.AlignLeft//Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    elide: Text.ElideRight
                }

                background: Rectangle {
                    implicitWidth: mainWindow.width*0.1
                    implicitHeight: mainWindow.height*0.1
                    opacity: enabled ? 1 : 0.3
                    border.color: controlBt2.down ? "#A9A9A9" : "#373737"
                    border.width: 1
                    radius: 2
                    color:"transparent"
                }
            }


            // button 3
            Button {
                id: controlBt3
                text: qsTr("Return")
                font.pixelSize: 18
                anchors.top: controlBt2.bottom

                contentItem: Text {
                    text: controlBt3.text
                    font: controlBt3.font
                    opacity: enabled ? 1.0 : 0.3
                    color: controlBt3.down ? "#A9A9A9" : "#373737"
                    horizontalAlignment:  Text.AlignLeft//Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    elide: Text.ElideRight
                }

                background: Rectangle {
                    implicitWidth:  mainWindow.width*0.1
                    implicitHeight: mainWindow.height*0.1
                    opacity: enabled ? 1 : 0.3
                    border.color: controlBt3.down ? "#A9A9A9" : "#373737"
                    border.width: 1
                    radius: 2
                    color: "transparent"
                }
            }

*/



            /////////// Adding setting menu in the left toolbar


            // button 4
            Button {
                id: controlBt4
                text: qsTr("Vehicle Setup")
                font.pixelSize: 18
                anchors.top: parent.top//controlBt3.bottom
                anchors.topMargin: ScreenTools.defaultFontPixelWidth * 0.5
                anchors.leftMargin: ScreenTools.defaultFontPixelWidth * 0.5
                MouseArea {
                                        anchors.fill: parent
                onClicked:              mainWindow.showSetupTool()
                           }
                //onTriggered:	showSetupTool()


                contentItem: Text {
                    text: controlBt4.text
                    font: controlBt4.font
                    opacity: enabled ? 1.0 : 0.3
                    color: controlBt4.down ? "#373737": "#ffffff"
                    horizontalAlignment:  Text.AlignLeft//Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    elide: Text.ElideRight
                }

                background: Rectangle {
                    implicitWidth:  mainWindow.width*0.1
                    implicitHeight: mainWindow.height*0.05
                    opacity: enabled ? 1 : 0.3
                    //border.color: controlBt4.down ? "#A9A9A9" : "#373737"
                    //border.width: 1
                    radius: 1
                    color: "#444444"
                }
            }



            // button 5
            Button {
                id: controlBt5
                text: qsTr("Analyze Tool")
                font.pixelSize: 18
                anchors.top: controlBt4.bottom
                anchors.topMargin: ScreenTools.defaultFontPixelWidth * 0.5
                anchors.leftMargin: ScreenTools.defaultFontPixelWidth * 0.5
                MouseArea {
                                        anchors.fill: parent
                onClicked:              mainWindow.showAnalyzeTool()
                           }


                contentItem: Text {
                    text: controlBt5.text
                    font: controlBt5.font
                    opacity: enabled ? 1.0 : 0.3
                    color: controlBt5.down ? "#373737": "#ffffff"
                    horizontalAlignment:  Text.AlignLeft//Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    elide: Text.ElideRight
                }

                background: Rectangle {
                    implicitWidth:  mainWindow.width*0.1
                    implicitHeight: mainWindow.height*0.05
                    opacity: enabled ? 1 : 0.3
                    //border.color: controlBt5.down ? "#A9A9A9" : "#373737"
                    //border.width: 1
                    radius: 1
                    color: "#444444"
                }
            }




            // button 6
            Button {
                id: controlBt6
                text: qsTr("Application Settings")
                font.pixelSize: 18
                anchors.top: controlBt5.bottom
                anchors.topMargin: ScreenTools.defaultFontPixelWidth * 0.5
                anchors.leftMargin: ScreenTools.defaultFontPixelWidth * 0.5
                MouseArea {
                                        anchors.fill: parent
                onClicked:              mainWindow.showSettingsTool()
                           }


                contentItem: Text {
                    text: controlBt6.text
                    font: controlBt6.font
                    opacity: enabled ? 1.0 : 0.3
                    color: controlBt6.down ? "#373737": "#ffffff"
                    horizontalAlignment:  Text.AlignLeft//Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    elide: Text.ElideRight
                }

                background: Rectangle {
                    implicitWidth:  mainWindow.width*0.1
                    implicitHeight: mainWindow.height*0.05
                    opacity: enabled ? 1 : 0.3
                    //border.color: controlBt6.down ? "#A9A9A9" : "#373737"
                    //border.width: 1
                    radius: 1
                    color: "#444444"
                }
            }




    }


}
}
