import QtQuick 2.11
import QtQuick.Layouts 1.11

Item {
	id: root

	property color color1: "#ffd100"
	property color color2: "#222222"
	property real tapeLength: 200
	property real hexRadius: 20
	property real hexInnerRadius: (Math.sqrt(3)/2) * root.hexRadius
	property int hexColumns: 4


	component BarrierTapeRow: Row{
		id: hexRow
		property color rowColor: "pink"
		spacing: -1/4 * root.hexRadius
		Repeater {
			model: hexColumns
			Hexagon_svg {
				y: index * -root.hexInnerRadius/2
				radius: root.hexRadius 
				color: hexRow.rowColor 
			}
		}
	}

	Column {
		spacing: 0
		Repeater {
			model: Math.ceil(root.tapeLength / root.hexInnerRadius) + 4

			BarrierTapeRow {
				rowColor: (index % 2 == 0) ? root.color1 : root.color2
			}		
		}
	}
}

