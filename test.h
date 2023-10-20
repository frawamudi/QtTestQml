#ifndef TEST_H
#define TEST_H

#include <QObject>

class test : public QObject
{
    Q_OBJECT
public:
    explicit test(QObject *parent = nullptr);
    Q_INVOKABLE int getData() {return mValue; }

signals:

private:
    int mValue = 100;

};

#endif // TEST_H
