import QtQuick 2.9
import QtQuick.Window 2.12
import QtQuick.Controls 2.4




Rectangle{
    id : roots
    color: "#FFFFFF"
    width:  300
    height: 300
    signal qmltocpp(int intData)
    Button{
        id: applybutton
        anchors.left : subText3.right
        anchors.leftMargin : 22
        y:47
        width: 100
        height: 50
        icon.source:"/new/prefix1/Image/btn_image.png"
        icon.height: 50
        icon.width: 100


            background: Rectangle {
                border.color: "#FFFFFF"


        }



        onClicked:{
            addresscpp.category_index(4,0)
            subText4.visible=true;
            appeartxt()
        }
    }

    Text{
        id: subText
        color: "#808080"
        text: qsTr("기종")
        font.pixelSize: 15
        font.bold: true
        x:category.x+25
        y:30
    }
    Text{
        id: subText1
        color: subText.color
        text: qsTr("톤수")
        font.pixelSize: 15
        font.bold: true
        x:ton.x+42
        y:30
    }
    Text{
        id: subText2
        color: subText.color
        text: qsTr("사출대")
        font.pixelSize: 15
        font.bold: true
        x:345
        y:30
    }
    Text{
        id: subText3
        color: subText.color
        text: qsTr("외부콘센트")
        font.pixelSize: 15
        font.bold: true
        x:450
        y:30
    }
    //    Container{
    //        id:txtcolunm
    Text{
        id: subText4
        color: subText.color
        text: qsTr("메인차단기")
        font.pixelSize: 15
        font.bold: true
        x:80
        y:200
        opacity: 0.0

    }
    Text{
        id: subText5
        color: subText.color
        text: qsTr("메인터미널")
        font.pixelSize: 15
        font.bold: true
        x:80
        y:250
        opacity: 0.0
    }
    Text{
        id: subText6
        color: subText.color
        text: qsTr("메인전선(SQ)")
        font.pixelSize: 15
        font.bold: true
        x:170
        y:160
        opacity: 0.0
    }
    Text{
        id: subText7
        color: subText.color
        text: qsTr("접지전선(SQ)")
        font.pixelSize: 15
        font.bold: true
        x:290
        y:160
        opacity: 0.0
    }
    Text{
        id: subText8
        color: subText.color
        text: qsTr("차단기 용량(A)")
        font.pixelSize: 15
        font.bold: true
        x:410
        y:160
        opacity: 0.0
    }
    Text{
        id: subText9
        color: subText.color
        text: qsTr("부하전류(A)")
        font.pixelSize: 15
        font.bold: true
        x:170
        y:300
        opacity: 0.0
    }
    Text{
        id: subText10
        color: subText.color
        text: qsTr("총 전기용량(Kw)")
        font.pixelSize: 15
        font.bold: true
        x:290
        y:300
        opacity: 0.0
    }
    Text{
        id: subText11
        color: subText.color
        text: qsTr("메인트랜스(Kw)")
        font.pixelSize: 15
        font.bold: true
        x:410
        y:300
        opacity: 0.0
    }
    Text{
        id: subText12
        color: subText.color
        text: qsTr("기계정보")
        font.pixelSize: 15
        font.bold: true
        x:80
        y:340
        opacity: 0.0
    }
    Text{
        id: txt_CB_SQ
        color: subText.color
        text: qsTr("-")
        font.pixelSize: 15
        font.bold: true
        x:200
        y:200
        opacity: 0.0
    }
    Text{
        id: txt_CB_PESQ
        color: subText.color
        text: qsTr("-")
        font.pixelSize: 15
        font.bold: true
        x:320
        y:200
        opacity: 0.0
    }
    Text{
        id: txt_CB_A
        color: subText.color
        text: qsTr("-")
        font.pixelSize: 15
        font.bold: true
        x:440
        y:200
        opacity: 0.0
    }
    Text{
        id: txt_Main_SQ
        color: subText.color
        text: qsTr("-")
        font.pixelSize: 15
        font.bold: true
        x:200
        y:250
        opacity: 0.0
    }
    Text{
        id: txt_Main_PE_SQ
        color: subText.color
        text: qsTr("-")
        font.pixelSize: 15
        font.bold: true
        x:320
        y:250
        opacity: 0.0
    }
    Text{
        id: txt_Main_A
        color: subText.color
        text: qsTr("-")
        font.pixelSize: 15
        font.bold: true
        x:200
        y:340
        opacity: 0.0
    }
    Text{
        id: txt_Main_Kw
        color: subText.color
        text: qsTr("-")
        font.pixelSize: 15
        font.bold: true
        x:320
        y:340
        opacity: 0.0
    }
    Text{
        id: txt_Trans_SQ
        color: subText.color
        text: qsTr("-")
        font.pixelSize: 15
        font.bold: true
        x:440
        y:340
        opacity: 0.0
    }
    //}
    ComboBox{
        id: category
        width:90
        height:30
        font.pointSize: 15
        x:50
        y:60

        background: Rectangle {
            id: itembackg
            color: "#5CD1E5"
            border.color: "white"
            radius: height/2
        }
        delegate: ItemDelegate{
            id:itemDlgt
            width: category.width
            height:30
            padding:0

            contentItem: Text{
                id:textItem
                text: modelData
                color: hovered?"white":"#507BF6"
                font: category.font
                elide: Text.ElideRight
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
            }
            background: Rectangle{
                radius:20
                border.color:"#C0C0C0"
                color:itemDlgt.hovered?"#507BF6":"white";
                anchors.left: itemDlgt.left
                anchors.leftMargin: 0
                width:itemDlgt.width
            }
        }
        //the text in the combobox
        contentItem: Text {
            padding: 0
            text: category.displayText
            font: category.font
            color: "white"
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            elide: Text.ElideRight
        }
        //the list of elements and their style when the combobox is open
        popup: Popup {
            id:comboPopup
            y: category.y-60
            width: category.width
            height:contentItem.implicitHeigh
            padding: 0

            contentItem: ListView {
                id:listView
                implicitHeight: contentHeight
                model: category.popup.visible ? category.delegateModel : null
                populate:Transition {
                    NumberAnimation{properties: "x,y";from: 0; duration:400;easing.type: Easing.OutBack;}
                    NumberAnimation{property: "opacity"; from: 0.0; to: 1.0; duration: 500; easing.type: Easing.InQuad}
                }

            }

            background: Rectangle {

                color: "transparent"
                radius: 20
            }
        }


        model: ListModel{
            ListElement{
                text: "TBG5"
            }
            ListElement{
                text: "DLG5"
            }
            ListElement{
                text: "TEG5"
            }
            ListElement{
                text: "NCG5"
            }
            ListElement{
                text: "VHG5"
            }
            ListElement{
                text: "DLA5"
            }
            ListElement{
                text: "TEA5"
            }
            ListElement{
                text: "VHARS"
            }
            ListElement{
                text: "VHLRS"
            }
            ListElement{
                text: "THA5"
            }
            ListElement{
                text: "VHS"
            }
        }
        onCurrentIndexChanged:{
            addresscpp.category_index(0,currentIndex)
        }

    }

    ComboBox{
        id: ton
        width:120
        height:30
        font.pointSize: 15
        x:category.x+120
        y:60
        model: ListModel{
            id: tonmodel
        }

        background: Rectangle {
            id: itembackg_ton
            color: itembackg.color
            border.color: "white"
            radius: height/2
        }
        delegate: ItemDelegate{
            id:itemDlgt_ton
            width: ton.width
            height:30
            padding:0
            contentItem: Text{
                id:textItem_ton
                text: modelData
                color: hovered?"white":"#507BF6"
                font: ton.font
                elide: Text.ElideRight
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
            }
            background: Rectangle{
                radius:20
                border.color:"#C0C0C0"
                color:itemDlgt_ton.hovered?"#507BF6":"white";
                anchors.left: itemDlgt_ton.left
                anchors.leftMargin: 0
                width:itemDlgt_ton.width
            }
        }
        //the text in the combobox
        contentItem: Text {
            text: ton.displayText
            font: ton.font
            color: "white"
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            elide: Text.ElideRight
        }
        //the list of elements and their style when the combobox is open
        popup: Popup {
            id:comboPopup_ton
            y: ton.y-60
            width: ton.width
            height:contentItem.implicitHeigh
            padding: 0
            contentItem: ListView {
                id:listView_ton
                implicitHeight: contentHeight
                model: ton.popup.visible ? ton.delegateModel : null
                populate:Transition {
                    NumberAnimation{ properties: "x,y";duration:400;easing.type: Easing.OutBack;}
                    NumberAnimation{property: "opacity"; from: 0.0; to: 1.0; duration: 500; easing.type: Easing.InQuad}

                }

            }

            background: Rectangle {
                color: "transparent"
                radius: 20
            }
        }
        onCurrentIndexChanged:{
            addresscpp.category_index(1,currentIndex)
        }
    }



    ComboBox{
        id: inject
        width:100
        height:30
        font.pointSize: 15
        x:ton.x+150
        y:60
        model: ListModel{
            id: injectmodel
        }

        background: Rectangle {
            id: itembackg_inject
            color: itembackg.color
            border.color: "white"
            radius: height/2
        }
        delegate: ItemDelegate{
            id:itemDlgt_inject
            width: inject.width
            height:30
            padding:0
            contentItem: Text{
                id:textItem_inject
                text: modelData
                color: hovered?"white":"#507BF6"
                font: inject.font
                elide: Text.ElideRight
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
            }
            background: Rectangle{
                radius:20
                border.color:"#C0C0C0"
                color:itemDlgt_inject.hovered?"#507BF6":"white";
                anchors.left: itemDlgt_inject.left
                anchors.leftMargin: 0
                width:itemDlgt_inject.width
            }
        }
        //the text in the combobox
        contentItem: Text {
            text: inject.displayText
            font: inject.font
            color: "white"
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            elide: Text.ElideRight
        }
        //the list of elements and their style when the combobox is open
        popup: Popup {
            id:comboPopup_inject
            y: inject.y-60
            width: inject.width
            height:contentItem.implicitHeigh
            padding: 0
            contentItem: ListView {
                id:listView_inject
                implicitHeight: contentHeight
                model: inject.popup.visible ? inject.delegateModel : null
                populate:Transition {
                    NumberAnimation{ properties: "x,y";duration:400;easing.type: Easing.OutBack;}
                    NumberAnimation{property: "opacity"; from: 0.0; to: 1.0; duration: 500; easing.type: Easing.InQuad}

                }

            }

            background: Rectangle {
                color: "transparent"
                radius: 20
            }
        }
        onCurrentIndexChanged:{
            addresscpp.category_index(2,currentIndex)
        }
    }

    ComboBox{
        id: ext
        width:100
        height:30
        font.pointSize: 15
        x:inject.x+120
        y:60
        model: ListModel{
            ListElement{
                text: "16*2"
            }
            ListElement{
                text: "32*2"
            }
        }

        background: Rectangle {
            id: itembackg_ext
            color: itembackg.color
            border.color: "white"
            radius: height/2
        }
        delegate: ItemDelegate{
            id:itemDlgt_ext
            width: ext.width
            height:30
            padding:0
            contentItem: Text{
                id:textItem_ext
                text: modelData
                color: hovered?"white":"#507BF6"
                font: ext.font
                elide: Text.ElideRight
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
            }
            background: Rectangle{
                radius:20
                border.color:"#C0C0C0"
                color:itemDlgt_ext.hovered?"#507BF6":"white";
                anchors.left: itemDlgt_ext.left
                anchors.leftMargin: 0
                width:itemDlgt_ext.width
            }
        }
        //the text in the combobox
        contentItem: Text {
            text: ext.displayText
            font: ext.font
            color: "white"
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            elide: Text.ElideRight
        }
        //the list of elements and their style when the combobox is open
        popup: Popup {
            id:comboPopup_ext
            y: ext.y-60
            width: ext.width
            height:contentItem.implicitHeigh
            padding: 0
            contentItem: ListView {
                id:listView_ext
                implicitHeight: contentHeight
                model: ext.popup.visible ? ext.delegateModel : null
                populate:Transition {
                    NumberAnimation{ properties: "x,y";duration:400;easing.type: Easing.OutBack;}
                    NumberAnimation{property: "opacity"; from: 0.0; to: 1.0; duration: 500; easing.type: Easing.InQuad}

                }

            }

            background: Rectangle {
                color: "transparent"
                radius: 20
            }
        }
        onCurrentIndexChanged:{
            addresscpp.category_index(3,currentIndex)

        }
    }

    function changeText(i: int,str: string){
        switch(i){
        case 0:
            txt_CB_SQ.text = qsTr(str)
            break;
        case 1:
            txt_CB_PESQ.text = qsTr(str)
            break;
        case 2:
            txt_CB_A.text = qsTr(str)
            break;
        case 3:
            txt_Main_SQ.text = qsTr(str)
            break;
        case 4:
            txt_Main_PE_SQ.text = qsTr(str)
            break;
        case 5:
            txt_Main_A.text = qsTr(str)
            break;
        case 6:
            txt_Main_Kw.text = qsTr(str)
            break;
        case 7:
            txt_Trans_SQ.text = qsTr(str)
            break;

        }

    }
    SequentialAnimation {
        id:s1;

        ParallelAnimation{
            id:c1
            NumberAnimation {id:t3; target: subText6; property: "opacity"; from:0.0;to: 1.0; duration: 500}
            NumberAnimation{id:a3; target: subText6; properties: "x";from:subText6.x-30;to:subText6.x;duration:500;easing.type: Easing.OutBack;}
            NumberAnimation {id:t4; target: subText7; property: "opacity"; from:0.0;to: 1.0; duration: 500}
            NumberAnimation{id:a4; target: subText7; properties: "x";from:subText7.x-30;to:subText7.x;duration:500;easing.type: Easing.OutBack;}
            NumberAnimation {id:t5; target: subText8; property: "opacity"; from:0.0;to: 1.0; duration: 500}
            NumberAnimation{id:a5; target: subText8; properties: "x";from:subText8.x-30;to:subText8.x;duration:500;easing.type: Easing.OutBack;}

        }
        ParallelAnimation{
            id:c2
            NumberAnimation {id:t1; target: subText4; property: "opacity"; from:0.0;to: 1.0; duration: 500}
            NumberAnimation{id:a1; target: subText4; properties: "x";from:subText4.x-30;to:subText4.x;duration:500;easing.type: Easing.OutBack;}
            NumberAnimation {id:t10; target: txt_CB_SQ; property: "opacity"; from:0.0;to: 1.0; duration: 500}
            NumberAnimation{id:a10; target: txt_CB_SQ; properties: "x";from:txt_CB_SQ.x-30;to:txt_CB_SQ.x;duration:500;easing.type: Easing.OutBack;}
            NumberAnimation {id:t11; target: txt_CB_PESQ; property: "opacity"; from:0.0;to: 1.0; duration: 500}
            NumberAnimation{id:a11; target: txt_CB_PESQ; properties: "x";from:txt_CB_PESQ.x-30;to:txt_CB_PESQ.x;duration:500;easing.type: Easing.OutBack;}
            NumberAnimation {id:t12; target: txt_CB_A; property: "opacity"; from:0.0;to: 1.0; duration: 500}
            NumberAnimation{id:a12; target: txt_CB_A; properties: "x";from:txt_CB_A.x-30;to:txt_CB_A.x;duration:500;easing.type: Easing.OutBack;}


        }
        ParallelAnimation{
            id:c3
            NumberAnimation {id:t2; target: subText5; property: "opacity"; from:0.0;to: 1.0; duration: 500}
            NumberAnimation{id:a2; target: subText5; properties: "x";from:subText5.x-30;to:subText5.x;duration:500;easing.type: Easing.OutBack;}
            NumberAnimation {id:t13; target: txt_Main_SQ; property: "opacity"; from:0.0;to: 1.0; duration: 500}
            NumberAnimation{id:a13; target: txt_Main_SQ; properties: "x";from:txt_Main_SQ.x-30;to:txt_Main_SQ.x;duration:500;easing.type: Easing.OutBack;}
            NumberAnimation {id:t14; target: txt_Main_PE_SQ; property: "opacity"; from:0.0;to: 1.0; duration: 500}
            NumberAnimation{id:a14; target: txt_Main_PE_SQ; properties: "x";from:txt_Main_PE_SQ.x-30;to:txt_Main_PE_SQ.x;duration:500;easing.type: Easing.OutBack;}
        }
        ParallelAnimation{
            id:c4
            NumberAnimation {id:t6; target: subText9; property: "opacity"; from:0.0;to: 1.0; duration: 500}
            NumberAnimation{id:a6; target: subText9; properties: "x";from:subText9.x-30;to:subText9.x;duration:500;easing.type: Easing.OutBack;}
            NumberAnimation {id:t7; target: subText10; property: "opacity"; from:0.0;to: 1.0; duration: 500}
            NumberAnimation{id:a7; target: subText10; properties: "x";from:subText10.x-30;to:subText10.x;duration:500;easing.type: Easing.OutBack;}
            NumberAnimation {id:t8; target: subText11; property: "opacity"; from:0.0;to: 1.0; duration: 500}
            NumberAnimation{id:a8; target: subText11; properties: "x";from:subText11.x-30;to:subText11.x;duration:500;easing.type: Easing.OutBack;}
        }
        ParallelAnimation{
            id:c5
            NumberAnimation {id:t9; target: subText12; property: "opacity"; from:0.0;to: 1.0; duration: 500}
            NumberAnimation{id:a9; target: subText12; properties: "x";from:subText12.x-30;to:subText12.x;duration:500;easing.type: Easing.OutBack;}
            NumberAnimation {id:t15; target: txt_Main_A; property: "opacity"; from:0.0;to: 1.0; duration: 500}
            NumberAnimation{id:a15; target: txt_Main_A; properties: "x";from:txt_Main_A.x-30;to:txt_Main_A.x;duration:500;easing.type: Easing.OutBack;}
            NumberAnimation {id:t16; target: txt_Main_Kw; property: "opacity"; from:0.0;to: 1.0; duration: 500}
            NumberAnimation{id:a16; target: txt_Main_Kw; properties: "x";from:txt_Main_Kw.x-30;to:txt_Main_Kw.x;duration:500;easing.type: Easing.OutBack;}
            NumberAnimation {id:t17; target: txt_Trans_SQ; property: "opacity"; from:0.0;to: 1.0; duration: 500}
            NumberAnimation{id:a17; target: txt_Trans_SQ; properties: "x";from:txt_Trans_SQ.x-30;to:txt_Trans_SQ.x;duration:500;easing.type: Easing.OutBack;}
        }
    }

    //    NumberAnimation {id:t1; target: subText4; property: "opacity"; from:0.0;to: 1.0; duration: 500}
    //    NumberAnimation{id:a1; target: subText4; properties: "x";from:subText4.x-30;to:subText4.x;duration:500;easing.type: Easing.OutBack;}
    //    NumberAnimation {id:t2; target: subText5; property: "opacity"; from:0.0;to: 1.0; duration: 500}
    //    NumberAnimation{id:a2; target: subText5; properties: "x";from:subText5.x-30;to:subText5.x;duration:500;easing.type: Easing.OutBack;}
    //    NumberAnimation {id:t3; target: subText6; property: "opacity"; from:0.0;to: 1.0; duration: 500}
    //    NumberAnimation{id:a3; target: subText6; properties: "x";from:subText6.x-30;to:subText6.x;duration:500;easing.type: Easing.OutBack;}
    //    NumberAnimation {id:t4; target: subText7; property: "opacity"; from:0.0;to: 1.0; duration: 500}
    //    NumberAnimation{id:a4; target: subText7; properties: "x";from:subText7.x-30;to:subText7.x;duration:500;easing.type: Easing.OutBack;}
    //    NumberAnimation {id:t5; target: subText8; property: "opacity"; from:0.0;to: 1.0; duration: 500}
    //    NumberAnimation{id:a5; target: subText8; properties: "x";from:subText8.x-30;to:subText8.x;duration:500;easing.type: Easing.OutBack;}
//    NumberAnimation {id:t6; target: subText9; property: "opacity"; from:0.0;to: 1.0; duration: 500}
//    NumberAnimation{id:a6; target: subText9; properties: "x";from:subText9.x-30;to:subText9.x;duration:500;easing.type: Easing.OutBack;}
//    NumberAnimation {id:t7; target: subText10; property: "opacity"; from:0.0;to: 1.0; duration: 500}
//    NumberAnimation{id:a7; target: subText10; properties: "x";from:subText10.x-30;to:subText10.x;duration:500;easing.type: Easing.OutBack;}
//    NumberAnimation {id:t8; target: subText11; property: "opacity"; from:0.0;to: 1.0; duration: 500}
//    NumberAnimation{id:a8; target: subText11; properties: "x";from:subText11.x-30;to:subText11.x;duration:500;easing.type: Easing.OutBack;}
//    NumberAnimation {id:t9; target: subText12; property: "opacity"; from:0.0;to: 1.0; duration: 500}
//    NumberAnimation{id:a9; target: subText12; properties: "x";from:subText12.x-30;to:subText12.x;duration:500;easing.type: Easing.OutBack;}
    //    NumberAnimation {id:t10; target: txt_CB_SQ; property: "opacity"; from:0.0;to: 1.0; duration: 500}
    //    NumberAnimation{id:a10; target: txt_CB_SQ; properties: "x";from:txt_CB_SQ.x-30;to:txt_CB_SQ.x;duration:500;easing.type: Easing.OutBack;}
    //    NumberAnimation {id:t11; target: txt_CB_PESQ; property: "opacity"; from:0.0;to: 1.0; duration: 500}
    //    NumberAnimation{id:a11; target: txt_CB_PESQ; properties: "x";from:txt_CB_PESQ.x-30;to:txt_CB_PESQ.x;duration:500;easing.type: Easing.OutBack;}
    //    NumberAnimation {id:t12; target: txt_CB_A; property: "opacity"; from:0.0;to: 1.0; duration: 500}
    //    NumberAnimation{id:a12; target: txt_CB_A; properties: "x";from:txt_CB_A.x-30;to:txt_CB_A.x;duration:500;easing.type: Easing.OutBack;}
    //    NumberAnimation {id:t13; target: txt_Main_SQ; property: "opacity"; from:0.0;to: 1.0; duration: 500}
    //    NumberAnimation{id:a13; target: txt_Main_SQ; properties: "x";from:txt_Main_SQ.x-30;to:txt_Main_SQ.x;duration:500;easing.type: Easing.OutBack;}
    //    NumberAnimation {id:t14; target: txt_Main_PE_SQ; property: "opacity"; from:0.0;to: 1.0; duration: 500}
    //    NumberAnimation{id:a14; target: txt_Main_PE_SQ; properties: "x";from:txt_Main_PE_SQ.x-30;to:txt_Main_PE_SQ.x;duration:500;easing.type: Easing.OutBack;}
//    NumberAnimation {id:t15; target: txt_Main_A; property: "opacity"; from:0.0;to: 1.0; duration: 500}
//    NumberAnimation{id:a15; target: txt_Main_A; properties: "x";from:txt_Main_A.x-30;to:txt_Main_A.x;duration:500;easing.type: Easing.OutBack;}
//    NumberAnimation {id:t16; target: txt_Main_Kw; property: "opacity"; from:0.0;to: 1.0; duration: 500}
//    NumberAnimation{id:a16; target: txt_Main_Kw; properties: "x";from:txt_Main_Kw.x-30;to:txt_Main_Kw.x;duration:500;easing.type: Easing.OutBack;}
//    NumberAnimation {id:t17; target: txt_Trans_SQ; property: "opacity"; from:0.0;to: 1.0; duration: 500}
//    NumberAnimation{id:a17; target: txt_Trans_SQ; properties: "x";from:txt_Trans_SQ.x-30;to:txt_Trans_SQ.x;duration:500;easing.type: Easing.OutBack;}
    function insertTon(tx: string){
        tonmodel.append({tx})
        ton.currentIndex=0
    }
    function clearitem(){
        tonmodel.clear()
    }
    function insertij(tx: string){
        injectmodel.append({tx})
        inject.currentIndex=0
    }
    function clearitemij(){
        injectmodel.clear()
    }
    function appeartxt(){
        //        subText4.visible=true
        //        subText5.visible=true
        //        subText6.visible=true
        //        subText7.visible=true
        //        subText8.visible=true
        //        subText9.visible=true
        //        subText10.visible=true
        //        subText11.visible=true
        //        subText12.visible=true
        //        txt_CB_SQ.visible=true
        //        txt_CB_PESQ.visible=true
        //        txt_CB_A.visible=true
        //        txt_Main_A.visible=true
        //        txt_Main_SQ.visible=true
        //        txt_Main_PE_SQ.visible=true
        //        txt_Main_Kw.visible=true
        //        txt_Trans_SQ.visible=true
                subText4.opacity=0.0
                subText5.opacity=0.0
                subText6.opacity=0.0
                subText7.opacity=0.0
                subText8.opacity=0.0
                subText9.opacity=0.0
                subText10.opacity=0.0
                subText11.opacity=0.0
                subText12.opacity=0.0
                txt_CB_SQ.opacity=0.0
                txt_CB_PESQ.opacity=0.0
                txt_CB_A.opacity=0.0
                txt_Main_A.opacity=0.0
                txt_Main_SQ.opacity=0.0
                txt_Main_PE_SQ.opacity=0.0
                txt_Main_Kw.opacity=0.0
                txt_Trans_SQ.opacity=0.0
        //        t1.start()
        //        a1.start()
        //        t2.start()
        //        a2.start()
        s1.start()
        //        t3.start()
        //        a3.start()
        //        t4.start()
        //        a4.start()
        //        t5.start()
        //        a5.start()
//        t6.start()
//        a6.start()
//        t7.start()
//        a7.start()
//        t8.start()
//        a8.start()
//        t9.start()
//        a9.start()
        //        t10.start()
        //        a10.start()
        //        t11.start()
        //        a11.start()
        //        t12.start()
        //        a12.start()
        //        t13.start()
        //        a13.start()
        //        t14.start()
        //        a14.start()
//        t15.start()
//        a15.start()
//        t16.start()
//        a16.start()
//        t17.start()
//        a17.start()
        //        for(var i=0;i<txtcolunm.count();i++){
        //            txtcolunm.contentItem(i)
        //        }
    }


}
