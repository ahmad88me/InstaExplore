import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Window 2.2
import QtQuick.Dialogs 1.2


Rectangle {
    width: 100
    height: 62


    Component{
        id: image_dele
        Image{
            width: explore_page.width/3
            height: width
            source: img
            fillMode: Image.PreserveAspectCrop//Image.PreserveAspectFit
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
        id: display_image
        width: parent.width
        height: width
        z: 2
        anchors.verticalCenter: parent.verticalCenter
        MouseArea{
            anchors.fill: parent
            onClicked:{
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
        cellWidth: explore_page.width/3
        cellHeight: cellWidth
        snapMode: GridView.SnapToRow
    }
}

