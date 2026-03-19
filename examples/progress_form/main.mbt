///|
using @qt {
  type NullptrError,
  type QApplication,
  type QBoxLayout,
  type QComboBox,
  type QLabel,
  type QObject,
  type QProgressBar,
  type QPushButton,
  type QWidget,
  trait AsObject,
  trait AsWidget,
}

///|
struct ProgressForm(QWidget)

///|
fn ProgressForm::new() -> Self raise NullptrError {
  let preset = QComboBox::new()
  preset.setPlaceholderText("Choose a task preset")
  preset.addItem("Sync notes")
  preset.addItem("Compile assets")
  preset.addItem("Publish release")

  let status = QLabel::new()
  status.setText("Sync notes: 10%")

  let progress = QProgressBar::new()
  progress.setRange(0, 100)
  progress.setFormat("%p% complete")
  progress.setValue(10)

  let advance = QPushButton::new()
  advance.setText("Advance")

  let mut selected = "Sync notes"
  let mut value = 10

  let refresh = () => {
    status.setText("\{selected}: \{value}%")
    progress.setValue(value)
  }

  let _ = QObject::connect(preset.currentTextChanged(), text => {
    selected = text
    value = match text {
      "Sync notes" => 10
      "Compile assets" => 45
      "Publish release" => 80
      _ => 0
    }
    try! refresh()
  })

  let _ = QObject::connect(advance.clicked(), _ => {
    if value < 100 {
      value += 10
    }
    try! refresh()
  })

  let layout = QBoxLayout::vertical()
  layout.addWidget(preset)
  layout.addWidget(progress)
  layout.addWidget(status)
  layout.addWidget(advance)

  let root = QWidget::new()
  root.setMinimumSize(360, 180)
  root.setLayout(layout)

  root
}

///|
fn main raise NullptrError {
  let app = QApplication::new(@env.args())

  let window = ProgressForm::new()
  window.setWindowTitle("Progress Form")
  window.show()

  let _ = app.exec()
}

///|
impl AsObject for ProgressForm with as_object(self) {
  self.0.as_object()
}

///|
impl AsWidget for ProgressForm with as_widget(self) {
  self.0.as_widget()
}
