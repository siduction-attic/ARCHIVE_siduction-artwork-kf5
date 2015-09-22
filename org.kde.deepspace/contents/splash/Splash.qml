/* 
 *   Copyright 2015 Hendrik Lehmbruch <hlehmbruch(at)gmx.net>
 *   Copyright (C) 2011 Ivan Cukic <ivan.cukic(at)kde.org>
 *
 *   This program is free software; you can redistribute it and/or modify
 *   it under the terms of the GNU General Public License version 2,
 *   or (at your option) any later version, as published by the Free
 *   Software Foundation
 *
 *   This program is distributed in the hope that it will be useful,
 *   but WITHOUT ANY WARRANTY; without even the implied warranty of
 *   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *   GNU General Public License for more details
 *
 *   You should have received a copy of the GNU General Public
 *   License along with this program; if not, write to the
 *   Free Software Foundation, Inc.,
 *   51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
 */

// import Qt 4.7
import QtQuick 2.0

Item {
    id: main

    width: screenSize.width
    height: screenSize.height
    // width: 300
    // height: 300

    /* property declarations --------------------------{{{ */
    property int stage
    /* }}} */

    /* signal declarations ----------------------------{{{ */

    /* }}} */

    /* JavaScript functions ---------------------------{{{ */
    onStageChanged: {
        if (stage == 1) {
	    ring.opacity = 0.10
            gear.opacity = 0.15
            littlegear.opacity = 0.20
            tinygear.opacity = 0.25
           // icon1.opacity = 0.25
        }
        if (stage == 2) {
	    ring.opacity = 1
            gear.opacity = 1
            littlegear.opacity = 1
            tinygear.opacity = 1
           // icon1.opacity = 1
           // icon2.opacity = 1
        }
        if (stage == 3) {
	   // icon3.opacity = 1
        }
        if (stage == 4) {
	   // ring.opacity = 0.5
	   // gear.opacity = 0.5
	   // littlegear.opacity = 0.5
	   // tinygear.opacity = 0.5
           // icon4.opacity = 1
 	    //flaticon.opacity = 1
        }
        if (stage == 5) {
           // icon1.opacity = 0
           // icon2.opacity = 0
	   // icon3.opacity = 0
           // icon4.opacity = 0
           ring.opacity = 0.20
           gear.opacity = 0.15
           littlegear.opacity = 0.10
           tinygear.opacity = 0.05
           // ringorange.opacity = 1
           // flaticondots.opacity = 1
	    //flaticon.opacity = 1
	    //flatlogo.opacity = 0
        }
        if (stage == 6) {
	flatlogo.opacity=1
	ring.opacity = 0
	gear.opacity = 0
	littlegear.opacity = 0
	tinygear.opacity = 0

	}
    }
    /* }}} */

    /* object properties ------------------------------{{{ */

    /* }}} */

    /* child objects ----------------------------------{{{ */

  Image {
    id: background
    source: "images/DeepSpace.png"
    //source: images/background.png
    //source: "/usr/share/wallpapers/indiansummer.jpg"
    //source: "/usr/share/wallpapers/<foo>"
    anchors.fill: parent
    fillMode: Image.PreserveAspectCrop

        anchors {
            top: parent.top
            left: parent.left
            right: parent.right
            bottom: parent.bottom

        }
        opacity: 1
    }
    
    Image {
        id: ring

        height: 120
        width: 120
        smooth: true

        x: (parent.width - width) / 2
        y: (parent.height - height) / 2

        source: "images/ring.png"

        opacity: 0
        Behavior on opacity { NumberAnimation { duration: 3000; easing { type: Easing.InOutQuad } } }
    }

    Image {
        id: gear

	//height: 112
        //width: 112
        height: 100
        width: 100
        smooth: true

        x: (parent.width - width) / 2
        y: (parent.height - height) / 2

        source: "images/gear.png"

        opacity: 0
        Behavior on opacity { NumberAnimation { duration: 3000; easing { type: Easing.InOutQuad } } }

        NumberAnimation {
            id: animateRotation
            target: gear
            properties: "rotation"
            from: 0
            to: 360
            duration: 5000

            loops: Animation.Infinite
            running: true
        }

    }
    
    Image {
        id: littlegear

	//height: 112
        //width: 112
        height: 100
        width: 100
        smooth: true

        x: (parent.width - width) / 2
        y: (parent.height - height) / 2

        source: "images/little-gear.png"

        opacity: 0
        Behavior on opacity { NumberAnimation { duration: 3000; easing { type: Easing.InOutQuad } } }

        NumberAnimation {
            id: animateLittleRotation
            target: littlegear
            properties: "rotation"
            from: 360
            to: 0
            duration: 3000

            loops: Animation.Infinite
            running: true
        }

    }

    Image {
        id: tinygear

	//height: 112
        //width: 112
        height: 100
        width: 100
        smooth: true

        x: (parent.width - width) / 2
        y: (parent.height - height) / 2

        source: "images/tiny-gear.png"

        opacity: 0
        Behavior on opacity { NumberAnimation { duration: 3000; easing { type: Easing.InOutQuad } } }

        NumberAnimation {
            id: animateTinyRotation
            target: tinygear
            properties: "rotation"
            from: 0
            to: 360
            duration: 2000

            loops: Animation.Infinite
            running: true
        }

    }
    
    Image {
        id: icon1

        height: 60
        width: 60
        smooth: true

        x: (parent.width - width) * 0.3
        y: (parent.height - height) / 2

        source: "images/1.png"

        opacity: 0
        Behavior on opacity { NumberAnimation { duration: 3000; easing { type: Easing.InOutQuad } } }
    }

    Image {
        id: icon2

        height: 60
        width: 60
        smooth: true

        x: (parent.width - width) * 0.4
        y: (parent.height - height) / 2

        source: "images/2.png"

        opacity: 0
        Behavior on opacity { NumberAnimation { duration: 3000; easing { type: Easing.InOutQuad } } }
    }
    
        Image {
        id: icon3

        height: 60
        width: 60
        smooth: true

        x: (parent.width - width) *0.6
        y: (parent.height - height) / 2

        source: "images/3.png"

        opacity: 0
        Behavior on opacity { NumberAnimation { duration: 3000; easing { type: Easing.InOutQuad } } }
    }
    
        Image {
        id: icon4

        height: 60
        width: 60
        smooth: true

        x: (parent.width - width) *0.7
        y: (parent.height - height) / 2

        source: "images/4.png"

        opacity: 0
        Behavior on opacity { NumberAnimation { duration: 3000; easing { type: Easing.InOutQuad } } }
    }
    
    Image {
	    id: flaticondots

	    height: 90
	    width: 90
	    smooth: true

	    x: (parent.width - width) / 2
	    y: (parent.height - height) / 2

	    source: "images/flaticondots.png"

	    opacity: 0
	    Behavior on opacity { NumberAnimation { duration: 3000; easing { type: Easing.InOutQuad } } }
    }
    
        Image {
        id: ringorange

        height: 120
        width: 120
        smooth: true

        x: (parent.width - width) / 2
        y: (parent.height - height) / 2

        source: "images/ringorange.png"

        opacity: 0
        Behavior on opacity { NumberAnimation { duration: 3000; easing { type: Easing.InOutQuad } } }
    }

    Image {
        id: flaticon

        height: 90
        width: 90
        smooth: true

        x: (parent.width - width) / 2
        y: (parent.height - height) / 2

        source: "images/flaticon.png"

        opacity: 0
        Behavior on opacity { NumberAnimation { duration: 3000; easing { type: Easing.InOutQuad } } }
    }
    
    Image {
        id: flatlogo

        height: 56
        width: 250
        smooth: true

        x: (parent.width - width) / 2
        y: (parent.height - height) / 2

        source: "images/flatlogo.png"

        opacity: 0
        Behavior on opacity { NumberAnimation { duration: 3000; easing { type: Easing.InOutQuad } } }
    }

    /* }}} */

    /* stages -----------------------------------------{{{ */

    /* }}} */

    /* transitions ------------------------------------{{{ */

    /* }}} */
}

