#include <QAbstractTextDocumentLayout>
#include <QTextBlock>
#include <QTextDocument>
#include <qt.hpp>

QSTATIC(QTextDocument, new)->qt<QTextDocument>
{
    return qt<QTextDocument>::make();
}

QSTATIC(QTextDocument, newWithParent, qt<QObject> parent)->qt<QTextDocument>
{
    return qt<QTextDocument>::make(parent.get());
}

QSTATIC(QTextDocument, newWithText, String text)->qt<QTextDocument>
{
    return qt<QTextDocument>::make(str::mbt_to_qt(text));
}

QSTATIC(QTextDocument, newWithTextParent, String text, qt<QObject> parent)->qt<QTextDocument>
{
    return qt<QTextDocument>::make(str::mbt_to_qt(text), parent.get());
}

QMETHOD(QTextDocument, adjustSize)->void
{
    self->adjustSize();
}

QMETHOD(QTextDocument, availableRedoSteps)->Int
{
    return self->availableRedoSteps();
}

QMETHOD(QTextDocument, availableUndoSteps)->Int
{
    return self->availableUndoSteps();
}

QMETHOD(QTextDocument, begin)->box<QTextBlock>
{
    return box<QTextBlock>::make(self->begin());
}

QMETHOD(QTextDocument, blockCount)->Int
{
    return self->blockCount();
}

QMETHOD(QTextDocument, characterCount)->Int
{
    return self->characterCount();
}

QMETHOD(QTextDocument, clear)->void
{
    self->clear();
}

QMETHOD(QTextDocument, clone)->qt<QTextDocument>
{
    return qt<QTextDocument>::from_raw(self->clone());
}

QMETHOD(QTextDocument, cloneWithParent, qt<QObject> parent)->qt<QTextDocument>
{
    return qt<QTextDocument>::from_raw(self->clone(parent.get()));
}

QMETHOD(QTextDocument, documentLayout)->qt<QAbstractTextDocumentLayout>
{
    return qt<QAbstractTextDocumentLayout>::from_raw(self->documentLayout());
}

QMETHOD(QTextDocument, documentMargin)->Double
{
    return self->documentMargin();
}

QMETHOD(QTextDocument, end)->box<QTextBlock>
{
    return box<QTextBlock>::make(self->end());
}

QMETHOD(QTextDocument, findBlock, Int position)->box<QTextBlock>
{
    return box<QTextBlock>::make(self->findBlock(position));
}

QMETHOD(QTextDocument, findBlockByLineNumber, Int lineNumber)->box<QTextBlock>
{
    return box<QTextBlock>::make(self->findBlockByLineNumber(lineNumber));
}

QMETHOD(QTextDocument, findBlockByNumber, Int blockNumber)->box<QTextBlock>
{
    return box<QTextBlock>::make(self->findBlockByNumber(blockNumber));
}

QMETHOD(QTextDocument, firstBlock)->box<QTextBlock>
{
    return box<QTextBlock>::make(self->firstBlock());
}

QMETHOD(QTextDocument, idealWidth)->Double
{
    return self->idealWidth();
}

QMETHOD(QTextDocument, indentWidth)->Double
{
    return self->indentWidth();
}

QMETHOD(QTextDocument, isEmpty)->Bool
{
    return Bool::make(self->isEmpty());
}

QMETHOD(QTextDocument, isModified)->Bool
{
    return Bool::make(self->isModified());
}

QMETHOD(QTextDocument, isRedoAvailable)->Bool
{
    return Bool::make(self->isRedoAvailable());
}

QMETHOD(QTextDocument, isUndoAvailable)->Bool
{
    return Bool::make(self->isUndoAvailable());
}

QMETHOD(QTextDocument, lineCount)->Int
{
    return self->lineCount();
}

QMETHOD(QTextDocument, lastBlock)->box<QTextBlock>
{
    return box<QTextBlock>::make(self->lastBlock());
}

QMETHOD(QTextDocument, maximumBlockCount)->Int
{
    return self->maximumBlockCount();
}

QMETHOD(QTextDocument, pageCount)->Int
{
    return self->pageCount();
}

QMETHOD(QTextDocument, pageSize)->box<QSizeF>
{
    return box<QSizeF>::make(self->pageSize());
}

QMETHOD(QTextDocument, redo)->void
{
    self->redo();
}

QMETHOD(QTextDocument, revision)->Int
{
    return self->revision();
}

QMETHOD(QTextDocument, setDocumentMargin, Double margin)->void
{
    self->setDocumentMargin(margin);
}

QMETHOD(QTextDocument, setHtml, String html)->void
{
    self->setHtml(str::mbt_to_qt(html));
}

QMETHOD(QTextDocument, setIndentWidth, Double width)->void
{
    self->setIndentWidth(width);
}

QMETHOD(QTextDocument, setMarkdown, String text)->void
{
    self->setMarkdown(str::mbt_to_qt(text));
}

QMETHOD(QTextDocument, setMaximumBlockCount, Int maximum)->void
{
    self->setMaximumBlockCount(maximum);
}

QMETHOD(QTextDocument, setModified, Bool modified)->void
{
    self->setModified(modified);
}

QMETHOD(QTextDocument, setPageSize, box<QSizeF> size)->void
{
    self->setPageSize(*size);
}

QMETHOD(QTextDocument, setPlainText, String text)->void
{
    self->setPlainText(str::mbt_to_qt(text));
}

QMETHOD(QTextDocument, setTextWidth, Double width)->void
{
    self->setTextWidth(width);
}

QMETHOD(QTextDocument, setUndoRedoEnabled, Bool enable)->void
{
    self->setUndoRedoEnabled(enable);
}

QMETHOD(QTextDocument, size)->box<QSizeF>
{
    return box<QSizeF>::make(self->size());
}

QMETHOD(QTextDocument, textWidth)->Double
{
    return self->textWidth();
}

QMETHOD(QTextDocument, toHtml)->String
{
    return str::qt_to_mbt(self->toHtml());
}

QMETHOD(QTextDocument, toMarkdown)->String
{
    return str::qt_to_mbt(self->toMarkdown());
}

QMETHOD(QTextDocument, toPlainText)->String
{
    return str::qt_to_mbt(self->toPlainText());
}

QMETHOD(QTextDocument, undo)->void
{
    self->undo();
}

SIGNAL_DEF(QTextDocument, blockCountChanged, Int, std::identity{})

SIGNAL_DEF(QTextDocument, contentsChanged, Unit, Unit::make)

SIGNAL_DEF(QTextDocument, documentLayoutChanged, Unit, Unit::make)

SIGNAL_DEF(QTextDocument, modificationChanged, Bool, Bool::make)

SIGNAL_DEF(QTextDocument, redoAvailable, Bool, Bool::make)

SIGNAL_DEF(QTextDocument, undoAvailable, Bool, Bool::make)

SIGNAL_DEF(QTextDocument, undoCommandAdded, Unit, Unit::make)

COVARIANT(QTextDocument, QObject)
