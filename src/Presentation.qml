import QtQuick 2.0

Item {
    anchors.fill: parent
    focus: true

    property variant slides: []
    property int currentSlideIndex: 0;

    Component.onCompleted: {
        slides[currentSlideIndex].visible=true
    }

    function goToPreviousSlide() {
        if (currentSlideIndex - 1 >= 0) {
            var _prevSlideIndex = currentSlideIndex-1
            for (var i = 0; i<slides.length;i++) {
                if (i!=_prevSlideIndex) {
                    slides[i].visible = false;
                }
                else {
                    slides[i].visible = true;
                }
            }
            currentSlideIndex=_prevSlideIndex
        }
    }

    function goToNextSlide() {
        var _nextSlideIndex = currentSlideIndex + 1
        if (_nextSlideIndex < slides.length) {
            slides[currentSlideIndex].visible = false;
            slides[_nextSlideIndex].visible = true;
            currentSlideIndex=_nextSlideIndex
        }
    }

    Keys.onSpacePressed: goToNextSlide()
    Keys.onRightPressed: goToNextSlide()
    Keys.onLeftPressed: goToPreviousSlide()
}
