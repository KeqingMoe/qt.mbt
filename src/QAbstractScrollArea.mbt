///|
pub type QAbstractScrollArea

///|
#borrow(this)
extern "C" fn _QAbstractScrollArea_horizontalScrollBarPolicy(
  this : QAbstractScrollArea,
) -> ScrollBarPolicy = "QAbstractScrollArea_horizontalScrollBarPolicy"

///|
#borrow(this)
extern "C" fn _QAbstractScrollArea_setHorizontalScrollBarPolicy(
  this : QAbstractScrollArea,
  policy : ScrollBarPolicy,
) = "QAbstractScrollArea_setHorizontalScrollBarPolicy"

///|
#borrow(this)
extern "C" fn _QAbstractScrollArea_verticalScrollBarPolicy(
  this : QAbstractScrollArea,
) -> ScrollBarPolicy = "QAbstractScrollArea_verticalScrollBarPolicy"

///|
#borrow(this)
extern "C" fn _QAbstractScrollArea_setVerticalScrollBarPolicy(
  this : QAbstractScrollArea,
  policy : ScrollBarPolicy,
) = "QAbstractScrollArea_setVerticalScrollBarPolicy"

///|
#borrow(this)
extern "C" fn _QAbstractScrollArea_viewport(
  this : QAbstractScrollArea,
) -> QWidget = "QAbstractScrollArea_viewport"

///|
#borrow(this)
extern "C" fn _QAbstractScrollArea_as_QFrame(
  this : QAbstractScrollArea,
) -> QFrame = "QAbstractScrollArea_as_QFrame"

///|
pub(open) trait AsAbstractScrollArea: AsFrame {
  as_abstract_scroll_area(Self) -> QAbstractScrollArea
  horizontalScrollBarPolicy(Self) -> ScrollBarPolicy raise NullptrError = _
  setHorizontalScrollBarPolicy(Self, policy : ScrollBarPolicy) -> Unit raise NullptrError = _
  setVerticalScrollBarPolicy(Self, policy : ScrollBarPolicy) -> Unit raise NullptrError = _
  verticalScrollBarPolicy(Self) -> ScrollBarPolicy raise NullptrError = _
  viewport(Self) -> QWidget raise NullptrError = _
}

///|
impl AsAbstractScrollArea with horizontalScrollBarPolicy(self) {
  ensure_not_nullptr(self)
  _QAbstractScrollArea_horizontalScrollBarPolicy(self.as_abstract_scroll_area())
}

///|
impl AsAbstractScrollArea with setHorizontalScrollBarPolicy(self, policy) {
  ensure_not_nullptr(self)
  _QAbstractScrollArea_setHorizontalScrollBarPolicy(
    self.as_abstract_scroll_area(),
    policy,
  )
}

///|
impl AsAbstractScrollArea with verticalScrollBarPolicy(self) {
  ensure_not_nullptr(self)
  _QAbstractScrollArea_verticalScrollBarPolicy(self.as_abstract_scroll_area())
}

///|
impl AsAbstractScrollArea with setVerticalScrollBarPolicy(self, policy) {
  ensure_not_nullptr(self)
  _QAbstractScrollArea_setVerticalScrollBarPolicy(
    self.as_abstract_scroll_area(),
    policy,
  )
}

///|
impl AsAbstractScrollArea with viewport(self) {
  ensure_not_nullptr(self)
  _QAbstractScrollArea_viewport(self.as_abstract_scroll_area())
}

///|
pub impl AsObject for QAbstractScrollArea with as_object(self) {
  self.as_widget().as_object()
}

///|
pub impl AsWidget for QAbstractScrollArea with as_widget(self) {
  self.as_frame().as_widget()
}

///|
pub impl AsFrame for QAbstractScrollArea with as_frame(self) {
  _QAbstractScrollArea_as_QFrame(self)
}

///|
pub impl AsAbstractScrollArea for QAbstractScrollArea with as_abstract_scroll_area(
  self,
) {
  self
}
