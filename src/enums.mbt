///|
pub enum CheckState {
  Unchecked = 0
  PartiallyChecked = 1
  Checked = 2
}

///|
pub(all) enum ButtonRole {
  AcceptRole = 0
  RejectRole = 1
  DestructiveRole = 2
  ActionRole = 3
  HelpRole = 4
  YesRole = 5
  NoRole = 6
  ResetRole = 7
  ApplyRole = 8
}

///|
pub enum Corner {
  TopLeftCorner = 0x00000
  TopRightCorner = 0x00001
  BottomLeftCorner = 0x00002
  BottomRightCorner = 0x00003
}

///|
pub enum Direction {
  LeftToRight = 0
  RightToLeft = 1
  TopToBottom = 2
  BottomToTop = 3
}

///|
pub enum EchoMode {
  Normal = 0
  NoEcho = 1
  Password = 2
  PasswordEchoOnEdit = 3
}

///|
pub enum FieldGrowthPolicy {
  FieldsStayAtSizeHint = 0
  ExpandingFieldsGrow = 1
  AllNonFixedFieldsGrow = 2
}

///|
pub enum FrameShadow {
  Plain = 0x0010
  Raised = 0x0020
  Sunken = 0x0030
}

///|
pub enum FrameShape {
  NoFrame = 0
  Box = 0x0001
  Panel = 0x0002
  StyledPanel = 0x0006
  HLine = 0x0004
  VLine = 0x0005
  WinPanel = 0x0003
}

///|
pub enum ItemRole {
  LabelRole = 0
  FieldRole = 1
  SpanningRole = 2
}

///|
pub enum Orientation {
  Horizontal = 0x1
  Vertical = 0x2
}

///|
pub enum RowWrapPolicy {
  DontWrapRows = 0
  WrapLongRows = 1
  WrapAllRows = 2
}

///|
pub enum ScrollBarPolicy {
  ScrollBarAsNeeded = 0
  ScrollBarAlwaysOff = 1
  ScrollBarAlwaysOn = 2
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

///|
pub enum TextFormat {
  PlainText = 0
  RichText = 1
  AutoText = 2
  MarkdownText = 3
}
