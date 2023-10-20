import QtQuick 2.12
import QtQuick.Window 2.12


Window{
    id: mainWin
    title: "Main App"
    visible: true
    width: 600
    height: 400

    Rectangle{
        id: topbar
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        height: 50
        color: "red"
    }

    Rectangle{
        id: body
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: topbar.bottom
        anchors.bottom: parent.bottom
        color: "light blue"

    }

    Rectangle{
        id: bottombar
        anchors.left: parent.left
        anchors.right: parent.right
        height: 50
        anchors.bottom: parent.bottom
        color: "light green"

        Rectangle{
            id: iconleft
            anchors.left: parent.left
            anchors.leftMargin: 20
            width: 50
            height: 50
            color: "pink"
        }

        Rectangle{
            id: iconmiddle
            anchors.centerIn: parent
            width: 50
            height: 50
            color: "green"
        }

        Rectangle{
            id: iconright
            anchors.right: parent.right
            anchors.rightMargin: 20
            width: 50
            height: 50
            color: "orange"

            MouseArea {
                  anchors.fill: parent
                  acceptedButtons: Qt.LeftButton | Qt.RightButton
                  onClicked: (mouse)=> {
                      if (mouse.button === Qt.RightButton)
                          parent.color = 'light ';
                      else
                          parent.color = 'red';
                  }
              }
        }



    }





}
