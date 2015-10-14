import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Window 2.2
import QtQuick.Dialogs 1.2

ApplicationWindow {
    title: qsTr("Insta Explore")
    width: 400
    height: 640
    visible: true
    id: main

    Component{
        id: image_dele
        Image{
            width: main.width/3
            height: width
            source: img
            fillMode: Image.PreserveAspectCrop
            MouseArea{
                anchors.fill: parent
                onClicked:{
                    display_image.source = img
                    display_image.visible=true
                }
            }
        }
    }

    Image{
        id: zoomin
        source: "icons/Zoom-In.png"
        width: 50
        height: width
        anchors.right: parent.right
        anchors.top: display_image.top
        z: 3
        visible: display_image.visible
        MouseArea{
            anchors.fill: parent
            onClicked: {
                display_image.scale+=0.1
            }
        }
    }
    Image{
        id: zoomout
        source: "icons/Zoom-Out.png"
        width: zoomin.width
        height: width
        anchors.top: zoomin.bottom
        anchors.right: parent.right
        z: 3
        visible: display_image.visible
        MouseArea{
            anchors.fill: parent
            onClicked: {
                display_image.scale-=0.1
            }
        }
    }
    Image{
        id: rotate_plus
        source: "icons/rotate.png"
        width: zoomin.width
        height: zoomin.height
        anchors.top: zoomout.bottom
        anchors.right: parent.right
        z: 3
        visible: display_image.visible
        MouseArea{
            anchors.fill: parent
            onClicked: {
                display_image.rotation+=15
            }
        }
    }
    Image{
        id: rotate_minus
        source: "icons/rotate.png"
        width: zoomin.width
        height: zoomin.height
        anchors.top: rotate_plus.bottom
        anchors.right: parent.right
        mirror: true
        z: 3
        visible: display_image.visible
        MouseArea{
            anchors.fill: parent
            onClicked: {
                display_image.rotation-=15
            }
        }
    }


    Image{
        id: display_image
        width: parent.width
        height: width
        fillMode: Image.PreserveAspectCrop
        z: 2
        visible: false
        anchors.verticalCenter: parent.verticalCenter
        MouseArea{
            anchors.fill: parent
            onClicked:{
                display_image.scale=1
                display_image.visible = false
            }
        }
    }

    Rectangle{
        anchors.fill: parent
        color: "black"
        opacity: 0.8
        z: 1
        visible: display_image.visible
    }

    ListModel{
        id: mylistmodel
        ListElement{
            img: "https://img.washingtonpost.com/wp-apps/imrs.php?src=https://img.washingtonpost.com/news/comic-riffs/wp-content/uploads/sites/15/2015/08/google-doodle-popeye.jpg&w=1484"
        }
        ListElement{
            img: "http://www.google.com/doodle4google/2008/images/regional_doodles/CO-80106-16a267f8-3.jpg"
        }
        ListElement{
            img: "http://lh3.googleusercontent.com/SIPXLpuByURey5no33X-_A6ludFMV1j16T4wSys4UKRiukQ23ToQMKYscmucwTcce0OqfmU7vbgQUdYeo9VHvuqROIEsqYKW-gDYgnql=s660"
        }
        ListElement{
            img: "http://siliconharbormag.com/wp-content/uploads/2014/04/google-doodle-big.png"
        }
        ListElement{
            img: "http://metrouk2.files.wordpress.com/2009/09/googlelhc_450x170.jpg"
        }
        ListElement{
            img: "http://wide-wallpapers.net/download/google-doodle-wide-wallpaper-960x600.jpg"
        }
        ListElement{
            img: "http://www.doodlehistory.com/doodles/doodle-4-google-2013-kenya-winner-google-doodle-.jpg"
        }
        ListElement{
            img: "http://www.google.com/logos/2011/lantern11-hp.jpg"
        }
        ListElement{
            img: "http://www.google.com/about/careers/files/home.jpg"
        }
        ListElement{
            img: "http://www.google.com/logos/2011/first_day_school-2011-hp.jpg"
        }
        ListElement{
            img: "http://core0.staticworld.net/images/article/2014/09/google_tunnel-100432147-primary.idge.jpg"
        }
        ListElement{
            img: "https://img.washingtonpost.com/wp-apps/imrs.php?src=https://img.washingtonpost.com/news/comic-riffs/wp-content/uploads/sites/15/2015/08/google-doodle-popeye.jpg&w=1484"
        }
        ListElement{
            img: "http://www.google.com/doodle4google/2008/images/regional_doodles/CO-80106-16a267f8-3.jpg"
        }
        ListElement{
            img: "http://lh3.googleusercontent.com/SIPXLpuByURey5no33X-_A6ludFMV1j16T4wSys4UKRiukQ23ToQMKYscmucwTcce0OqfmU7vbgQUdYeo9VHvuqROIEsqYKW-gDYgnql=s660"
        }
        ListElement{
            img: "http://siliconharbormag.com/wp-content/uploads/2014/04/google-doodle-big.png"
        }
        ListElement{
            img: "http://metrouk2.files.wordpress.com/2009/09/googlelhc_450x170.jpg"
        }
        ListElement{
            img: "http://wide-wallpapers.net/download/google-doodle-wide-wallpaper-960x600.jpg"
        }
        ListElement{
            img: "http://www.doodlehistory.com/doodles/doodle-4-google-2013-kenya-winner-google-doodle-.jpg"
        }
        ListElement{
            img: "http://www.google.com/logos/2011/lantern11-hp.jpg"
        }
        ListElement{
            img: "http://www.google.com/about/careers/files/home.jpg"
        }
        ListElement{
            img: "http://www.google.com/logos/2011/first_day_school-2011-hp.jpg"
        }
        ListElement{
            img: "http://core0.staticworld.net/images/article/2014/09/google_tunnel-100432147-primary.idge.jpg"
        }
    }

    GridView{
        id: mygridview
        anchors.fill: parent
        delegate: image_dele
        model: mylistmodel
        cellWidth: main.width/3
        cellHeight: cellWidth
        snapMode: GridView.SnapToRow
    }

}
