///|
using @qt {
  type QMargins,
  type QMarginsF,
  type QRect,
  type QRectF,
  type QSize,
  type QSizeF,
  type QSizePolicy,
  type SliderRange,
}

///|
test "QSize" {
  let sz = QSize::new(114, 514)
  assert_eq(sz.width(), 114)
  assert_eq(sz.height(), 514)
}

///|
test "QMargins getters and setters" {
  let margins = QMargins::new(1, 2, 3, 4)
  assert_eq(margins.left(), 1)
  assert_eq(margins.top(), 2)
  assert_eq(margins.right(), 3)
  assert_eq(margins.bottom(), 4)
  assert_eq(margins.isNull(), false)

  margins.setLeft(10)
  margins.setTop(20)
  margins.setRight(30)
  margins.setBottom(40)

  assert_eq(margins.left(), 10)
  assert_eq(margins.top(), 20)
  assert_eq(margins.right(), 30)
  assert_eq(margins.bottom(), 40)
}

///|
test "QMargins null state changes with setters" {
  let margins = QMargins::new(0, 0, 0, 0)

  assert_eq(margins.isNull(), true)

  margins.setLeft(1)
  assert_eq(margins.isNull(), false)

  margins.setLeft(0)
  margins.setTop(2)
  assert_eq(margins.isNull(), false)

  margins.setTop(0)
  assert_eq(margins.isNull(), true)
}

///|
test "QMargins identity roundtrip preserves values" {
  let margins = QMargins::new(-4, 0, 7, 9)
  let roundtrip = QMargins::new(
    margins.left(),
    margins.top(),
    margins.right(),
    margins.bottom(),
  )

  assert_eq(roundtrip.left(), -4)
  assert_eq(roundtrip.top(), 0)
  assert_eq(roundtrip.right(), 7)
  assert_eq(roundtrip.bottom(), 9)
  assert_eq(roundtrip.isNull(), false)
}

///|
test "QMarginsF getters and setters" {
  let margins = QMarginsF::new(1.5, 2.5, 3.5, 4.5)
  assert_eq(margins.left(), 1.5)
  assert_eq(margins.top(), 2.5)
  assert_eq(margins.right(), 3.5)
  assert_eq(margins.bottom(), 4.5)
  assert_eq(margins.isNull(), false)

  margins.setLeft(10.5)
  margins.setTop(20.5)
  margins.setRight(30.5)
  margins.setBottom(40.5)

  assert_eq(margins.left(), 10.5)
  assert_eq(margins.top(), 20.5)
  assert_eq(margins.right(), 30.5)
  assert_eq(margins.bottom(), 40.5)
}

///|
test "QMarginsF null state changes with setters" {
  let margins = QMarginsF::new(0.0, 0.0, 0.0, 0.0)

  assert_eq(margins.isNull(), true)

  margins.setRight(1.25)
  assert_eq(margins.isNull(), false)

  margins.setRight(0.0)
  margins.setBottom(2.5)
  assert_eq(margins.isNull(), false)

  margins.setBottom(0.0)
  assert_eq(margins.isNull(), true)
}

///|
test "QMarginsF identity roundtrip preserves values" {
  let margins = QMarginsF::new(-4.5, 0.0, 7.25, 9.75)
  let roundtrip = QMarginsF::new(
    margins.left(),
    margins.top(),
    margins.right(),
    margins.bottom(),
  )

  assert_eq(roundtrip.left(), -4.5)
  assert_eq(roundtrip.top(), 0.0)
  assert_eq(roundtrip.right(), 7.25)
  assert_eq(roundtrip.bottom(), 9.75)
  assert_eq(roundtrip.isNull(), false)
}

///|
test "QRect geometry and transforms" {
  let rect = QRect::new(10, 20, 30, 40)
  let adjusted = rect.adjusted(1, 2, 3, 4)
  let translated = rect.translated(-3, 5)
  let contained = QRect::new(25, 35, 10, 10)
  let united = rect.united(QRect::new(50, 5, 10, 10))

  assert_eq(rect.x(), 10)
  assert_eq(rect.y(), 20)
  assert_eq(rect.width(), 30)
  assert_eq(rect.height(), 40)
  assert_eq(rect.left(), 10)
  assert_eq(rect.top(), 20)
  assert_eq(rect.right(), 39)
  assert_eq(rect.bottom(), 59)
  assert_eq(rect.contains(10, 20), true)
  assert_eq(rect.contains(39, 59), true)
  assert_eq(rect.contains(40, 60), false)
  assert_eq(rect.intersects(contained), true)
  assert_eq(rect.intersected(contained).width(), 10)
  assert_eq(rect.intersected(contained).height(), 10)
  assert_eq(rect.isEmpty(), false)
  assert_eq(rect.isNull(), false)
  assert_eq(rect.isValid(), true)
  assert_eq(adjusted.left(), 11)
  assert_eq(adjusted.top(), 22)
  assert_eq(adjusted.right(), 42)
  assert_eq(adjusted.bottom(), 63)
  assert_eq(translated.x(), 7)
  assert_eq(translated.y(), 25)
  assert_eq(united.left(), 10)
  assert_eq(united.top(), 5)
  assert_eq(united.right(), 59)
  assert_eq(united.bottom(), 59)
}

///|
test "QRect setters and predicates" {
  let zero = QRect::new(0, 0, 0, 0)
  let rect = QRect::new(1, 2, 3, 4)

  assert_eq(zero.isNull(), true)
  assert_eq(zero.isEmpty(), true)
  assert_eq(zero.isValid(), false)

  rect.setX(10)
  rect.setY(20)
  rect.setWidth(5)
  rect.setHeight(6)
  rect.setLeft(8)
  rect.setTop(19)
  rect.setRight(20)
  rect.setBottom(30)

  assert_eq(rect.x(), 8)
  assert_eq(rect.y(), 19)
  assert_eq(rect.width(), 13)
  assert_eq(rect.height(), 12)
  assert_eq(rect.left(), 8)
  assert_eq(rect.top(), 19)
  assert_eq(rect.right(), 20)
  assert_eq(rect.bottom(), 30)

  rect.translate(-3, 4)
  assert_eq(rect.x(), 5)
  assert_eq(rect.y(), 23)
  assert_eq(rect.right(), 17)
  assert_eq(rect.bottom(), 34)

  rect.setRect(5, 6, -2, -3)
  assert_eq(rect.isValid(), false)

  let normalized = rect.normalized()
  assert_eq(normalized.isValid(), true)
  assert_eq(normalized.left() <= normalized.right(), true)
  assert_eq(normalized.top() <= normalized.bottom(), true)
}

///|
test "QRectF geometry and transforms" {
  let rect = QRectF::new(10.5, 20.25, 30.0, 40.5)
  let adjusted = rect.adjusted(1.0, 2.0, 3.0, 4.0)
  let translated = rect.translated(-3.5, 5.25)
  let contained = QRectF::new(25.5, 35.25, 10.0, 10.0)
  let united = rect.united(QRectF::new(50.0, 5.0, 10.0, 10.0))

  assert_eq(rect.x(), 10.5)
  assert_eq(rect.y(), 20.25)
  assert_eq(rect.width(), 30.0)
  assert_eq(rect.height(), 40.5)
  assert_eq(rect.left(), 10.5)
  assert_eq(rect.top(), 20.25)
  assert_eq(rect.right(), 40.5)
  assert_eq(rect.bottom(), 60.75)
  assert_eq(rect.contains(25.5, 35.25), true)
  assert_eq(rect.contains(100.0, 100.0), false)
  assert_eq(rect.intersects(contained), true)
  assert_eq(rect.intersected(contained).width(), 10.0)
  assert_eq(rect.intersected(contained).height(), 10.0)
  assert_eq(rect.isEmpty(), false)
  assert_eq(rect.isNull(), false)
  assert_eq(rect.isValid(), true)
  assert_eq(adjusted.left(), 11.5)
  assert_eq(adjusted.top(), 22.25)
  assert_eq(adjusted.right(), 43.5)
  assert_eq(adjusted.bottom(), 64.75)
  assert_eq(translated.x(), 7.0)
  assert_eq(translated.y(), 25.5)
  assert_eq(united.left(), 10.5)
  assert_eq(united.top(), 5.0)
  assert_eq(united.right(), 60.0)
  assert_eq(united.bottom(), 60.75)
}

///|
test "QRectF setters and predicates" {
  let zero = QRectF::new(0.0, 0.0, 0.0, 0.0)
  let rect = QRectF::new(1.0, 2.0, 3.0, 4.0)

  assert_eq(zero.isNull(), true)
  assert_eq(zero.isEmpty(), true)
  assert_eq(zero.isValid(), false)

  rect.setX(10.0)
  rect.setY(20.0)
  rect.setWidth(5.5)
  rect.setHeight(6.5)
  rect.setLeft(8.0)
  rect.setTop(19.0)
  rect.setRight(20.5)
  rect.setBottom(30.5)

  assert_eq(rect.x(), 8.0)
  assert_eq(rect.y(), 19.0)
  assert_eq(rect.width(), 12.5)
  assert_eq(rect.height(), 11.5)
  assert_eq(rect.left(), 8.0)
  assert_eq(rect.top(), 19.0)
  assert_eq(rect.right(), 20.5)
  assert_eq(rect.bottom(), 30.5)

  rect.translate(-3.0, 4.5)
  assert_eq(rect.x(), 5.0)
  assert_eq(rect.y(), 23.5)
  assert_eq(rect.right(), 17.5)
  assert_eq(rect.bottom(), 35.0)

  rect.setRect(5.0, 6.0, -2.0, -3.0)
  assert_eq(rect.isValid(), false)

  let normalized = rect.normalized()
  assert_eq(normalized.isValid(), true)
  assert_eq(normalized.left() <= normalized.right(), true)
  assert_eq(normalized.top() <= normalized.bottom(), true)
}

///|
test "QSize transforms and predicates" {
  let size = QSize::new(120, 80)
  let bounded = size.boundedTo(QSize::new(100, 90))
  let expanded = size.expandedTo(QSize::new(150, 60))
  let transposed = size.transposed()
  let scaled = size.scaled(50, 50, Keep)

  assert_eq(bounded.width(), 100)
  assert_eq(bounded.height(), 80)
  assert_eq(expanded.width(), 150)
  assert_eq(expanded.height(), 80)
  assert_eq(transposed.width(), 80)
  assert_eq(transposed.height(), 120)
  assert_eq(scaled.width(), 50)
  assert_eq(scaled.height(), 33)
  assert_eq(size.isEmpty(), false)
  assert_eq(size.isNull(), false)
  assert_eq(size.isValid(), true)
}

///|
test "QSize transposed roundtrip keeps dimensions" {
  let size = QSize::new(16, 9)
  let once = size.transposed()
  let twice = once.transposed()

  assert_eq(once.width(), 9)
  assert_eq(once.height(), 16)
  assert_eq(twice.width(), 16)
  assert_eq(twice.height(), 9)
  assert_eq(size.width(), 16)
  assert_eq(size.height(), 9)
}

///|
test "QSize boundary predicates and alternate scaling modes" {
  let zero = QSize::new(0, 0)
  let negative = QSize::new(-1, 5)
  let empty = QSize::new(0, 9)
  let ignored = QSize::new(120, 80).scaled(50, 50, Ignore)
  let expanded = QSize::new(120, 80).scaled(50, 50, KeepByExpanding)

  assert_eq(zero.isNull(), true)
  assert_eq(zero.isEmpty(), true)
  assert_eq(zero.isValid(), true)
  assert_eq(negative.isNull(), false)
  assert_eq(negative.isEmpty(), true)
  assert_eq(negative.isValid(), false)
  assert_eq(empty.isEmpty(), true)
  assert_eq(empty.isValid(), true)
  assert_eq(ignored.width(), 50)
  assert_eq(ignored.height(), 50)
  assert_eq(expanded.width(), 75)
  assert_eq(expanded.height(), 50)
}

///|
test "QSize setters update predicate state" {
  let size = QSize::new(5, 7)

  size.setWidth(0)
  assert_eq(size.width(), 0)
  assert_eq(size.height(), 7)
  assert_eq(size.isEmpty(), true)
  assert_eq(size.isValid(), true)

  size.setHeight(-3)
  assert_eq(size.width(), 0)
  assert_eq(size.height(), -3)
  assert_eq(size.isEmpty(), true)
  assert_eq(size.isValid(), false)

  size.setWidth(9)
  size.setHeight(11)
  assert_eq(size.isEmpty(), false)
  assert_eq(size.isValid(), true)
}

///|
test "QSizeF transforms and setters" {
  let size = QSizeF::new(12.5, 8.0)
  let bounded = size.boundedTo(QSizeF::new(10.0, 9.0))
  let expanded = size.expandedTo(QSizeF::new(15.0, 6.0))
  let transposed = size.transposed()
  let scaled = size.scaled(5.0, 5.0, Keep)

  assert_eq(bounded.width(), 10.0)
  assert_eq(bounded.height(), 8.0)
  assert_eq(expanded.width(), 15.0)
  assert_eq(expanded.height(), 8.0)
  assert_eq(transposed.width(), 8.0)
  assert_eq(transposed.height(), 12.5)
  assert_eq(scaled.width(), 5.0)
  assert_eq(scaled.height(), 3.2)

  size.setWidth(20.5)
  size.setHeight(30.5)
  assert_eq(size.width(), 20.5)
  assert_eq(size.height(), 30.5)
  assert_eq(size.isEmpty(), false)
  assert_eq(size.isNull(), false)
  assert_eq(size.isValid(), true)
}

///|
test "QSizeF transposed roundtrip keeps dimensions" {
  let size = QSizeF::new(16.5, 9.25)
  let once = size.transposed()
  let twice = once.transposed()

  assert_eq(once.width(), 9.25)
  assert_eq(once.height(), 16.5)
  assert_eq(twice.width(), 16.5)
  assert_eq(twice.height(), 9.25)
  assert_eq(size.width(), 16.5)
  assert_eq(size.height(), 9.25)
}

///|
test "QSizeF boundary predicates and alternate scaling modes" {
  let zero = QSizeF::new(0.0, 0.0)
  let negative = QSizeF::new(-1.0, 5.0)
  let empty = QSizeF::new(0.0, 9.0)
  let ignored = QSizeF::new(12.5, 8.0).scaled(5.0, 5.0, Ignore)
  let expanded = QSizeF::new(12.5, 8.0).scaled(5.0, 5.0, KeepByExpanding)

  assert_eq(zero.isNull(), true)
  assert_eq(zero.isEmpty(), true)
  assert_eq(zero.isValid(), true)
  assert_eq(negative.isNull(), false)
  assert_eq(negative.isEmpty(), true)
  assert_eq(negative.isValid(), false)
  assert_eq(empty.isEmpty(), true)
  assert_eq(empty.isValid(), true)
  assert_eq(ignored.width(), 5.0)
  assert_eq(ignored.height(), 5.0)
  assert_eq(expanded.width(), 7.8125)
  assert_eq(expanded.height(), 5.0)
}

///|
test "QSizeF setters update predicate state" {
  let size = QSizeF::new(5.5, 7.5)

  size.setWidth(0.0)
  assert_eq(size.width(), 0.0)
  assert_eq(size.height(), 7.5)
  assert_eq(size.isEmpty(), true)
  assert_eq(size.isValid(), true)

  size.setHeight(-3.25)
  assert_eq(size.width(), 0.0)
  assert_eq(size.height(), -3.25)
  assert_eq(size.isEmpty(), true)
  assert_eq(size.isValid(), false)

  size.setWidth(9.5)
  size.setHeight(11.5)
  assert_eq(size.isEmpty(), false)
  assert_eq(size.isValid(), true)
}

///|
test "QSizePolicy transpose roundtrip preserves policies and stretch" {
  let policy = QSizePolicy::new(MinimumExpanding, Maximum)
  policy.setHorizontalStretch(11)
  policy.setVerticalStretch(22)
  policy.setHeightForWidth(true)
  policy.setRetainSizeWhenHidden(true)

  let transposed = policy.transposed()
  let roundtrip = transposed.transposed()

  assert_true(transposed.horizontalPolicy() is Maximum)
  assert_true(transposed.verticalPolicy() is MinimumExpanding)
  assert_eq(transposed.horizontalStretch(), 22)
  assert_eq(transposed.verticalStretch(), 11)
  assert_eq(transposed.hasHeightForWidth(), true)
  assert_eq(transposed.retainSizeWhenHidden(), true)

  assert_true(roundtrip.horizontalPolicy() is MinimumExpanding)
  assert_true(roundtrip.verticalPolicy() is Maximum)
  assert_eq(roundtrip.horizontalStretch(), 11)
  assert_eq(roundtrip.verticalStretch(), 22)
  assert_eq(roundtrip.hasHeightForWidth(), true)
  assert_eq(roundtrip.retainSizeWhenHidden(), true)
}

///|
test "QSizePolicy updates policies and transpose" {
  let policy = QSizePolicy::new(Preferred, Fixed)

  assert_true(policy.horizontalPolicy() is Preferred)
  assert_true(policy.verticalPolicy() is Fixed)
  assert_eq(policy.horizontalStretch(), 0)
  assert_eq(policy.verticalStretch(), 0)
  assert_eq(policy.hasHeightForWidth(), false)
  assert_eq(policy.hasWidthForHeight(), false)
  assert_eq(policy.retainSizeWhenHidden(), false)

  policy.setHorizontalStretch(2)
  policy.setVerticalStretch(3)
  policy.setHeightForWidth(true)
  policy.setRetainSizeWhenHidden(true)

  assert_eq(policy.horizontalStretch(), 2)
  assert_eq(policy.verticalStretch(), 3)
  assert_eq(policy.hasHeightForWidth(), true)
  assert_eq(policy.retainSizeWhenHidden(), true)

  let transposed = policy.transposed()
  assert_true(transposed.horizontalPolicy() is Fixed)
  assert_true(transposed.verticalPolicy() is Preferred)
  assert_eq(transposed.horizontalStretch(), 3)
  assert_eq(transposed.verticalStretch(), 2)
  assert_eq(transposed.hasWidthForHeight(), false)
}

///|
test "QSizePolicy transposed does not mutate original" {
  let policy = QSizePolicy::new(MinimumExpanding, Maximum)
  policy.setHorizontalStretch(8)
  policy.setVerticalStretch(5)
  policy.setHeightForWidth(true)
  policy.setRetainSizeWhenHidden(true)

  let transposed = policy.transposed()

  assert_true(policy.horizontalPolicy() is MinimumExpanding)
  assert_true(policy.verticalPolicy() is Maximum)
  assert_eq(policy.horizontalStretch(), 8)
  assert_eq(policy.verticalStretch(), 5)
  assert_eq(policy.hasHeightForWidth(), true)
  assert_eq(policy.retainSizeWhenHidden(), true)

  assert_true(transposed.horizontalPolicy() is Maximum)
  assert_true(transposed.verticalPolicy() is MinimumExpanding)
  assert_eq(transposed.horizontalStretch(), 5)
  assert_eq(transposed.verticalStretch(), 8)
}

///|
test "QSizePolicy mutates policies in place" {
  let policy = QSizePolicy::new(Minimum, Maximum)

  policy.setHorizontalPolicy(Expanding)
  policy.setVerticalPolicy(Ignored)
  policy.setHorizontalStretch(4)
  policy.setVerticalStretch(6)

  policy.transpose()

  assert_true(policy.horizontalPolicy() is Ignored)
  assert_true(policy.verticalPolicy() is Expanding)
  assert_eq(policy.horizontalStretch(), 6)
  assert_eq(policy.verticalStretch(), 4)
}

///|
test "QSizePolicy boolean setters can be toggled" {
  let policy = QSizePolicy::new(Preferred, Preferred)

  assert_eq(policy.hasHeightForWidth(), false)
  assert_eq(policy.retainSizeWhenHidden(), false)

  policy.setHeightForWidth(true)
  policy.setRetainSizeWhenHidden(true)
  assert_eq(policy.hasHeightForWidth(), true)
  assert_eq(policy.retainSizeWhenHidden(), true)

  policy.setHeightForWidth(false)
  policy.setRetainSizeWhenHidden(false)
  assert_eq(policy.hasHeightForWidth(), false)
  assert_eq(policy.retainSizeWhenHidden(), false)
}

///|
test "SliderRange stores minimum and maximum" {
  let range = SliderRange::new(3, 9)
  assert_eq(range.min(), 3)
  assert_eq(range.max(), 9)
}
