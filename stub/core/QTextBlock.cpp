#include <QTextBlock>
#include <QTextDocument>
#include <qt.hpp>

QMETHOD2(QTextBlock, blockNumber)->Int
{
    return self->blockNumber();
}

QMETHOD2(QTextBlock, contains, Int position)->Bool
{
    return Bool::make(self->contains(position));
}

QMETHOD2(QTextBlock, document)->qt<QTextDocument>
{
    return qt<QTextDocument>::from_raw(const_cast<QTextDocument*>(self->document()));
}

QMETHOD2(QTextBlock, firstLineNumber)->Int
{
    return self->firstLineNumber();
}

QMETHOD2(QTextBlock, isValid)->Bool
{
    return Bool::make(self->isValid());
}

QMETHOD2(QTextBlock, isVisible)->Bool
{
    return Bool::make(self->isVisible());
}

QMETHOD2(QTextBlock, length)->Int
{
    return self->length();
}

QMETHOD2(QTextBlock, lineCount)->Int
{
    return self->lineCount();
}

QMETHOD2(QTextBlock, next)->box<QTextBlock>
{
    return box<QTextBlock>::make(self->next());
}

QMETHOD2(QTextBlock, position)->Int
{
    return self->position();
}

QMETHOD2(QTextBlock, previous)->box<QTextBlock>
{
    return box<QTextBlock>::make(self->previous());
}

QMETHOD2(QTextBlock, revision)->Int
{
    return self->revision();
}

QMETHOD2(QTextBlock, setLineCount, Int count)->void
{
    self->setLineCount(count);
}

QMETHOD2(QTextBlock, setRevision, Int rev)->void
{
    self->setRevision(rev);
}

QMETHOD2(QTextBlock, setUserState, Int state)->void
{
    self->setUserState(state);
}

QMETHOD2(QTextBlock, setVisible, Bool visible)->void
{
    self->setVisible(visible);
}

QMETHOD2(QTextBlock, text)->String
{
    return str::qt_to_mbt(self->text());
}

QMETHOD2(QTextBlock, userState)->Int
{
    return self->userState();
}
