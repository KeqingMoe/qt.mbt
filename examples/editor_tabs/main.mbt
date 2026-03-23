///|
using @qt {
  type NullptrError,
  type QApplication,
  type QCheckBox,
  type QBoxLayout,
  type QLabel,
  type QObject,
  type QTabWidget,
  type QTextEdit,
  type QWidget,
  trait AsObject,
  trait AsWidget,
}

///|
fn new_editor(
  placeholder : String,
  text : String,
) -> QTextEdit raise NullptrError {
  let editor = QTextEdit::new()
  editor.setAcceptRichText(false)
  editor.setPlaceholderText(placeholder)
  editor.setPlainText(text)
  editor
}

///|
struct EditorTabs(QWidget)

///|
fn EditorTabs::new() -> Self raise NullptrError {
  let draft = new_editor(
    "Write the first draft here", "# Draft\n\n- Ship text editing\n- Add richer containers\n",
  )
  let changelog = new_editor(
    "Write release notes here", "## Changelog\n\n- Added QTabWidget\n- Added QTextEdit\n",
  )
  let notes = new_editor(
    "Scratchpad", "Meeting notes:\n- polish examples\n- improve editor workflow\n",
  )

  let tabs = QTabWidget::new()
  let _ = tabs.addTab(draft, "Draft")
  let _ = tabs.addTab(changelog, "Changelog")
  let _ = tabs.addTab(notes, "Notes")
  tabs.setTabToolTip(0, "Primary working draft")
  tabs.setTabToolTip(1, "Release-facing summary")
  tabs.setTabToolTip(2, "Loose scratchpad")

  let read_only = QCheckBox::new()
  read_only.setText("Read only")

  let status = QLabel::new()

  let current_editor = () => {
    match tabs.currentIndex() {
      0 => draft
      1 => changelog
      _ => notes
    }
  }

  let refresh_status = () => {
    let title = tabs.tabText(tabs.currentIndex())
    let text = current_editor().toPlainText()
    status.setText("\{title}: \{text.char_length()} chars")
  }

  let set_all_read_only = value => {
    draft.setReadOnly(value)
    changelog.setReadOnly(value)
    notes.setReadOnly(value)
    refresh_status()
  }

  let _ = QObject::connect(draft.textChanged(), _ => refresh_status())
  let _ = QObject::connect(changelog.textChanged(), _ => refresh_status())
  let _ = QObject::connect(notes.textChanged(), _ => refresh_status())
  let _ = QObject::connect(read_only.toggled(), value => {
    set_all_read_only(value)
  })
  let _ = QObject::connect(tabs.currentChanged(), _ => refresh_status())

  refresh_status()

  let layout = QBoxLayout::vertical()
  layout.addWidget(read_only)
  layout.addWidget(tabs)
  layout.addWidget(status)

  let root = QWidget::new()
  root.setMinimumSize(540, 360)
  root.setLayout(layout)

  root
}

///|
fn main raise NullptrError {
  let app = QApplication::new(@env.args())

  let window = EditorTabs::new()
  window.setWindowTitle("Editor Tabs")
  window.show()

  let _ = app.exec()
}

///|
impl AsObject for EditorTabs with as_object(self) {
  self.0.as_object()
}

///|
impl AsWidget for EditorTabs with as_widget(self) {
  self.0.as_widget()
}
