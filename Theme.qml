pragma Singleton
import QtQuick  2.5

QtObject {
    property string name: "dark"
    property string pathPrefix: "./Theme/" //this will later be sth like qrc:///.../Theme/

    property var mapNameSource: {
        "document-new": "",
        "document-open": "",
        "list-add": "TaskCreate.png"
    }

    function iconSource(iconName) {
        return pathPrefix + name + "/resources/" + mapNameSource[iconName]
    }
}
