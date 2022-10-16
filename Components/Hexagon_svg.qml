
import QtQuick 2.11
import QtGraphicalEffects 1.12
import QtQuick.Controls 2.4

Item {
	id: root
	property color color:"yellow"
	property real radius: 30
	height: Math.sqrt(3)/2 * root.radius
	width: root.radius
	
	Image {
		anchors.centerIn: parent
		id: hexagonSvg
		source: Qt.resolvedUrl("../Assets/Hex_r.svgz")
		sourceSize.width: root.radius
		antialiasing: true
		visible: false
	}
	ColorOverlay {
		anchors.fill: hexagonSvg
		source: hexagonSvg
		color: root.color
		antialiasing: true
	}
}
