///|
pub enum CheckState {
  Unchecked = 0
  PartiallyChecked = 1
  Checked = 2
}

///|
pub enum Direction {
  LeftToRight = 0
  RightToLeft = 1
  TopToBottom = 2
  BottomToTop = 3
}

///|
pub enum SizeConstraint {
  SetDefaultConstraint = 0
  SetNoConstraint = 1
  SetMinimumSize = 2
  SetFixedSize = 3
  SetMaximumSize = 4
  SetMinAndMaxSize = 5
}
