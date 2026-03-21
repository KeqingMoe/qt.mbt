///|
pub(all) enum ActionPosition {
  Leading = 0
  Trailing = 1
} derive(Eq, Show)

///|
pub(all) enum AspectRatioMode {
  Ignore = 0
  Keep = 1
  KeepByExpanding = 2
} derive(Eq, Show)

///|
pub(all) enum CheckState {
  Unchecked = 0
  PartiallyChecked = 1
  Checked = 2
} derive(Eq, Show)

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
} derive(Eq, Show)

///|
pub(all) enum ButtonSymbols {
  UpDownArrows = 0
  PlusMinus = 1
  NoButtons = 2
} derive(Eq, Show)

///|
pub(all) enum Corner {
  TopLeft = 0x00000
  TopRight = 0x00001
  BottomLeft = 0x00002
  BottomRight = 0x00003
} derive(Eq, Show)

///|
pub(all) enum CorrectionMode {
  PreviousValue = 0
  NearestValue = 1
} derive(Eq, Show)

///|
pub(all) enum ContextMenuPolicy {
  No = 0
  Default = 1
  Actions = 2
  Custom = 3
  Prevent = 4
} derive(Eq, Show)

///|
pub(all) enum CursorMoveStyle {
  Logical = 0
  Visual = 1
} derive(Eq, Show)

///|
pub(all) enum Direction {
  LeftToRight = 0
  RightToLeft = 1
  TopToBottom = 2
  BottomToTop = 3
} derive(Eq, Show)

///|
pub(all) enum FocusPolicy {
  No = 0
  Tab = 0x1
  Click = 0x2
  Strong = 0xb
  Wheel = 0xf
} derive(Eq, Show)

///|
pub(all) enum EchoMode {
  Normal = 0
  NoEcho = 1
  Password = 2
  PasswordEchoOnEdit = 3
} derive(Eq, Show)

///|
pub(all) enum FieldGrowthPolicy {
  StayAtSizeHint = 0
  Expanding = 1
  AllNonFixed = 2
} derive(Eq, Show)

///|
pub(all) enum FrameShadow {
  Plain = 0x0010
  Raised = 0x0020
  Sunken = 0x0030
} derive(Eq, Show)

///|
pub(all) enum FrameShape {
  NoFrame = 0
  Box = 0x0001
  Panel = 0x0002
  StyledPanel = 0x0006
  HLine = 0x0004
  VLine = 0x0005
  WinPanel = 0x0003
} derive(Eq, Show)

///|
pub(all) enum ItemRole {
  Label = 0
  Field = 1
  Spanning = 2
} derive(Eq, Show)

///|
pub(all) enum LineWrapMode {
  NoWrap = 0
  WidgetWidth = 1
} derive(Eq, Show)

///|
pub(all) enum NetworkError {
  NoError = 0
  ConnectionRefusedError = 1
  RemoteHostClosedError = 2
  HostNotFoundError = 3
  TimeoutError = 4
  OperationCanceledError = 5
  SslHandshakeFailedError = 6
  TemporaryNetworkFailureError = 7
  NetworkSessionFailedError = 8
  BackgroundRequestNotAllowedError = 9
  TooManyRedirectsError = 10
  InsecureRedirectError = 11
  UnknownNetworkError = 99
  ProxyConnectionRefusedError = 101
  ProxyConnectionClosedError = 102
  ProxyNotFoundError = 103
  ProxyTimeoutError = 104
  ProxyAuthenticationRequiredError = 105
  UnknownProxyError = 199
  ContentAccessDenied = 201
  ContentOperationNotPermittedError = 202
  ContentNotFoundError = 203
  AuthenticationRequiredError = 204
  ContentReSendError = 205
  ContentConflictError = 206
  ContentGoneError = 207
  UnknownContentError = 299
  ProtocolUnknownError = 301
  ProtocolInvalidOperationError = 302
  ProtocolFailure = 399
  InternalServerError = 401
  OperationNotImplementedError = 402
  ServiceUnavailableError = 403
  UnknownServerError = 499
} derive(Eq, Show)

///|
pub(all) enum NetworkOperation {
  Unknown = 0
  Head = 1
  Get = 2
  Put = 3
  Post = 4
  Delete = 5
  Custom = 6
} derive(Eq, Show)

///|
pub(all) enum Orientation {
  Horizontal = 0x1
  Vertical = 0x2
} derive(Eq, Show)

///|
pub(all) enum Policy {
  Fixed = 0
  Minimum = 0x1
  Maximum = 0x4
  Preferred = 0x5
  MinimumExpanding = 0x3
  Expanding = 0x7
  Ignored = 0xd
} derive(Eq, Show)

///|
pub(all) enum PolicyFlag {
  Grow = 0x1
  Expand = 0x2
  Shrink = 0x4
  Ignore = 0x8
} derive(Eq, Show)

///|
pub(all) enum Priority {
  High = 1
  Normal = 3
  Low = 5
} derive(Eq, Show)

///|
pub(all) enum RedirectPolicy {
  Manual = 0
  NoLessSafe = 1
  SameOrigin = 2
  UserVerified = 3
} derive(Eq, Show)

///|
pub(all) enum RowWrapPolicy {
  Dont = 0
  Long = 1
  All = 2
} derive(Eq, Show)

///|
pub(all) enum ScrollBarPolicy {
  AsNeeded = 0
  AlwaysOff = 1
  AlwaysOn = 2
} derive(Eq, Show)

///|
pub(all) enum SizeAdjustPolicy {
  Ignored = 0
  Contents = 1
  OnFirstShow = 2
} derive(Eq, Show)

///|
pub(all) enum SizeConstraint {
  DefaultConstraint = 0
  NoConstraint = 1
  MinimumSize = 2
  FixedSize = 3
  MaximumSize = 4
  MinAndMaxSize = 5
} derive(Eq, Show)

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
} derive(Eq, Show)

///|
pub(all) enum StepEnabledFlag {
  None = 0x00
  Up = 0x01
  Down = 0x02
} derive(Eq, Show)

///|
pub(all) enum StepType {
  Default = 0
  AdaptiveDecimal = 1
} derive(Eq, Show)

///|
pub(all) enum TextFormat {
  Plain = 0
  Rich = 1
  Auto = 2
  Markdown = 3
} derive(Eq, Show)

///|
pub(all) enum TabPosition {
  Top = 0
  Bottom = 1
  Left = 2
  Right = 3
} derive(Eq, Show)

///|
pub(all) enum TabShape {
  Rounded = 0
  Triangular = 1
} derive(Eq, Show)

///|
pub(all) enum TickPosition {
  NoTicks = 0
  BothSides = 1
  AboveOrLeft = 2
  BelowOrRight = 3
} derive(Eq, Show)
