import QtQuick 2.0
import Felgo 3.0

Page {

    id: searchPage
    title: qsTr("Property Cross")

    rightBarItem: NavigationBarRow {
        ActivityIndicatorBarItem {
            visible: true
        }

        IconButtonBarItem {
            icon: IconType.heart
            title: qsTr("Favorites")
        }
    }
}
