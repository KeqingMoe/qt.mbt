///|
test "QButtonGroup default state and signals" {
  let group = @qt.QButtonGroup::new()

  assert_eq(group.is_null(), false)
  assert_eq(group.inherits("QButtonGroup"), true)
  assert_eq(group.inherits("QObject"), true)
  assert_eq(group.buttons().length(), 0)
  assert_eq(group.button(-1).is_null(), true)
  assert_eq(group.checkedButton().is_null(), true)
  assert_eq(group.checkedId(), -1)
  assert_eq(group.exclusive(), true)

  group.setExclusive(false)
  assert_eq(group.exclusive(), false)

  group.setExclusive(true)
  assert_eq(group.exclusive(), true)

  assert_eq(group.buttonClicked().connect(_ => ()).disconnect(), true)
  assert_eq(group.buttonPressed().connect(_ => ()).disconnect(), true)
  assert_eq(group.buttonReleased().connect(_ => ()).disconnect(), true)
  assert_eq(group.buttonToggled().connect(_ => ()).disconnect(), true)
  assert_eq(group.idClicked().connect(_ => ()).disconnect(), true)
  assert_eq(group.idPressed().connect(_ => ()).disconnect(), true)
  assert_eq(group.idReleased().connect(_ => ()).disconnect(), true)
  assert_eq(group.idToggled().connect(_ => ()).disconnect(), true)
}

///|
test "QButtonGroup can be constructed with QObject parent" {
  let parent = @qt.QObject::new()
  parent.setObjectName("group-parent")

  let group = @qt.QButtonGroup::newWithParent(parent)

  assert_eq(group.parent().is_null(), false)
  assert_eq(group.parent().objectName(), "group-parent")
}
