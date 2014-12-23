#include "bootstrapdialog.h"
#include "ui_bootstrapdialog.h"

BootstrapDialog::BootstrapDialog(QWidget *parent) :
    QDialog(parent),
    ui(new Ui::BootstrapDialog)
{
    ui->setupUi(this);
}

BootstrapDialog::~BootstrapDialog()
{
    delete ui;
}
