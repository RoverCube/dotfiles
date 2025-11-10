import QtQuick
import Quickshell
import Quickshell.Io
import Quickshell.Wayland
import Quickshell.Hyprland

Rectangle {

    implicitWidth: 84 // 66

    anchors {
        top: parent.top
        bottom: parent.bottom
    }

    color: "transparent"
    Text {
        
        anchors.centerIn: parent

        font.family: "JetBrainsMono"

        text: "| RouCvb |"
        color: "#fff"
    }

}