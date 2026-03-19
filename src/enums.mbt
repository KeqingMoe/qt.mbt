///|
pub(all) enum ActionPosition {
  Leading = 0
  Trailing = 1
}

///|
pub(all) enum CheckState {
  Unchecked = 0
  PartiallyChecked = 1
  Checked = 2
}

///|
pub(all) enum ButtonRole {
  Accept = 0
  Reject = 1
  Destructive = 2
  Action = 3
  Help = 4
  Yes = 5
  No = 6
  Reset = 7
  Apply = 8
}

///|
pub(all) enum ButtonSymbols {
  UpDownArrows = 0
  PlusMinus = 1
  NoButtons = 2
}

///|
pub(all) enum Corner {
  TopLeft = 0x00000
  TopRight = 0x00001
  BottomLeft = 0x00002
  BottomRight = 0x00003
}

///|
pub(all) enum CorrectionMode {
  PreviousValue = 0
  NearestValue = 1
}

///|
pub(all) enum CursorMoveStyle {
  Logical = 0
  Visual = 1
}

///|
pub(all) enum Direction {
  LeftToRight = 0
  RightToLeft = 1
  TopToBottom = 2
  BottomToTop = 3
}

///|
pub(all) enum EchoMode {
  Normal = 0
  NoEcho = 1
  Password = 2
  PasswordEchoOnEdit = 3
}

///|
pub(all) enum FieldGrowthPolicy {
  StayAtSizeHint = 0
  Expanding = 1
  AllNonFixed = 2
}

///|
pub(all) enum FrameShadow {
  Plain = 0x0010
  Raised = 0x0020
  Sunken = 0x0030
}

///|
pub(all) enum FrameShape {
  NoFrame = 0
  Box = 0x0001
  Panel = 0x0002
  StyledPanel = 0x0006
  HLine = 0x0004
  VLine = 0x0005
  WinPanel = 0x0003
}

///|
pub(all) enum ItemRole {
  Label = 0
  Field = 1
  Spanning = 2
}

///|
pub(all) enum LineWrapMode {
  NoWrap = 0
  WidgetWidth = 1
}

///|
pub(all) enum Orientation {
  Horizontal = 0x1
  Vertical = 0x2
}

///|
pub(all) enum RowWrapPolicy {
  Dont = 0
  Long = 1
  All = 2
}

///|
pub(all) enum ScrollBarPolicy {
  AsNeeded = 0
  AlwaysOff = 1
  AlwaysOn = 2
}

///|
pub(all) enum SizeAdjustPolicy {
  Ignored = 0
  Contents = 1
  OnFirstShow = 2
}

///|
pub(all) enum SizeConstraint {
  DefaultConstraint = 0
  NoConstraint = 1
  MinimumSize = 2
  FixedSize = 3
  MaximumSize = 4
  MinAndMaxSize = 5
}

///|
pub(all) enum SliderAction {
  NoAction = 0
  SingleStepAdd = 1
  SingleStepSub = 2
  PageStepAdd = 3
  PageStepSub = 4
  ToMinimum = 5
  ToMaximum = 6
  Move = 7
}

///|
pub(all) enum StepEnabledFlag {
  None = 0x00
  Up = 0x01
  Down = 0x02
}

///|
pub(all) enum StepType {
  Default = 0
  AdaptiveDecimal = 1
}

///|
pub(all) enum TextFormat {
  Plain = 0
  Rich = 1
  Auto = 2
  Markdown = 3
}

///|
pub(all) enum TabPosition {
  Top = 0
  Bottom = 1
  Left = 2
  Right = 3
}

///|
pub(all) enum TabShape {
  Rounded = 0
  Triangular = 1
}

///|
pub(all) enum TickPosition {
  NoTicks = 0
  BothSides = 1
  AboveOrLeft = 2
  BelowOrRight = 3
}
