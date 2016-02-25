import QtQuick 2.5
import QtQuick.Controls 1.4

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("Presentation")
    Presentation {
        id: presentation
        slides: [slide1,slide2,slide3,slide4,slide5] // TODO: automatically form this
        Slide {
            id: slide1
            title: "Slide 1"
        }
        Slide {
            id: slide2
            title: "Slide 2"
        }
        Slide {
            id: slide3
            title: "Slide 3"
        }
        Slide {
            id: slide4
            title: "Slide 4"
        }
        Slide {
            id: slide5
            title: "Slide 5"
        }
        ProgressBar {
            width: parent.width
            anchors.bottom: parent.bottom
            minimumValue: 0
            maximumValue: presentation.slides.length
            value: presentation.currentSlideIndex+1
        }
    }
}
