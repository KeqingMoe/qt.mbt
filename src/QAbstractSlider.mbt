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
  hasTracking(Self) -> Bool raise NullptrError = _
  invertedAppearance(Self) -> Bool raise NullptrError = _
  invertedControls(Self) -> Bool raise NullptrError = _
  isSliderDown(Self) -> Bool raise NullptrError = _
  maximum(Self) -> Int raise NullptrError = _
  minimum(Self) -> Int raise NullptrError = _
  orientation(Self) -> Orientation raise NullptrError = _
  pageStep(Self) -> Int raise NullptrError = _
  setInvertedAppearance(Self, value : Bool) -> Unit raise NullptrError = _
  setInvertedControls(Self, value : Bool) -> Unit raise NullptrError = _
  setMaximum(Self, maximum : Int) -> Unit raise NullptrError = _
  setMinimum(Self, minimum : Int) -> Unit raise NullptrError = _
  setOrientation(Self, orientation : Orientation) -> Unit raise NullptrError = _
  setPageStep(Self, step : Int) -> Unit raise NullptrError = _
  setRange(Self, minimum : Int, maximum : Int) -> Unit raise NullptrError = _
  setSingleStep(Self, value : Int) -> Unit raise NullptrError = _
  setSliderDown(Self, value : Bool) -> Unit raise NullptrError = _
  setSliderPosition(Self, position : Int) -> Unit raise NullptrError = _
  setTracking(Self, enable : Bool) -> Unit raise NullptrError = _
  setValue(Self, value : Int) -> Unit raise NullptrError = _
  singleStep(Self) -> Int raise NullptrError = _
  sliderPosition(Self) -> Int raise NullptrError = _
  value(Self) -> Int raise NullptrError = _
  actionTriggered(Self) -> Signal[Int] raise NullptrError = _
  sliderMoved(Self) -> Signal[Int] raise NullptrError = _
  sliderPressed(Self) -> Signal[Unit] raise NullptrError = _
  sliderReleased(Self) -> Signal[Unit] raise NullptrError = _
  valueChanged(Self) -> Signal[Int] raise NullptrError = _
}

///|
impl AsAbstractSlider with actionTriggered(self) {
  ensure_not_nullptr(self)
  _QAbstractSlider_actionTriggered(self.as_abstract_slider())
}

///|
impl AsAbstractSlider with hasTracking(self) {
  ensure_not_nullptr(self)
  _QAbstractSlider_hasTracking(self.as_abstract_slider())
}

///|
impl AsAbstractSlider with invertedAppearance(self) {
  ensure_not_nullptr(self)
  _QAbstractSlider_invertedAppearance(self.as_abstract_slider())
}

///|
impl AsAbstractSlider with invertedControls(self) {
  ensure_not_nullptr(self)
  _QAbstractSlider_invertedControls(self.as_abstract_slider())
}

///|
impl AsAbstractSlider with isSliderDown(self) {
  ensure_not_nullptr(self)
  _QAbstractSlider_isSliderDown(self.as_abstract_slider())
}

///|
impl AsAbstractSlider with maximum(self) {
  ensure_not_nullptr(self)
  _QAbstractSlider_maximum(self.as_abstract_slider())
}

///|
impl AsAbstractSlider with minimum(self) {
  ensure_not_nullptr(self)
  _QAbstractSlider_minimum(self.as_abstract_slider())
}

///|
impl AsAbstractSlider with orientation(self) {
  ensure_not_nullptr(self)
  _QAbstractSlider_orientation(self.as_abstract_slider())
}

///|
impl AsAbstractSlider with pageStep(self) {
  ensure_not_nullptr(self)
  _QAbstractSlider_pageStep(self.as_abstract_slider())
}

///|
impl AsAbstractSlider with setInvertedAppearance(self, value) {
  ensure_not_nullptr(self)
  _QAbstractSlider_setInvertedAppearance(self.as_abstract_slider(), value)
}

///|
impl AsAbstractSlider with setInvertedControls(self, value) {
  ensure_not_nullptr(self)
  _QAbstractSlider_setInvertedControls(self.as_abstract_slider(), value)
}

///|
impl AsAbstractSlider with setMaximum(self, maximum) {
  ensure_not_nullptr(self)
  _QAbstractSlider_setMaximum(self.as_abstract_slider(), maximum)
}

///|
impl AsAbstractSlider with setMinimum(self, minimum) {
  ensure_not_nullptr(self)
  _QAbstractSlider_setMinimum(self.as_abstract_slider(), minimum)
}

///|
impl AsAbstractSlider with setOrientation(self, orientation) {
  ensure_not_nullptr(self)
  _QAbstractSlider_setOrientation(self.as_abstract_slider(), orientation)
}

///|
impl AsAbstractSlider with setPageStep(self, step) {
  ensure_not_nullptr(self)
  _QAbstractSlider_setPageStep(self.as_abstract_slider(), step)
}

///|
impl AsAbstractSlider with setRange(self, minimum, maximum) {
  ensure_not_nullptr(self)
  _QAbstractSlider_setRange(self.as_abstract_slider(), minimum, maximum)
}

///|
impl AsAbstractSlider with setSingleStep(self, value) {
  ensure_not_nullptr(self)
  _QAbstractSlider_setSingleStep(self.as_abstract_slider(), value)
}

///|
impl AsAbstractSlider with setSliderDown(self, value) {
  ensure_not_nullptr(self)
  _QAbstractSlider_setSliderDown(self.as_abstract_slider(), value)
}

///|
impl AsAbstractSlider with setSliderPosition(self, position) {
  ensure_not_nullptr(self)
  _QAbstractSlider_setSliderPosition(self.as_abstract_slider(), position)
}

///|
impl AsAbstractSlider with setTracking(self, enable) {
  ensure_not_nullptr(self)
  _QAbstractSlider_setTracking(self.as_abstract_slider(), enable)
}

///|
impl AsAbstractSlider with setValue(self, value) {
  ensure_not_nullptr(self)
  _QAbstractSlider_setValue(self.as_abstract_slider(), value)
}

///|
impl AsAbstractSlider with singleStep(self) {
  ensure_not_nullptr(self)
  _QAbstractSlider_singleStep(self.as_abstract_slider())
}

///|
impl AsAbstractSlider with sliderMoved(self) {
  ensure_not_nullptr(self)
  _QAbstractSlider_sliderMoved(self.as_abstract_slider())
}

///|
impl AsAbstractSlider with sliderPosition(self) {
  ensure_not_nullptr(self)
  _QAbstractSlider_sliderPosition(self.as_abstract_slider())
}

///|
impl AsAbstractSlider with sliderPressed(self) {
  ensure_not_nullptr(self)
  _QAbstractSlider_sliderPressed(self.as_abstract_slider())
}

///|
impl AsAbstractSlider with sliderReleased(self) {
  ensure_not_nullptr(self)
  _QAbstractSlider_sliderReleased(self.as_abstract_slider())
}

///|
impl AsAbstractSlider with value(self) {
  ensure_not_nullptr(self)
  _QAbstractSlider_value(self.as_abstract_slider())
}

///|
impl AsAbstractSlider with valueChanged(self) {
  ensure_not_nullptr(self)
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
