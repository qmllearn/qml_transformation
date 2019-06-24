import QtQuick 2.6
import QtQuick.Window 2.2

/*
 * Copyright (c) 2013, Juergen Bocklage-Ryannel, Johan Thelin
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 *     * Redistributions of source code must retain the above copyright
 *       notice, this list of conditions and the following disclaimer.
 *     * Redistributions in binary form must reproduce the above copyright
 *       notice, this list of conditions and the following disclaimer in the
 *       documentation and/or other materials provided with the distribution.
 *     * Neither the name of the editors nor the
 *       names of its contributors may be used to endorse or promote products
 *       derived from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
 * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
 * WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
 * DISCLAIMED. IN NO EVENT SHALL <COPYRIGHT HOLDER> BE LIABLE FOR ANY
 * DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
 * (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
 * LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
 * ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
 * SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

// M1>>
// transformation.qml


import QtQuick 2.0

Item {
    // set width based on given background
    width: bg.width
    height: bg.height

    Image { // nice background image
        id: bg
        source: "image/back.jpg"
    }

    MouseArea {
        id: backgroundClicker
        // needs to be before the images as order matters
        // otherwise this mousearea would be before the other elements
        // and consume the mouse events
        anchors.fill: parent
        onClicked: {
            // reset our little scene
            rocket1.x = 0
            rocket2.rotation = 0
            rocket2.x=500
            rocket2.y=500
            rocket3.rotation = 0
            rocket3.scale = 1.0


        }
    }

    ClickableImage {
        id: rocket1
        x: 0; y: 100
        width: 100
        height: 180
        source: "image/rocket.jpg"
        onClicked: {

            x += 5
        }
    }

    ClickableImage {
        id: rocket2
        x: 500; y: 500
        width: 100
        height: 180
        source: "image/rocket.jpg"
        smooth: true // need antialising
        onClicked: {
            // increase the rotation on click
            rotation +=2
            x+=10
            y-=25

        }
    }

    ClickableImage {
        id: rocket3
        x: 1000; y: 100
        width: 100
        height: 180
        source: "image/rocket.jpg"
        smooth: true // need antialising
        onClicked: {
            // several transformations
            rotation += 1
            scale -= 0.02
        }
    }

    ClickableImage {
        id: rocket4
        x: 20; y: 500
        width: 100
        height: 180
        source: "image/rocket.jpg"
        smooth: true // need antialising
        onClicked: {
            // several transformations
        y-=28
        }
    }
}

// <<M1
