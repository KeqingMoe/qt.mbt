///|
test "QColor newWithName and QPalette roundtrip" {
  let color = QColor::newWithName("#123456")
  assert_eq(color.isValid(), true)
  assert_eq(color.red(), 0x12)
  assert_eq(color.green(), 0x34)
  assert_eq(color.blue(), 0x56)

  let palette = QPalette::new()
  palette.setColor(Window, color)
  let stored = palette.color(Window)
  assert_eq(stored.red(), 0x12)
  assert_eq(stored.green(), 0x34)
  assert_eq(stored.blue(), 0x56)
}
