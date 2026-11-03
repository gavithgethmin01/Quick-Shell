import QtQuick
import QtQuick.Layouts
import Quickshell

PanelWindow {
    id: barWindow
    anchors { top: true; left: true; right: true }
    implicitHeight: 44
    color: "transparent" // Windows එක transparent තියලා ඇතුලෙන් blur කරන්නේ

    // 1. The Main Blurred Container
    Rectangle {
        id: barContainer
        anchors.fill: parent
        anchors.margins: 6 // Screen එකේ අයිනෙන් පොඩ්ඩක් ඉඩ තියන්න (Floating Bar)
        radius: 12
        color: "#cc1a1b26" // Tokyo Night Dark Theme + Opacity

        // 2. Layout for Widgets
        RowLayout {
            anchors.fill: parent
            anchors.leftMargin: 15
            anchors.rightMargin: 15
            spacing: 10

            // Left Section (Workspaces / Tags)
            Row {
                spacing: 6
                // මෙතනට workspace dots දාන්න පුළුවන්
                Rectangle { width: 10; height: 10; radius: 5; color: "#7aa2f7" }
                Rectangle { width: 24; height: 10; radius: 5; color: "#bb9af7" } // Active workspace (Longer pill)
            }

            // Center Section (Spacer + Dynamic Clock)
            Item { Layout.fillWidth: true } // HTML flex-grow: 1 වගේ මැද හිස් ඉඩ පුරවනවා
            
            Text {
                text: "09:17 AM"
                font.pixelSize: 14
                font.bold: true
                color: "#c0caf5"
            }
            
            Item { Layout.fillWidth: true } // Spacer

            // Right Section (Status Indicators)
            Row {
                spacing: 12
                Text { text: "   80%"; color: "#9ece6a" }
                Text { text: " Connected"; color: "#2ac3de" }
            }
        }
    }
}

