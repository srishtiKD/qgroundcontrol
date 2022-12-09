
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
import QtQml 2.14 as Qml

Item {

    id: accountToolbar






//    Loader { id: pageLoader }
//    MouseArea {
//        anchors.fill: parent
//        onClicked: pageLoader.source = "qrc:/AuthWindow.qml"
//    }

    //Component.onDestruction: stackView.push(myInitialItem)


//    Component {
//        id: itemComponent
//        Item {
//            Component.onDestruction: stackView.push(myInitialItem)
//        }
//    }

//    StackView {
//        initialItem: "qrc/AuthWindow.qml"
//          Component.onCompleted: push(itemComponent)

//    }






    // Right ToolBar For Account Settings
   Rectangle{
    id: rightPanel
    width: mainWindow.width*0.15
    height: mainWindow.height*1
    color: qgcPal.toolbarBackground
    anchors.top:            parent.top
    //anchors.bottom:         parent.bottom
    anchors.right:          parent.right


    ColumnLayout{
            id:                     rightToolbar
            width: mainWindow.width*0.15
            height: mainWindow.height*0.5
            spacing: 0
            //anchors.fill: parent
            Layout.fillHeight: parent.height
            Layout.fillWidth: parent.width


            // button 1
            Button {
                id: controlBt1
                text: qsTr("Login")
                font.pixelSize: 18
                anchors.top: parent.top
                //onClicked: authWindow.logoutSession()

                contentItem: Text {
                    text: controlBt1.text
                    font: controlBt1.font
                    opacity: enabled ? 1.0 : 0.3
                    color: controlBt1.down ? "#373737": "#ffffff"
                    horizontalAlignment: Text.AlignRight //Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    elide: Text.ElideRight
                }

                background: Rectangle {
                    implicitWidth: mainWindow.width*0.15
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
                text: qsTr("Signup")
                font.pixelSize: 18
                anchors.top: controlBt1.bottom

                contentItem: Text {
                    text: controlBt2.text
                    //font.family: "Bahnschrift Condensed"
                    font: controlBt2.font
                    opacity: enabled ? 1.0 : 0.3
                    color: controlBt2.down ? "#373737": "#ffffff" //"#A9A9A9" : "#373737"
                    horizontalAlignment: Text.AlignRight//Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    elide: Text.ElideRight
                }

                background: Rectangle {
                    implicitWidth: mainWindow.width*0.15
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
                text: qsTr("Logout")
                font.pixelSize: 18
                anchors.top: controlBt2.bottom
                icon.source:            "/res/gear-black.svg"
                onClicked: {
                 mainWindow.close()
                 authWindow.show()//logoutSession()
                }

                contentItem: Text {
                    text: controlBt3.text
                    font: controlBt3.font
                    opacity: enabled ? 1.0 : 0.3
                    color: controlBt3.down ? "#373737": "#ffffff"
                    horizontalAlignment: Text.AlignRight //Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    elide: Text.ElideRight
                }

                background: Rectangle {
                    implicitWidth:  mainWindow.width*0.15
                    implicitHeight: mainWindow.height*0.1
                    opacity: enabled ? 1 : 0.3
                    border.color: controlBt3.down ? "#A9A9A9" : "#373737"
                    border.width: 1
                    radius: 2
                    color: "transparent"
                }
            }





    } // ColumnLayout





    } //Rectangle



} // Item





