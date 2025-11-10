import QtQuick
import Quickshell
import Quickshell.Io
import Quickshell.Wayland
import Quickshell.Hyprland

import "../modules/bar" as BarMod

// Panel
PanelWindow {
    id: panel

    anchors {
        top: true
        right: true
        left: true
    }

    color: "transparent"

    implicitHeight: 30
    
    WlrLayershell.layer: WlrLayer.Bottom

    // Left Panel
    Rectangle {
        id: leftPanel

        anchors {
            top: parent.top
            left: parent.left
            bottom: parent.bottom
        }
        color: '#0c0c0c'
        radius: 0
        border.color: "#505050"
        border.width: 1
    
        width: rowRowLeft.implicitWidth

        Row {
            id: rowRowLeft

            anchors.fill: parent
            spacing: 0
            
            BarMod.Icon {}
            BarMod.Workspaces {}
            BarMod.Text {}
            
        }
    }
    //BarMod.Music {}
    // Center panel
    Rectangle {
        id: centerPanel

        anchors {
            top: parent.top
            horizontalCenter: parent.horizontalCenter
            bottom: parent.bottom
        }
        color: '#0c0c0c'
        radius: 0
        border.color: "#505050"
        border.width: 1
    
        width: rowRowCenter.implicitWidth

        Row {
            id: rowRowCenter

            anchors.fill: parent
            spacing: 0
            
            BarMod.Icon {}
            BarMod.Workspaces {}
            BarMod.Text {}
            
        }
    }

    // Right panel
    Rectangle {
        id: rightPanel

        anchors {
            top: parent.top
            right: parent.right
            bottom: parent.bottom
        }
        color: '#0c0c0c'
        radius: 0
        border.color: "#505050"
        border.width: 1
    
        width: rowRowRight.implicitWidth

        Row {
            id: rowRowRight

            anchors.fill: parent
            spacing: 0
            
            BarMod.Icon {}
            BarMod.Workspaces {}
            BarMod.Text {}
            
        }
    }
}