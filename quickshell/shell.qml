import QtQuick
import Quickshell

ShellRoot {
  id: root

  Loader {
    active: true
    sourceComponent: Main {}
  }
}