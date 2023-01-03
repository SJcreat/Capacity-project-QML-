#include "mainwindow.h"
#include "qobjectdefs.h"
#include "ui_mainwindow.h"
#include <QtSql>
#include <qdebug.h>
#include <QQuickItem>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include <QCoreApplication>






MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::MainWindow)
{
    ui->setupUi(this);
    db=QSqlDatabase::addDatabase("QSQLITE");
    //db.setDatabaseName("C:/Users/LEESANGJUN/Documents/Capacitytable/capacitytables.db");
    QString nowpath=QCoreApplication::applicationDirPath();
    nowpath+="/capacitytables.db";
    db.setDatabaseName(nowpath);

    if(!db.open())
    {
        qDebug()<<"/manual";
    }
    TBG5<<"TB090G5"<<"TB120G5"<<"TB160G5"<<"TB200G5"<<"TB240G5"<<"TB280G5"<<"TB380G5"<<"TB480G5"<<"TB580G5"<<"TB680G5"<<"TB880G5";
    DLG5<<"DL450G5"<<"DL550G5"<<"DL650G5"<<"DL850G5"<<"DL1050G5"<<"DL1300G5"<<"DL1800G5"<<"DL2300G5"<<"DL2700G5"<<"DL3300G5";
    TEG5<<"TE050G5"<<"TE110G5"<<"TE170G5"<<"TE220G5"<<"TE280G5"<<"TE350G5"<<"TE400G5"<<"TE280WG5";
    NCG5<<"NC130G5"<<"NC220G5";
    VHG5<<"VH100RG5"<<"VH150RG5"<<"VH200RG5"<<"VH250RG5"<<"VH300RG5";
    DLA5<<"DL450A5"<<"DL550A5"<<"DL650A5"<<"DL850A5"<<"DL1050A5"<<"DL1300A5"<<"DL1800A5"<<"DL2300A5"<<"DL2700A5"<<"DL3300A5";
    TEA5<<"TE050A5"<<"TE110A5"<<"TE170A5"<<"TE220A5"<<"TE280A5"<<"TE350A5"<<"TE400A5"<<"TE450A5"<<"TE550A5"<<"TE650A5"<<"TE850A5";
    VHARS<<"VHA50RS"<<"VHA75RS"<<"VHA100RS"<<"VHA120RS"<<"VHA150RS"<<"VHA200RS";
    VHLRS<<"VHL250RS"<<"VHL350RS"<<"VHL450RS";
    THA5<<"TH100A5"<<"TH130A5"<<"TH160A5"<<"TH190A5"<<"TH240A5"<<"TH280A5"<<"TH380A5"<<"TH400A5"<<"TH480A5";
    VHS<<"VH50S"<<"VH75S"<<"VH100S"<<"VH120S";

    category<<TBG5<<DLG5<<TEG5<<NCG5<<VHG5<<DLA5<<TEA5<<VHARS<<VHLRS<<THA5<<VHS;


    TBG5_IJ<<"IB2.6"<<"IB2.8"<<"IB5.8"<<"IB6.4"<<"IB10.4"<<"IB13.2"<<"IB21.4"<<"IB26.1"<<"IB42.0"<<"IB59.0"<<"IB89.0"<<"NT";
    DLG5_IJ<<"IH28.0"<<"IH42.0"<<"IH59.0"<<"IH88.0"<<"IH119.0"<<"IH153.0"<<"IH215.0"<<"IH317.0";
    TEG5_IJ<<"IE1.25"<<"IE2.6"<<"IE3.7"<<"IE5.2"<<"IE7.2"<<"IE10.0"<<"IE13.6"<<"IE17.0";
    NCG5_IJ<<"IC2.4"<<"IC5.1";
    VHG5_IJ<<"IHV2.8"<<"IHV4.7"<<"IHV8.6"<<"IHV10.9"<<"IHV13.3";
    DLA5_IJ<<"IH28.0"<<"IH42.0"<<"IH59.0"<<"IH88.0"<<"IH119.0"<<"IH153.0"<<"IH215.0"<<"IH333.0";
    TEA5_IJ<<"IE1.25"<<"IE2.6"<<"IE3.7"<<"IE5.2"<<"IE7.2"<<"IE10.0"<<"IE13.6"<<"IE17.0"<<"IE28.0"<<"IE40.0"<<"IE57.0"<<"IE64.0"<<"IE80.0";
    VHARS_IJ<<"IHV1.4"<<"IHV2.0"<<"IHV2.8"<<"IHV3.9"<<"IHV4.7"<<"IHV7.4";
    VHLRS_IJ<<"IHV7.4"<<"IHV10.9"<<"IHV13.3";
    THA5_IJ<<"IH1.5"<<"IH3.0"<<"IH6.0"<<"IH10.0"<<"IH12.5"<<"IH18.0";
    VHS_IJ<<"IHV1.4"<<"IHV2.0"<<"IHV2.8"<<"IHV3.9";

    injection<<TBG5_IJ<<DLG5_IJ<<TEG5_IJ<<NCG5_IJ<<VHG5_IJ<<DLA5_IJ<<TEA5_IJ<<VHARS_IJ<<VHLRS_IJ<<THA5_IJ<<VHS_IJ;

    KCS_C<<make_pair(15.3,std::make_pair("1.5","1.5"))<<make_pair(21.1,std::make_pair("2.5","2.5"))<<make_pair(28.1,std::make_pair("4","4"))<<make_pair(36.1,std::make_pair("6","6"))<<
           make_pair(50.1,std::make_pair("10","10"))<<make_pair(66.1,std::make_pair("16","16"))<<make_pair(84.1,std::make_pair("25","16"))<<make_pair(104.1,std::make_pair("35","16"))<<
           make_pair(125.1,std::make_pair("50","25"))<<make_pair(160.1,std::make_pair("70","35"))<<make_pair(194.1,std::make_pair("95","50"))<<
           make_pair(225.1,std::make_pair("120","70"))<<make_pair(260.1,std::make_pair("150","95"))<<make_pair(297.1,std::make_pair("185","95"))<<
           make_pair(350.1,std::make_pair("240","120"))<<make_pair(383.1,std::make_pair("120*2","120"))<<make_pair(441.1,std::make_pair("150*2","150"))<<
           make_pair(504.1,std::make_pair("185*2","185"))<<make_pair(595.1,std::make_pair("240*2","240"))<<make_pair(662.1,std::make_pair("150*3","240"))<<
           make_pair(756.1,std::make_pair("185*3","150*2"))<<make_pair(892.1,std::make_pair("240*3","185*2"))<<make_pair(1050.1,std::make_pair("240*4","240*2"))<<
           make_pair(1112,std::make_pair("185*5","240*2"))<<make_pair(1312,std::make_pair("240*5","240*2"));

    CB<<15<<20<<30<<40<<50<<60<<75<<100<<125<<150<<175<<200<<225<<250<<300<<400<<500<<600<<700<<800;
    ui->Ton->addItems(category.at(0));
    ui->Injection->addItems(injection.at(0));

    QQuickWindow::setGraphicsApi(QSGRendererInterface::OpenGL);
    ui->quickWidget->setSource(QUrl("qrc:/new/prefix1/test.qml"));
    ui->quickWidget->show();

    auto obj = ui->quickWidget->rootObject();
    QQmlApplicationEngine engine;
    engine.load(QUrl("qrc:/new/prefix1/test.qml"));
    QObject *root=engine.rootObjects()[0];


    ui->quickWidget->rootContext()->setContextProperty("addresscpp",this);

    this->setWindow(qobject_cast<QQuickWindow*>(root));
    QObject::connect(this,SIGNAL(changeQmlText(int,QString)),obj,SLOT(changeText(int,QString)));
    //    emit changeQmlText(1,"is me");

    QObject::connect(this,SIGNAL(insertQmlitem(QString)),obj,SLOT(insertTon(QString)));
    QObject::connect(this,SIGNAL(clearitemsignal()),obj,SLOT(clearitem()));

    QObject::connect(this,SIGNAL(insertQmlitemij(QString)),obj,SLOT(insertij(QString)));
    QObject::connect(this,SIGNAL(clearitemsignalij()),obj,SLOT(clearitemij()));
//    QObject::connect(obj,SIGNAL(qmltocpp(int)),this,SLOT(category_index(int)));

    ui->Category->setCurrentIndex(0);


}

MainWindow::~MainWindow()
{
    delete ui;
}

void MainWindow::setWindow(QQuickWindow *Window)
{
    mMainview=Window;
}




void MainWindow::on_Category_currentIndexChanged(int index)
{
    ui->Ton->clear();
    ui->Ton->addItems(category.at(index));
    emit clearitemsignal();
    emit clearitemsignalij();
    for(int i=0; i<category.at(index).count();i++){
        emit insertQmlitem(category.at(index).at(i));
    }
    for(int i=0; i<injection.at(index).count();i++){
        emit insertQmlitemij(injection.at(index).at(i));
    }
    ui->Injection->clear();
    ui->Injection->addItems(injection.at(index));
}


void MainWindow::on_Search_clicked()
{
    Capacity_Kw=0;
    int EXT_I=30+30*ui->EXT_I->currentIndex();
    int CB_I;


    motor_cal(ui->Category->currentText(),ui->Ton->currentText(),ui->Injection->currentText());

    injection_cal(ui->Category->currentText(),ui->Injection->currentText());

    total_I=motor_current+injection_current*0.3+10;
    ui->Current->setText(QString::number(total_I,'f',2));
    ui->Capacity->setText((QString::number(Capacity_Kw,'f',2)));

    emit changeQmlText(A,ui->Current->text());
    emit changeQmlText(Kw,ui->Capacity->text());

    for(int i=0;i<CB.count();i++){  //메인차단기용량
        if(CB.at(i)>total_I){
            ui->CB_Kw->setText(QString("%1").arg(CB.at(i)));
            CB_I=CB.at(i);
            emit changeQmlText(CB_A,ui->CB_Kw->text());
            break;
        }
    }

    for(int i=0;i<KCS_C.count();i++){ // 메인차단기 SQ
        if(KCS_C.at(i).first>CB_I){
            ui->CB_SQ->setText(KCS_C.at(i).second.first);
            ui->CB_SQ_PE->setText(KCS_C.at(i).second.second);
            emit changeQmlText(CB_SQ,ui->CB_SQ->text());
            emit changeQmlText(CB_PE_SQ,ui->CB_SQ_PE->text());
            break;
        }
    }
    for(int i=0;i<KCS_C.count();i++){ // 메인터미널 SQ
        if(KCS_C.at(i).first>(total_I+EXT_I)*1.25){
            ui->Terminal_SQ->setText(KCS_C.at(i).second.first);
            ui->Terminal_SQ_PE->setText(KCS_C.at(i).second.second);
            emit changeQmlText(MT_SQ,ui->Terminal_SQ->text());
            emit changeQmlText(MT_PE_SQ,ui->Terminal_SQ_PE->text());
            break;
        }
    }

    int tr=total_I*380*sqrt(3)/1000/5;
    ui->Trans->setText(QString("%1").arg(5*(tr+1)));
    emit changeQmlText(Trans_KW,ui->Trans->text());

}

QString MainWindow::select_sql(QSqlDatabase db, QString table, QString colum, QString record)
{
    QSqlQuery query(db);
    query.exec(QString("select %1 from %3 WHERE Standard='%2'").arg(colum).arg(record).arg(table));


    while (query.next())
    {
        return query.value(0).toString();
    }
    return "";
}

void MainWindow::motor_cal(QString category, QString Ton, QString injection)
{
    QString ij=injection_change(category,injection);
    motor_current=0.00;
    int count=4;
    if(category=="TEG5"|| category=="TEA5"){
        count=1;
        Ton=ij+"_"+category.right(2);
    }
    else if(category=="NCG5"|| category=="VHARS"||category=="VHLRS"|| category=="VHG5")
    {
        count=2;
    }
    if(category=="DLA5" ||category=="THA5"){
        Ton=ij;
    }


    for(int i=0; i<count;i++){
        if(i==0){
            motor_current+=1000*select_sql(db,QString("M%1").arg(i+1),"Cool_pump",Ton).toFloat()/sqrt(3)/380;

        }
        motor_current+=select_sql(db,QString("M%1").arg(i+1),"A",Ton).toFloat();
        Capacity_Kw+=select_sql(db,QString("M%1").arg(i+1),"Kw",Ton).toFloat();
    }

}

void MainWindow::injection_cal(QString category, QString injection)
{
    injection_current=0.00;
    float many;
    float W;
    if(category=="NCG5"){// NC는 사출대가 2개라서 2번 적용
        for(int i=0;i<7;i++){
            W=select_sql(db,QString("Heater"),"W",QString("%1%2").arg(injection).arg(i+1)).toFloat();
            many=select_sql(db,QString("Heater"),"many",QString("%1%2").arg(injection).arg(i+1)).toFloat();
            if(many==3){
                injection_current+=W*many/sqrt(3)/380;
            }
            else{
                injection_current+=W*many/380;
            }
            Capacity_Kw+=W*many/1000;
        }
    }

    for(int i=0;i<7;i++){
        W=select_sql(db,QString("Heater"),"W",QString("%1%2").arg(injection).arg(i+1)).toFloat();
        many=select_sql(db,QString("Heater"),"many",QString("%1%2").arg(injection).arg(i+1)).toFloat();
        if(many==3){
            injection_current+=W*many/sqrt(3)/380;
        }
        else{
            injection_current+=W*many/380;

        }
        Capacity_Kw+=W*many/1000;
    }





}

QString MainWindow::injection_change(QString category, QString injection)
{
    int change_leng=2;
    double tr_int;
    if(category.left(2)=="VH"){
        change_leng=3;
    }
    QString tr=injection.left(change_leng);
    tr_int=injection.remove(0,change_leng).toDouble();
    tr_int=tr_int*100;
    return QString("%1%2").arg(tr).arg(tr_int);
}

void MainWindow::category_index(int combo,int index)
{
    switch(combo){
    case Category_combo:
        ui->Category->setCurrentIndex(index);
        break;
    case Ton_combo:
        ui->Ton->setCurrentIndex(index);
        break;
    case Injection_combo:
        ui->Injection->setCurrentIndex(index);
        break;
    case EXT_combo:
        ui->EXT_I->setCurrentIndex(index);
        break;
    case Btn_click:
        ui->Search->click();
    }

}



