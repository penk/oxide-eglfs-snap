import QtQuick 2.4
import com.canonical.Oxide 1.0

Rectangle {
    width: 800
    height: 600
    property variant addr: 'http://events.miappi.com/lonelyplanet?reset=1'
    Component.onCompleted: {
        if (Qt.application.arguments.length > 2) {
            var url = (Qt.application.arguments[2].split(/=/))[1];
            if (url.match(/^http/))
                addr = url;
        }
        console.log('URL: ' + addr)
    }
    WebView {
        url: addr
        preferences.localStorageEnabled: true
        anchors.fill: parent
        context: WebContext {
            dataPath: 'file:///tmp/'
        }
        onJavaScriptConsoleMessage: console.log(message)
    }
}
