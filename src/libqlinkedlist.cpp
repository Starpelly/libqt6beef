#include <QLinkedListData>
#include <qlinkedlist.h>
#include "libqlinkedlist.h"
#include "libqlinkedlist.hxx"

QLinkedListData* QLinkedListData_new() {
    return new QLinkedListData();
}

void QLinkedListData_Delete(QLinkedListData* self) {
    delete self;
}
