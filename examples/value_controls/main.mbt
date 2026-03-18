///|
using @qt {
  type NullptrError,
  type QApplication,
  type QCheckBox,
  type QLabel,
  type QObject,
  type QFormLayout,
  type QSlider,
  type QSpinBox,
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
struct ValueControls(QWidget)

///|
fn ValueControls::new() -> Self raise NullptrError {
  let slider = QSlider::new()
  slider.setRange(0, 100)
  slider.setPageStep(10)
  slider.setSingleStep(5)
  slider.setTracking(true)
  slider.setValue(35)

  let spin_box = QSpinBox::new()
  spin_box.setRange(0, 100)
  spin_box.setSingleStep(5)
  spin_box.setSpecialValueText("Muted")
  spin_box.setSuffix("%")
  spin_box.setValue(35)

  let wrapping = QCheckBox::new()
  wrapping.setText("Wrap values")

  let live_preview = QCheckBox::new()
  live_preview.setText("Live preview")
  live_preview.setChecked(true)

  let compact = QCheckBox::new()
  compact.setText("Compact spin box")

  let summary = QLabel::new()

  let refresh_summary = () => {
    let wrapping_text = if wrapping.isChecked() { "on" } else { "off" }
    let tracking_text = if slider.hasTracking() { "live" } else { "release" }
    let frame_text = if spin_box.hasFrame() { "framed" } else { "compact" }
    summary.setText(
      "Value: \{spin_box.text()} | Wrapping: \{wrapping_text} | Preview: \{tracking_text} | Box: \{frame_text}",
    )
  }

  let sync_slider = value => {
    if slider.value() != value {
      slider.setValue(value)
    }
    if spin_box.value() != value {
      spin_box.setValue(value)
    }
    refresh_summary()
  }

  let _ = QObject::connect(slider.valueChanged(), value => {
    try! sync_slider(value)
  })
  let _ = QObject::connect(spin_box.valueChanged(), value => {
    try! sync_slider(value)
  })
  let _ = QObject::connect(live_preview.toggled(), enabled => {
    try! ({
      slider.setTracking(enabled)
      refresh_summary()
    })
  })
  let _ = QObject::connect(wrapping.toggled(), enabled => {
    try! ({
      spin_box.setWrapping(enabled)
      refresh_summary()
    })
  })
  let _ = QObject::connect(compact.toggled(), enabled => {
    try! ({
      spin_box.setFrame(if enabled { false } else { true })
      refresh_summary()
    })
  })

  refresh_summary()

  let form = QFormLayout::new()
  form.addRow(named_label("Slider"), slider)
  form.addRow(named_label("Spin box"), spin_box)
  form.addRowWidget(wrapping)
  form.addRowWidget(live_preview)
  form.addRowWidget(compact)

  let layout = QVBoxLayout::new()
  layout.addLayout(form)
  layout.addWidget(summary)

  let root = QWidget::new()
  root.setMinimumSize(420, 180)
  root.setLayout(layout)

  root
}

///|
fn main raise NullptrError {
  let app = QApplication::new(@env.args())

  let window = ValueControls::new()
  window.setWindowTitle("Value Controls")
  window.show()

  let _ = app.exec()
}

///|
impl AsObject for ValueControls with as_object(self) {
  self.0.as_object()
}

///|
impl AsWidget for ValueControls with as_widget(self) {
  self.0.as_widget()
}
