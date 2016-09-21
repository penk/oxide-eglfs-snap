import QtQuick 2.0
import com.canonical.Oxide 1.0

Rectangle {
    width: 800
    height: 600
    WebView {
        //url: 'http://feature-sliding-wall.ver.display.miappi.com/redbull'
        //url: 'http://showcase.miappi.com/mothercare/latest'
        url: 'http://events.miappi.com/lonelyplanet?reset=1'
	//url: 'https://playcanv.as/p/RqJJ9oU9/'
	//url: 'http://helloracer.com/webgl/'
	//url: 'http://codepen.io/eltonkamami/pen/ECrKd'
        preferences.localStorageEnabled: true
        anchors.fill: parent
        context: WebContext {
            dataPath: 'file:///tmp/'
        }
    }
}
