import QtQuick
import Quickshell
import Quickshell.Io
import Quickshell.Wayland

PanelWindow {
    id: timeBG

    SystemClock {
        id: clock
        precision: SystemClock.Minutes
    }
    
    color: "transparent"

    WlrLayershell.layer: WlrLayer.Bottom
    
    Text {
        id: ssex
        text: Qt.formatDateTime(clock.date, "hh:mm dd/MM/yy")
    }
}