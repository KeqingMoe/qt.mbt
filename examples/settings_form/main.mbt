///|
using @qt {
  type NullptrError,
  type QApplication,
  type QCheckBox,
  type QFormLayout,
  type QGroupBox,
  type QLabel,
  type QLineEdit,
  type QObject,
  type QRadioButton,
  type QVBoxLayout,
  type QWidget,
  trait AsObject,
  trait AsWidget,
}

///|
fn named_label(text : String) -> QLabel raise NullptrError {
  let label = QLabel::new()
  label.setText(text)
  label
}

///|
struct ProfileModeBox(QGroupBox)

///|
fn ProfileModeBox::new(
  public_profile : QRadioButton,
  private_profile : QRadioButton,
) -> Self raise NullptrError {
  let group = QGroupBox::new()
  group.setTitle("Profile visibility")

  let layout = QVBoxLayout::new()
  layout.addWidget(public_profile)
  layout.addWidget(private_profile)
  group.setLayout(layout)

  group
}

///|
struct SettingsForm(QWidget)

///|
fn SettingsForm::new() -> Self raise NullptrError {
  let username = QLineEdit::new()
  username.setPlaceholderText("moonbit_user")

  let email = QLineEdit::new()
  email.setPlaceholderText("you@example.com")

  let updates = QCheckBox::new()
  updates.setText("Enable automatic updates")
  updates.setChecked(true)

  let dark_mode = QCheckBox::new()
  dark_mode.setText("Prefer dark mode")

  let public_profile = QRadioButton::new()
  public_profile.setText("Public profile")
  public_profile.setChecked(true)

  let private_profile = QRadioButton::new()
  private_profile.setText("Private profile")

  let mode_group = ProfileModeBox::new(public_profile, private_profile)

  let mut mode_text = "Public"
  let footer = QLabel::new()
  footer.setText("Updates: on | Profile: Public")

  let refresh_footer = () => {
    let updates_text = if updates.isChecked() { "on" } else { "off" }
    footer.setText("Updates: \{updates_text} | Profile: \{mode_text}")
  }

  let _ = QObject::connect(updates.toggled(), _ => try! refresh_footer())
  let _ = QObject::connect(public_profile.toggled(), checked => {
    if checked {
      mode_text = "Public"
      try! refresh_footer()
    }
  })
  let _ = QObject::connect(private_profile.toggled(), checked => {
    if checked {
      mode_text = "Private"
      try! refresh_footer()
    }
  })

  let form = QFormLayout::new()
  form.addRowWidget(mode_group)
  form.addRow(named_label("Username"), username)
  form.addRow(named_label("Email"), email)
  form.addRowWidget(updates)
  form.addRowWidget(dark_mode)

  let root = QWidget::new()
  root.setMinimumSize(440, 260)

  let outer = QVBoxLayout::new()
  outer.addLayout(form)
  outer.addWidget(footer)
  root.setLayout(outer)

  root
}

///|
fn main raise NullptrError {
  let app = QApplication::new(@env.args())

  let window = SettingsForm::new()
  window.setWindowTitle("Settings Form")
  window.show()

  let _ = app.exec()
}

///|
impl AsObject for ProfileModeBox with as_object(self) {
  self.0.as_object()
}

///|
impl AsWidget for ProfileModeBox with as_widget(self) {
  self.0.as_widget()
}

///|
impl AsObject for SettingsForm with as_object(self) {
  self.0.as_object()
}

///|
impl AsWidget for SettingsForm with as_widget(self) {
  self.0.as_widget()
}
