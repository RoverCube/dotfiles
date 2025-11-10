import QtQuick
import Quickshell
import Quickshell.Io
import Quickshell.Wayland
import Quickshell.Hyprland

Rectangle {
    id: workspaceS

    width: workspacesRow.implicitWidth

    anchors {
        top: parent.top
        bottom: parent.bottom
    }

    color: "transparent"


    Row {
        id: workspacesRow

        //property int workspaceId
        //Hyprland.focusedMonitor.activeWorkspace.id == workspacesRow.workspaceId

        anchors {
            left: parent.left
            verticalCenter: parent.verticalCenter
        }
        
        Repeater {
            model: Hyprland.workspaces 

            Rectangle {
                width: 24
                height: 28
                
                // changes color based on active > hovered > urgent > none
                color: modelData.active ? "#fafafa" : mouseHover.hovered ? "#505050": modelData.urgent ? '#00ff0000' : '#0c0c0c'

                // change workspace on click
                MouseArea {
                    anchors.fill: parent
                    onClicked: Hyprland.dispatch("workspace " + modelData.id)
                }

                // mouse hover handler
                HoverHandler {
                    id: mouseHover
                    acceptedDevices: PointerDevice.AllDevices
                }
                
                Image {
                    source: "root:modules/bar/images/urgent.png"
                    opacity: modelData.urgent ? 100 : 0
                }
                
                Image {
                    source: "root:modules/bar/images/urgent.png"
                    opacity: modelData.urgent ? 100 : 0
                }
                
                Text {
                    text: modelData.id
                    anchors.centerIn: parent
            
            
                    font.family: "JetBrainsMono"

                    color: modelData.active ? "#0c0c0c" : "#fafafa"
                }
            }
        }
    }
}