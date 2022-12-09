/****************************************************************************
 *
 * (c) 2009-2020 QGROUNDCONTROL PROJECT <http://www.qgroundcontrol.org>
 *
 * QGroundControl is licensed according to the terms in the file
 * COPYING.md in the root of the source code directory.
 *
 ****************************************************************************/

import QtQuick                  2.3
import QtMultimedia             5.5

import QGroundControl           1.0

Rectangle {
    id:                 _root
    width:              parent.width
    height:             parent.height
    color:              Qt.rgba(0,0,0,0.75)
    clip:               true
    anchors.centerIn:   parent  /// old
    //anchors.right: parent.right  // New change
    visible:        QGroundControl.videoManager.isUvc // old //true

    function adjustAspectRatio()
    {
        //-- Set aspect ratio
        var size = camera.viewfinder.resolution
        if(size.height > 0 && size.width > 0) {
            var ar = size.width / size.height
            _root.height = parent.height * ar
        }
    }

    Camera {
        id:             camera
        deviceId:       QGroundControl.videoManager.uvcVideoSourceID
        captureMode:    Camera.CaptureViewfinder
        onDeviceIdChanged: {
            adjustAspectRatio()
        }
        onCameraStateChanged: {
            if(camera.cameraStatus === Camera.ActiveStatus) {
                adjustAspectRatio()
            }
        }
    }
    VideoOutput {
        source:         camera
        anchors.fill:   parent
        //width:          1280 // new
//        height:         720  // new
//        anchors.centerIn: parent  // new
        fillMode:       VideoOutput.PreserveAspectCrop            //old
        visible:        QGroundControl.videoManager.isUvc          //old

        onVisibleChanged: {
            console.log('UVC Video output visible: ', visible);
            if (visible) {
                camera.start()
            } else {
                camera.stop()
            }
        }
    }
}
