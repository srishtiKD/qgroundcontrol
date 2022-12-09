import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.1

import "BackendTest.js" as Backend

import QtQuick.Dialogs  1.3
import QtQuick.Window   2.11
import QGroundControl               1.0
import QGroundControl.Palette       1.0
import QGroundControl.Controls      1.0
import QGroundControl.ScreenTools   1.0
import QGroundControl.FlightDisplay 1.0
import QGroundControl.FlightMap     1.0
import QGroundControl.MultiVehicleManager   1.0
import QGroundControl.Controllers           1.0
import QtQuick.Controls.Styles 1.4


Page {
    id: loginPage
    signal registerClicked()
    background:
        Rectangle {
    color:backGroundColor
    anchors.centerIn: parent

//    Image {
//        id: falcon
//        source: "/res/falcon2.png"
//        width: parent.width*0.6
//        height: parent.height*0.4
//        anchors.topMargin: parent.height*0.1
//        anchors.leftMargin: parent.width*0.2
//        anchors.rightMargin: parent.width*0.2
//    }



    // COLUMN SECTION FOR AUTHENTICATION MENUS
    ColumnLayout {
        width: parent.width*0.5
        height: parent.height*0.4
        //anchors.top: parent
        anchors.centerIn: parent
        spacing: 15
        Layout.alignment: Qt.AlignHCenter

        TextField {
            id: loginUsername
            placeholderText: qsTr("User name")
            Layout.preferredWidth: parent.width - 20
            Layout.alignment: Qt.AlignHCenter
            color: mainTextCOlor
            font.pointSize: 14
            font.family: "fontawesome"
            leftPadding: 30
            background: Rectangle {
                implicitWidth: 200
                implicitHeight: 50
                radius: implicitHeight / 2
                color: "transparent"

                Text {
                    text: "\uf007"
                    font.pointSize: 14
                    font.family: "fontawesome"
                    color: mainAppColor
                    anchors.left: parent.left
                    anchors.verticalCenter: parent.verticalCenter
                    leftPadding: 10
                }

                Rectangle {
                    width: parent.width - 10
                    height: 1
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.bottom: parent.bottom
                    color: mainAppColor
                }
            }
        }


        TextField {
            id: loginPassword
            placeholderText: qsTr("Password")
            Layout.preferredWidth: parent.width - 20
            Layout.alignment: Qt.AlignHCenter
            color: mainTextCOlor
            font.pointSize: 14
            font.family: "fontawesome"
            leftPadding: 30
            echoMode: TextField.PasswordEchoOnEdit
            background: Rectangle {
                implicitWidth: 200
                implicitHeight: 50
                radius: implicitHeight / 2
                color: "transparent"
                Text {
                    text: "\uf023"
                    font.pointSize: 14
                    font.family: "fontawesome"
                    color: mainAppColor
                    anchors.left: parent.left
                    anchors.verticalCenter: parent.verticalCenter
                    leftPadding: 10
                }

                Rectangle {
                    width: parent.width - 10
                    height: 1
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.bottom: parent.bottom
                    color: mainAppColor
                }
            }
        }


        // LOG IN BUTTON
        Button{
            id: login
            height: 50
            Layout.preferredWidth: parent.width
            Layout.alignment: Qt.AlignHCenter
            onClicked: {
                loginUser(loginUsername.text, loginPassword.text)
            }

            contentItem: Text {
                text: "Log In"
                font.pointSize: 16
                opacity: enabled ? 1.0 : 0.3
                color: login.down ? "#ffffff" : "#ffffff"
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                elide: Text.ElideRight
            }

            background: Rectangle {
                //implicitWidth: parent.width
                implicitHeight: 50
                color: mainAppColor
                opacity: login.down ? 0.7 : 1
                radius: height/2
                border.color: mainAppColor
            }
        }



        // SIGN UP BUTTON
        Button{
            id: signup
            height: 50
            Layout.preferredWidth: parent.width
            Layout.alignment: Qt.AlignHCenter
            onClicked: stackView.push("qrc:/qml/SignupPage.qml", {"uname": "abc", "pword": "pwd"})
            contentItem: Text {
                text: "Sign Up"
                font.pointSize: 16
                opacity: enabled ? 1.0 : 0.3
                color: signup.down ? "#ffffff" : "#ffffff"
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                elide: Text.ElideRight
            }

            background: Rectangle {
                //implicitWidth: parent.width
                implicitHeight: 50
                color: mainAppColor
                opacity: signup.down ? 0.7 : 1
                radius: height/2
                border.color: mainAppColor
            }

        }



        // FORGOT PASSWORD BUTTON
        Text {
            id: name
            text: '<html><style type="text/css"></style><a href="http://google.com">Forgot password?</a></html>' //qsTr("Forgot password?")
            linkColor: mainTextCOlor
            Layout.alignment: Qt.AlignHCenter
            font.pointSize: 14
            color: mainTextCOlor
            Layout.margins: 10
            onLinkActivated: forgotPassword()
        }


    }

}

} //PAGE

