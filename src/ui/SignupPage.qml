//import QtQuick 2.12

//Item {

//}

import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.1

Page {
    id: registerPage

    property string uname: ""
    property string pword: ""

    background: Rectangle {
        color: backGroundColor
    }

//    Text {
//        id: signupText
//        text: qsTr("Sign Up")
//        font.pointSize: 24
//        anchors.top: parent.top
//        anchors.topMargin: 30
//        anchors.horizontalCenter: parent.horizontalCenter
//        color: mainTextCOlor
//    }

    ColumnLayout {
        width: parent.width*0.5
        //anchors.top: signupText.bottom
        //anchors.topMargin: 30
        anchors.centerIn: parent
        spacing: 25

        TextField {
            id: registerUsername
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
            id: registerPassword
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

        TextField {
            id: registerPassword2
            placeholderText: qsTr("Confirm Password")
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

        TextField {
            id: passwordHint
            placeholderText: qsTr("Password Hint")
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
                    text: "\uf05a"
                    font.pointSize: 13
                    font.bold: true
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

        Item {
            height: 20
        }

        Button{
            id: signup
            height: 50
            Layout.preferredWidth: parent.width - 20
            Layout.alignment: Qt.AlignHCenter
            onClicked: registerNewUser(registerUsername.text, registerPassword.text, registerPassword2.text, passwordHint.text)

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
                //implicitWidth: parent.width//100
                implicitHeight: 50
                color: mainAppColor
                opacity: signup.down ? 0.7 : 1
                radius: height/2
                border.color: mainAppColor
            }
        }




        Button{
            id: cancel
            height: 50
            Layout.preferredWidth: parent.width - 20
            Layout.alignment: Qt.AlignHCenter
            onClicked: stackView.pop()

            contentItem: Text {
                text: "Cancel"
                font.pointSize: 16
                opacity: enabled ? 1.0 : 0.3
                color: cancel.down ? "#ffffff" : "#ffffff"
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                elide: Text.ElideRight
            }

            background: Rectangle {
                //implicitWidth: parent.width//100
                implicitHeight: 50
                color: mainAppColor
                opacity: cancel.down ? 0.7 : 1
                radius: height/2
                border.color: mainAppColor
            }
        }


    }


} //PAGE
