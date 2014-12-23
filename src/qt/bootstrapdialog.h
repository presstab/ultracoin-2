#ifndef BOOTSTRAPDIALOG_H
#define BOOTSTRAPDIALOG_H

#include <QDialog>

namespace Ui {
class BootstrapDialog;
}

class BootstrapDialog : public QDialog
{
    Q_OBJECT

public:
    explicit BootstrapDialog(QWidget *parent = 0);
    ~BootstrapDialog();

private:
    Ui::BootstrapDialog *ui;
};

#endif // BOOTSTRAPDIALOG_H
