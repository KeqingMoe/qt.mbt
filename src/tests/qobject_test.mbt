///|
using @qt {type QObject}

///|
test "QObject updates object name parent and signal blocking state" {
  let parent = QObject::new()
  let child = QObject::new()

  assert_eq(parent.is_null(), false)
  assert_eq(child.is_null(), false)
  assert_eq(parent.objectName(), "")
  assert_eq(child.parent().is_null(), true)
  assert_eq(parent.signalsBlocked(), false)
  assert_eq(parent.isWidgetType(), false)
  assert_eq(parent.isWindowType(), false)
  assert_eq(parent.inherits("QObject"), true)

  parent.setObjectName("parent-object")
  child.setObjectName("child-object")
  child.setParent(parent)

  assert_eq(parent.objectName(), "parent-object")
  assert_eq(child.objectName(), "child-object")
  assert_eq(child.parent().is_null(), false)
  assert_eq(child.parent().objectName(), "parent-object")

  assert_eq(parent.blockSignals(true), false)
  assert_eq(parent.signalsBlocked(), true)
  assert_eq(parent.blockSignals(false), true)
  assert_eq(parent.signalsBlocked(), false)
}

///|
test "QObject objectNameChanged signal can connect emit and disconnect" {
  let object = QObject::new()
  let mut seen = ""

  let conn = object.objectNameChanged().connect(name => seen = name)

  assert_eq(conn.is_valid(), true)
  object.setObjectName("alpha")
  assert_eq(seen, "alpha")

  assert_eq(conn.disconnect(), true)
  object.setObjectName("beta")
  assert_eq(seen, "alpha")
}

///|
test "QObject blocked signals suppress objectNameChanged until unblocked" {
  let object = QObject::new()
  let mut seen = ""

  let _ = object.objectNameChanged().connect(name => seen = name)

  let _ = object.blockSignals(true)
  object.setObjectName("muted")
  assert_eq(seen, "")

  let _ = object.blockSignals(false)
  object.setObjectName("live")
  assert_eq(seen, "live")
}

///|
test "QObject objectNameChanged records updates in order" {
  let object = QObject::new()
  let mut seen = ""

  let _ = object
    .objectNameChanged()
    .connect(name => {
      if seen == "" {
        seen = name
      } else {
        seen = seen + "|" + name
      }
    })

  object.setObjectName("alpha")
  object.setObjectName("beta")
  object.setObjectName("gamma")

  assert_eq(seen, "alpha|beta|gamma")
}

///|
test "QObject can be reparented synchronously" {
  let first_parent = QObject::new()
  let second_parent = QObject::new()
  let child = QObject::new()

  first_parent.setObjectName("first")
  second_parent.setObjectName("second")

  child.setParent(first_parent)
  assert_eq(child.parent().objectName(), "first")

  child.setParent(second_parent)
  assert_eq(child.parent().objectName(), "second")
  assert_eq(child.parent().inherits("QObject"), true)
}

///|
test "QObject can detach from parent using null QObject handle" {
  let parent = QObject::new()
  let child = QObject::new()

  parent.setObjectName("attached-parent")
  child.setParent(parent)
  assert_eq(child.parent().is_null(), false)
  assert_eq(child.parent().objectName(), "attached-parent")

  let no_parent = child.parent().parent()
  assert_eq(no_parent.is_null(), true)

  child.setParent(no_parent)
  assert_eq(child.parent().is_null(), true)
}

///|
test "QObject blockSignals returns previous state on each toggle" {
  let object = QObject::new()

  assert_eq(object.signalsBlocked(), false)
  assert_eq(object.blockSignals(true), false)
  assert_eq(object.blockSignals(true), true)
  assert_eq(object.blockSignals(false), true)
  assert_eq(object.blockSignals(false), false)
  assert_eq(object.signalsBlocked(), false)
}

///|
test "QObject signal connections can disconnect independently" {
  let object = QObject::new()
  let mut left = ""
  let mut right = ""

  let left_conn = object.objectNameChanged().connect(name => left = "L:" + name)
  let right_conn = object
    .objectNameChanged()
    .connect(name => right = "R:" + name)

  object.setObjectName("first")
  assert_eq(left, "L:first")
  assert_eq(right, "R:first")

  assert_eq(left_conn.disconnect(), true)
  object.setObjectName("second")
  assert_eq(left, "L:first")
  assert_eq(right, "R:second")

  assert_eq(right_conn.disconnect(), true)
  assert_eq(right_conn.is_valid(), false)
  object.setObjectName("third")
  assert_eq(left, "L:first")
  assert_eq(right, "R:second")
}

///|
test "QObject can reconnect after disconnect" {
  let object = QObject::new()
  let mut seen = ""

  let conn1 = object.objectNameChanged().connect(name => seen = "1:" + name)
  object.setObjectName("alpha")
  assert_eq(seen, "1:alpha")

  assert_eq(conn1.disconnect(), true)
  assert_eq(conn1.is_valid(), false)

  let conn2 = object.objectNameChanged().connect(name => seen = "2:" + name)
  object.setObjectName("beta")
  assert_eq(seen, "2:beta")
  assert_eq(conn2.disconnect(), true)
}

///|
test "QObject disconnect returns false when called twice" {
  let object = QObject::new()
  let mut seen = ""
  let conn = object.objectNameChanged().connect(name => seen = name)

  object.setObjectName("once")
  assert_eq(seen, "once")

  assert_eq(conn.disconnect(), true)
  assert_eq(conn.is_valid(), false)
  assert_eq(conn.disconnect(), false)

  object.setObjectName("twice")
  assert_eq(seen, "once")
}

///|
test "QObject dump snapshot with deeper hierarchy" (t : @test.Test) {
  let root = QObject::new()
  let left = QObject::new()
  let right = QObject::new()
  let leaf = QObject::new()

  root.setObjectName("root")
  left.setObjectName("left")
  right.setObjectName("right")
  leaf.setObjectName("leaf")

  left.setParent(root)
  right.setParent(root)
  leaf.setParent(left)

  root.dumpObjectInfo()
  root.dumpObjectTree()
  t.snapshot(filename="qobject_deep_dump.txt")
}

///|
test "QObject dump snapshot" (t : @test.Test) {
  let parent = QObject::new()
  let child = QObject::new()

  parent.setObjectName("snapshot-parent")
  child.setObjectName("snapshot-child")
  child.setParent(parent)

  parent.dumpObjectInfo()
  parent.dumpObjectTree()
  t.snapshot(filename="qobject_dump.txt")
}

///|
test "QObject dump tree after reparent snapshot" (t : @test.Test) {
  let root = QObject::new()
  let left = QObject::new()
  let right = QObject::new()
  let leaf = QObject::new()

  root.setObjectName("root")
  left.setObjectName("left")
  right.setObjectName("right")
  leaf.setObjectName("leaf")

  left.setParent(root)
  right.setParent(root)
  leaf.setParent(left)
  leaf.setParent(right)

  root.dumpObjectTree()
  t.snapshot(filename="qobject_reparent_tree.txt")
}
