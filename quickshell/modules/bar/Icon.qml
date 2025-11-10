import QtQuick
import Quickshell
import Quickshell.Io
import Quickshell.Wayland
import Quickshell.Hyprland

Rectangle {
    property int width_size: 32

    implicitWidth: width_size

    anchors {
        top: parent.top
        bottom: parent.bottom
    }

    color: "transparent"

    AnimatedImage {
        id: icon

        source: mouseArea.pressed ? "root:modules/bar/iconPress.gif" : mouseHover.hovered ? "root:modules/bar/iconHover.gif" : "root:modules/bar/icon.gif"
        width: width_size
        height: 28
        
        Process{
            id: cmd
            running: false
            command: ["rofi","-show","drun","-theme","~/.config/rofi/themes/app-menu.rasi"]
        }

        // open menu on click
        MouseArea {
            id: mouseArea
            anchors.fill: parent
            onClicked: cmd.running = true
        }

        // mouse hover handler
        HoverHandler {
            id: mouseHover
            acceptedDevices: PointerDevice.AllDevices
        }

        anchors.left: parent.left
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 1
        anchors.topMargin: 1
        anchors.bottomMargin: 1
    }
}