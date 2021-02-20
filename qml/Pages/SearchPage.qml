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

    Column {
        id: contentCol
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.right: parent.right
        anchors.margins: contentPadding
        spacing: contentPadding

        AppText {
            id: pageDescription
            width: parent.width
            wrapMode: Text.WrapAtWordBoundaryOrAnywhere
            font.pixelSize: sp(12)
            text: qsTr("Use the form below to search for houses to buy. You can search by place name, post code or click 'My location.'")
        }

        AppText {
//            id: hint
            width: parent.width
            font: sp(12)
            color: Theme.secondaryTextColor
            font.italic: true
            wrapMode: Text.WrapAtWordBoundaryOrAnywhere
            text: qsTr("Hint: You can quickly find something by typing a location.")
        }

        AppTextField {
            id: searchInput
            width: parent.width
            showClearButton: true
            placeholderText: qsTr("Search...")
            borderWidth: 1
            borderColor: Theme.colors.secondaryBackgroundColor
            inputMethodHints: Qt.ImhNoPredictiveText
            onTextChanged: showRecentSearches()
            onEditingFinished: if (navigationStack.currentPage === searchPage)
                                   searchLocation()
        }

        Row {
            spacing: contentPadding
        }
    }

    // Actions
    function showRecentSearches() {
        //console.debug("Showing recent searches")
    }

    function searchLocation() {
        console.debug("Search triggered")
    }
}
