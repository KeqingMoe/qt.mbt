///|
pub(open) trait AsAbstractButton: AsWidget {
  as_abstract_button(Self) -> QAbstractButton
  setText(Self, text : String) -> Unit = _
  clicked(Self) -> Signal[Bool] = _
}

///|
impl AsAbstractButton with setText(self, text) {
  @ffi._QAbstractButton_setText(self.as_abstract_button().0, text)
}

///|
impl AsAbstractButton with clicked(self) {
  @ffi._QAbstractButton_clicked(self.as_abstract_button().0)
}

///|
pub(all) struct QAbstractButton(@ffi.QAbstractButton)

///|
pub impl AsObject for QAbstractButton with as_object(self) {
  self.as_widget().as_object()
}

///|
pub impl AsWidget for QAbstractButton with as_widget(self) {
  @ffi._QAbstractButton_as_QWidget(self.0)
}

///|
pub impl AsAbstractButton for QAbstractButton with as_abstract_button(self) {
  self
}
