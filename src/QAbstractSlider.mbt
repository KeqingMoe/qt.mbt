///|
pub type QAbstractSlider

///|
#borrow(this)
extern "C" fn _QAbstractSlider_hasTracking(this : QAbstractSlider) -> Bool = "QAbstractSlider_hasTracking"

///|
#borrow(this)
extern "C" fn _QAbstractSlider_invertedAppearance(
  this : QAbstractSlider,
) -> Bool = "QAbstractSlider_invertedAppearance"

///|
#borrow(this)
extern "C" fn _QAbstractSlider_invertedControls(this : QAbstractSlider) -> Bool = "QAbstractSlider_invertedControls"

///|
#borrow(this)
extern "C" fn _QAbstractSlider_isSliderDown(this : QAbstractSlider) -> Bool = "QAbstractSlider_isSliderDown"

///|
#borrow(this)
extern "C" fn _QAbstractSlider_maximum(this : QAbstractSlider) -> Int = "QAbstractSlider_maximum"

///|
#borrow(this)
extern "C" fn _QAbstractSlider_minimum(this : QAbstractSlider) -> Int = "QAbstractSlider_minimum"

///|
#borrow(this)
extern "C" fn _QAbstractSlider_orientation(
  this : QAbstractSlider,
) -> Orientation = "QAbstractSlider_orientation"

///|
#borrow(this)
extern "C" fn _QAbstractSlider_pageStep(this : QAbstractSlider) -> Int = "QAbstractSlider_pageStep"

///|
#borrow(this, value)
extern "C" fn _QAbstractSlider_setInvertedAppearance(
  this : QAbstractSlider,
  value : Bool,
) = "QAbstractSlider_setInvertedAppearance"

///|
#borrow(this, value)
extern "C" fn _QAbstractSlider_setInvertedControls(
  this : QAbstractSlider,
  value : Bool,
) = "QAbstractSlider_setInvertedControls"

///|
#borrow(this, maximum)
extern "C" fn _QAbstractSlider_setMaximum(
  this : QAbstractSlider,
  maximum : Int,
) = "QAbstractSlider_setMaximum"

///|
#borrow(this, minimum)
extern "C" fn _QAbstractSlider_setMinimum(
  this : QAbstractSlider,
  minimum : Int,
) = "QAbstractSlider_setMinimum"

///|
#borrow(this, orientation)
extern "C" fn _QAbstractSlider_setOrientation(
  this : QAbstractSlider,
  orientation : Orientation,
) = "QAbstractSlider_setOrientation"

///|
#borrow(this, step)
extern "C" fn _QAbstractSlider_setPageStep(this : QAbstractSlider, step : Int) = "QAbstractSlider_setPageStep"

///|
#borrow(this, minimum, maximum)
extern "C" fn _QAbstractSlider_setRange(
  this : QAbstractSlider,
  minimum : Int,
  maximum : Int,
) = "QAbstractSlider_setRange"

///|
#borrow(this, value)
extern "C" fn _QAbstractSlider_setSingleStep(
  this : QAbstractSlider,
  value : Int,
) = "QAbstractSlider_setSingleStep"

///|
#borrow(this, value)
extern "C" fn _QAbstractSlider_setSliderDown(
  this : QAbstractSlider,
  value : Bool,
) = "QAbstractSlider_setSliderDown"

///|
#borrow(this, position)
extern "C" fn _QAbstractSlider_setSliderPosition(
  this : QAbstractSlider,
  position : Int,
) = "QAbstractSlider_setSliderPosition"

///|
#borrow(this, enable)
extern "C" fn _QAbstractSlider_setTracking(
  this : QAbstractSlider,
  enable : Bool,
) = "QAbstractSlider_setTracking"

///|
#borrow(this, value)
extern "C" fn _QAbstractSlider_setValue(this : QAbstractSlider, value : Int) = "QAbstractSlider_setValue"

///|
#borrow(this)
extern "C" fn _QAbstractSlider_singleStep(this : QAbstractSlider) -> Int = "QAbstractSlider_singleStep"

///|
#borrow(this)
extern "C" fn _QAbstractSlider_sliderPosition(this : QAbstractSlider) -> Int = "QAbstractSlider_sliderPosition"

///|
#borrow(this)
extern "C" fn _QAbstractSlider_value(this : QAbstractSlider) -> Int = "QAbstractSlider_value"

///|
#borrow(this)
extern "C" fn _QAbstractSlider_actionTriggered(
  this : QAbstractSlider,
) -> Signal[Int] = "QAbstractSlider_actionTriggered"

///|
#borrow(this)
extern "C" fn _QAbstractSlider_sliderMoved(
  this : QAbstractSlider,
) -> Signal[Int] = "QAbstractSlider_sliderMoved"

///|
#borrow(this)
extern "C" fn _QAbstractSlider_sliderPressed(
  this : QAbstractSlider,
) -> Signal[Unit] = "QAbstractSlider_sliderPressed"

///|
#borrow(this)
extern "C" fn _QAbstractSlider_sliderReleased(
  this : QAbstractSlider,
) -> Signal[Unit] = "QAbstractSlider_sliderReleased"

///|
#borrow(this)
extern "C" fn _QAbstractSlider_valueChanged(
  this : QAbstractSlider,
) -> Signal[Int] = "QAbstractSlider_valueChanged"

///|
#borrow(this)
extern "C" fn _QAbstractSlider_as_QWidget(this : QAbstractSlider) -> QWidget = "QAbstractSlider_as_QWidget"

///|
pub(open) trait AsAbstractSlider: AsWidget {
  as_abstract_slider(Self) -> QAbstractSlider
  hasTracking(Self) -> Bool = _
  invertedAppearance(Self) -> Bool = _
  invertedControls(Self) -> Bool = _
  isSliderDown(Self) -> Bool = _
  maximum(Self) -> Int = _
  minimum(Self) -> Int = _
  orientation(Self) -> Orientation = _
  pageStep(Self) -> Int = _
  setInvertedAppearance(Self, value : Bool) -> Unit = _
  setInvertedControls(Self, value : Bool) -> Unit = _
  setMaximum(Self, maximum : Int) -> Unit = _
  setMinimum(Self, minimum : Int) -> Unit = _
  setOrientation(Self, orientation : Orientation) -> Unit = _
  setPageStep(Self, step : Int) -> Unit = _
  setRange(Self, minimum : Int, maximum : Int) -> Unit = _
  setSingleStep(Self, value : Int) -> Unit = _
  setSliderDown(Self, value : Bool) -> Unit = _
  setSliderPosition(Self, position : Int) -> Unit = _
  setTracking(Self, enable : Bool) -> Unit = _
  setValue(Self, value : Int) -> Unit = _
  singleStep(Self) -> Int = _
  sliderPosition(Self) -> Int = _
  value(Self) -> Int = _
  actionTriggered(Self) -> Signal[Int] = _
  sliderMoved(Self) -> Signal[Int] = _
  sliderPressed(Self) -> Signal[Unit] = _
  sliderReleased(Self) -> Signal[Unit] = _
  valueChanged(Self) -> Signal[Int] = _
}

///|
impl AsAbstractSlider with actionTriggered(self) {
  _QAbstractSlider_actionTriggered(self.as_abstract_slider())
}

///|
impl AsAbstractSlider with hasTracking(self) {
  _QAbstractSlider_hasTracking(self.as_abstract_slider())
}

///|
impl AsAbstractSlider with invertedAppearance(self) {
  _QAbstractSlider_invertedAppearance(self.as_abstract_slider())
}

///|
impl AsAbstractSlider with invertedControls(self) {
  _QAbstractSlider_invertedControls(self.as_abstract_slider())
}

///|
impl AsAbstractSlider with isSliderDown(self) {
  _QAbstractSlider_isSliderDown(self.as_abstract_slider())
}

///|
impl AsAbstractSlider with maximum(self) {
  _QAbstractSlider_maximum(self.as_abstract_slider())
}

///|
impl AsAbstractSlider with minimum(self) {
  _QAbstractSlider_minimum(self.as_abstract_slider())
}

///|
impl AsAbstractSlider with orientation(self) {
  _QAbstractSlider_orientation(self.as_abstract_slider())
}

///|
impl AsAbstractSlider with pageStep(self) {
  _QAbstractSlider_pageStep(self.as_abstract_slider())
}

///|
impl AsAbstractSlider with setInvertedAppearance(self, value) {
  _QAbstractSlider_setInvertedAppearance(self.as_abstract_slider(), value)
}

///|
impl AsAbstractSlider with setInvertedControls(self, value) {
  _QAbstractSlider_setInvertedControls(self.as_abstract_slider(), value)
}

///|
impl AsAbstractSlider with setMaximum(self, maximum) {
  _QAbstractSlider_setMaximum(self.as_abstract_slider(), maximum)
}

///|
impl AsAbstractSlider with setMinimum(self, minimum) {
  _QAbstractSlider_setMinimum(self.as_abstract_slider(), minimum)
}

///|
impl AsAbstractSlider with setOrientation(self, orientation) {
  _QAbstractSlider_setOrientation(self.as_abstract_slider(), orientation)
}

///|
impl AsAbstractSlider with setPageStep(self, step) {
  _QAbstractSlider_setPageStep(self.as_abstract_slider(), step)
}

///|
impl AsAbstractSlider with setRange(self, minimum, maximum) {
  _QAbstractSlider_setRange(self.as_abstract_slider(), minimum, maximum)
}

///|
impl AsAbstractSlider with setSingleStep(self, value) {
  _QAbstractSlider_setSingleStep(self.as_abstract_slider(), value)
}

///|
impl AsAbstractSlider with setSliderDown(self, value) {
  _QAbstractSlider_setSliderDown(self.as_abstract_slider(), value)
}

///|
impl AsAbstractSlider with setSliderPosition(self, position) {
  _QAbstractSlider_setSliderPosition(self.as_abstract_slider(), position)
}

///|
impl AsAbstractSlider with setTracking(self, enable) {
  _QAbstractSlider_setTracking(self.as_abstract_slider(), enable)
}

///|
impl AsAbstractSlider with setValue(self, value) {
  _QAbstractSlider_setValue(self.as_abstract_slider(), value)
}

///|
impl AsAbstractSlider with singleStep(self) {
  _QAbstractSlider_singleStep(self.as_abstract_slider())
}

///|
impl AsAbstractSlider with sliderMoved(self) {
  _QAbstractSlider_sliderMoved(self.as_abstract_slider())
}

///|
impl AsAbstractSlider with sliderPosition(self) {
  _QAbstractSlider_sliderPosition(self.as_abstract_slider())
}

///|
impl AsAbstractSlider with sliderPressed(self) {
  _QAbstractSlider_sliderPressed(self.as_abstract_slider())
}

///|
impl AsAbstractSlider with sliderReleased(self) {
  _QAbstractSlider_sliderReleased(self.as_abstract_slider())
}

///|
impl AsAbstractSlider with value(self) {
  _QAbstractSlider_value(self.as_abstract_slider())
}

///|
impl AsAbstractSlider with valueChanged(self) {
  _QAbstractSlider_valueChanged(self.as_abstract_slider())
}

///|
pub impl AsObject for QAbstractSlider with as_object(self) {
  self.as_widget().as_object()
}

///|
pub impl AsWidget for QAbstractSlider with as_widget(self) {
  _QAbstractSlider_as_QWidget(self)
}

///|
pub impl AsAbstractSlider for QAbstractSlider with as_abstract_slider(self) {
  self
}
