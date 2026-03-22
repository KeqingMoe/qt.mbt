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
pub(all) enum IconMode {
  Normal = 0
  Disabled = 1
  Active = 2
  Selected = 3
} derive(Eq, Show)

///|
pub(all) enum IconState {
  On = 0
  Off = 1
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
pub(all) enum ThemeIcon {
  AddressBookNew = 0
  ApplicationExit = 1
  AppointmentNew = 2
  CallStart = 3
  CallStop = 4
  ContactNew = 5
  DocumentNew = 6
  DocumentOpen = 7
  DocumentOpenRecent = 8
  DocumentPageSetup = 9
  DocumentPrint = 10
  DocumentPrintPreview = 11
  DocumentProperties = 12
  DocumentRevert = 13
  DocumentSave = 14
  DocumentSaveAs = 15
  DocumentSend = 16
  EditClear = 17
  EditCopy = 18
  EditCut = 19
  EditDelete = 20
  EditFind = 21
  EditPaste = 22
  EditRedo = 23
  EditSelectAll = 24
  EditUndo = 25
  FolderNew = 26
  FormatIndentLess = 27
  FormatIndentMore = 28
  FormatJustifyCenter = 29
  FormatJustifyFill = 30
  FormatJustifyLeft = 31
  FormatJustifyRight = 32
  FormatTextDirectionLtr = 33
  FormatTextDirectionRtl = 34
  FormatTextBold = 35
  FormatTextItalic = 36
  FormatTextUnderline = 37
  FormatTextStrikethrough = 38
  GoDown = 39
  GoHome = 40
  GoNext = 41
  GoPrevious = 42
  GoUp = 43
  HelpAbout = 44
  HelpFaq = 45
  InsertImage = 46
  InsertLink = 47
  InsertText = 48
  ListAdd = 49
  ListRemove = 50
  MailForward = 51
  MailMarkImportant = 52
  MailMarkRead = 53
  MailMarkUnread = 54
  MailMessageNew = 55
  MailReplyAll = 56
  MailReplySender = 57
  MailSend = 58
  MediaEject = 59
  MediaPlaybackPause = 60
  MediaPlaybackStart = 61
  MediaPlaybackStop = 62
  MediaRecord = 63
  MediaSeekBackward = 64
  MediaSeekForward = 65
  MediaSkipBackward = 66
  MediaSkipForward = 67
  ObjectRotateLeft = 68
  ObjectRotateRight = 69
  ProcessStop = 70
  SystemLockScreen = 71
  SystemLogOut = 72
  SystemSearch = 73
  SystemReboot = 74
  SystemShutdown = 75
  ToolsCheckSpelling = 76
  ViewFullscreen = 77
  ViewRefresh = 78
  ViewRestore = 79
  WindowClose = 80
  WindowNew = 81
  ZoomFitBest = 82
  ZoomIn = 83
  ZoomOut = 84
  AudioCard = 85
  AudioInputMicrophone = 86
  Battery = 87
  CameraPhoto = 88
  CameraVideo = 89
  CameraWeb = 90
  Computer = 91
  DriveHarddisk = 92
  DriveOptical = 93
  InputGaming = 94
  InputKeyboard = 95
  InputMouse = 96
  InputTablet = 97
  MediaFlash = 98
  MediaOptical = 99
  MediaTape = 100
  MultimediaPlayer = 101
  NetworkWired = 102
  NetworkWireless = 103
  Phone = 104
  Printer = 105
  Scanner = 106
  VideoDisplay = 107
  AppointmentMissed = 108
  AppointmentSoon = 109
  AudioVolumeHigh = 110
  AudioVolumeLow = 111
  AudioVolumeMedium = 112
  AudioVolumeMuted = 113
  BatteryCaution = 114
  BatteryLow = 115
  DialogError = 116
  DialogInformation = 117
  DialogPassword = 118
  DialogQuestion = 119
  DialogWarning = 120
  FolderDragAccept = 121
  FolderOpen = 122
  FolderVisiting = 123
  ImageLoading = 124
  ImageMissing = 125
  MailAttachment = 126
  MailUnread = 127
  MailRead = 128
  MailReplied = 129
  MediaPlaylistRepeat = 130
  MediaPlaylistShuffle = 131
  NetworkOffline = 132
  PrinterPrinting = 133
  SecurityHigh = 134
  SecurityLow = 135
  SoftwareUpdateAvailable = 136
  SoftwareUpdateUrgent = 137
  SyncError = 138
  SyncSynchronizing = 139
  UserAvailable = 140
  UserOffline = 141
  WeatherClear = 142
  WeatherClearNight = 143
  WeatherFewClouds = 144
  WeatherFewCloudsNight = 145
  WeatherFog = 146
  WeatherShowers = 147
  WeatherSnow = 148
  WeatherStorm = 149
} derive(Eq, Show)

///|
pub(all) enum TickPosition {
  NoTicks = 0
  BothSides = 1
  AboveOrLeft = 2
  BelowOrRight = 3
} derive(Eq, Show)
