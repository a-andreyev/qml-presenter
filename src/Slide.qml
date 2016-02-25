import QtQuick 2.0

Item {
    property alias title: titleText.text
    signal slideAdded();
    width: parent.width
    height: parent.height
    visible: false
    scale: zoomMouseArea.scaleFactor
    Drag.active: true
    MouseArea {
        property real scaleFactor: 1
        anchors.fill: parent
        id: zoomMouseArea
        drag.target: parent
        onWheel: {
            if (wheel.angleDelta.y > 0)
                scaleFactor += 0.2;
            else if (scaleFactor - 0.2 >= 1)
                scaleFactor -= 0.2;
        }
    }

    Text {
        id: titleText
        font.bold: true
        text: title
        font.pointSize: 24
        anchors.centerIn: parent
    }
}
