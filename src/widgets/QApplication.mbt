///|
pub(all) struct QApplication(@ffi.QApplication)

///|
pub fn QApplication::new(args : Array[String]) -> QApplication {
  @ffi._QApplication_new(args)
}

///|
pub fn QApplication::exec(self : Self) -> Int {
  @ffi._QApplication_exec(self.0)
}

///|
pub impl AsObject for QApplication with as_object(self) {
  @ffi._QApplication_as_QObject(self.0)
}
