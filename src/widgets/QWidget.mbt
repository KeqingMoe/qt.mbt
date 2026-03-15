///|
pub(open) trait AsWidget: AsObject {
  as_widget(Self) -> QWidget
  show(Self) -> Unit = _
  setWindowTitle(Self, title : String) -> Unit = _
  setLayout(Self, layout : &AsLayout) -> Unit = _
}

///|
impl AsWidget with show(self) {
  @ffi._QWidget_show(self.as_widget().0)
}

///|
impl AsWidget with setWindowTitle(self, title) {
  @ffi._QWidget_setWindowTitle(self.as_widget().0, title)
}

///|
impl AsWidget with setLayout(self, layout) {
  @ffi._QWidget_setLayout(self.as_widget().0, layout.as_layout().0)
}

///|
pub(all) struct QWidget(@ffi.QWidget)

///|
pub fn QWidget::new() -> QWidget {
  @ffi._QWidget_new()
}

///|
pub impl AsObject for QWidget with as_object(self) {
  @ffi._QWidget_as_QObject(self.0)
}

///|
pub impl AsWidget for QWidget with as_widget(self) {
  self
}
