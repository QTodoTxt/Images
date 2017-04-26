pragma Singleton
import QtQuick  2.5

QtObject {
    property SystemPalette systemPalette: SystemPalette { }


    property int mediumSpace: 10
    property int smallSpace: 5
    property int tinySpace: 2

    property string name: "dark"
    property string pathPrefix: "./Theme/" //this will later be sth like qrc:///.../Theme/

    property var mapNameSource: {
        "document-new": "",
        "document-open": "",
        "list-add": "TaskCreate.png",
        "list-remove": "TaskDelete.png",
        "document-edit": "TaskEdit.png",
        "checkmark": "TaskComplete.png",
        "arrow-up": "TaskPriorityIncrease.png",
        "arrow-down": "TaskPriorityDecrease.png",
        "search": "ActionSearch.png",
        "view-filter": "sidepane.png",
        "show-completed": "show_completed.png", //FIXME search default icon-name
        "future": "future.png", //FIXME search default icon-name
        "archive": "archive.png", //FIXME search default icon-name
        "addLink": "link.png", //FIXME search default icon-name
        "help-about": "" //FIXME search default icon-name
    }

    function iconSource(iconName) {
        if (mapNameSource[iconName])
            return pathPrefix + name + "/resources/" + mapNameSource[iconName]
        else return ""
    }
}
