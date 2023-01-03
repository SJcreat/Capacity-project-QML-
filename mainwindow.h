#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include <QtSql>
#include <QQuickWindow>

QT_BEGIN_NAMESPACE
namespace Ui { class MainWindow; }
QT_END_NAMESPACE

class MainWindow : public QMainWindow
{
    Q_OBJECT
enum{Category_combo,Ton_combo,Injection_combo,EXT_combo,Btn_click};
enum{CB_SQ,CB_PE_SQ,CB_A,MT_SQ,MT_PE_SQ,A,Kw,Trans_KW};
public:
    MainWindow(QWidget *parent = nullptr);
    ~MainWindow();
    void setWindow(QQuickWindow* Window);
    Q_INVOKABLE void category_index(int combo,int index);

private slots:

    void on_Category_currentIndexChanged(int index);

    void on_Search_clicked();

private:
    Ui::MainWindow *ui;
    QList<QList<QString>> category;
    QList<QString> TBG5;
    QList<QString> TEG5;
    QList<QString> DLG5;
    QList<QString> NCG5;
    QList<QString> VHG5;
    QList<QString> TEA5;
    QList<QString> DLA5;
    QList<QString> VHARS;
    QList<QString> VHLRS;
    QList<QString> THA5;
    QList<QString> VHS;

    QList<QList<QString>> injection;
    QList<QString> TBG5_IJ;
    QList<QString> TEG5_IJ;
    QList<QString> DLG5_IJ;
    QList<QString> NCG5_IJ;
    QList<QString> VHG5_IJ;
    QList<QString> TEA5_IJ;
    QList<QString> DLA5_IJ;
    QList<QString> VHARS_IJ;
    QList<QString> VHLRS_IJ;
    QList<QString> THA5_IJ;
    QList<QString> VHS_IJ;

    QSqlDatabase db;
    float motor_current;
    double injection_current;
    double total_I;
    double Capacity_Kw;
    QList<QPair<float,QPair<QString,QString>>> KCS_C;
    QList<int> CB;
     QString select_sql(QSqlDatabase db,QString table,QString colum,QString record);

     void motor_cal(QString category,QString Ton,QString injection);
     void injection_cal(QString category,QString injection);
     QString injection_change(QString category,QString injection);

    QQuickWindow* mMainview;

signals:
     void changeQmlText(int Obj,QString str);
     void insertQmlitem(QString str);
     void clearitemsignal();
     void insertQmlitemij(QString str);
     void clearitemsignalij();
};
#endif // MAINWINDOW_H
