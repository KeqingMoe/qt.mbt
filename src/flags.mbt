///|
struct QFlag(UInt64)

///|
pub trait Flag {
  from_bits(UInt64) -> Self
  to_bits(Self) -> UInt64
  to_flag(Self) -> QFlag = _
}

///|
impl Flag with to_flag(self) {
  QFlag(self.to_bits())
}

///|
fn[F : Flag] QFlag::to_flag(bits : Self) -> F {
  F::from_bits(bits.0)
}

///|
pub(all) enum AlignH {
  Default
  Leading
  Trailing
  Center
  Justify
  Left
  Right
}

///|
pub(all) enum AlignV {
  Default
  Top
  Bottom
  Center
  Baseline
}

///|
pub(all) struct Alignment(AlignH, AlignV)

///|
pub impl Default for Alignment with default() {
  Alignment(Default, Default)
}

///|
pub fn Alignment::h(h : AlignH) -> Self {
  Alignment(h, Default)
}

///|
pub fn Alignment::v(v : AlignV) -> Self {
  Alignment(Default, v)
}

///|
pub fn Alignment::center() -> Self {
  Alignment(Center, Center)
}

///|
impl Flag for Alignment with from_bits(bits) {
  let h = match bits & 0b11111 {
    0 => AlignH::Default
    0b1 => AlignH::Leading
    0b10 => AlignH::Trailing
    0b100 => AlignH::Center
    0b1000 => AlignH::Justify
    0b10001 => AlignH::Left
    0b10010 => AlignH::Right
    _ => panic()
  }
  let v = match bits & 0b111100000 {
    0 => AlignV::Default
    0b100000 => AlignV::Top
    0b1000000 => AlignV::Bottom
    0b10000000 => AlignV::Center
    0b100000000 => AlignV::Baseline
    _ => panic()
  }
  Alignment(h, v)
}

///|
impl Flag for Alignment with to_bits(self) {
  let h : UInt64 = match self.0 {
    Default => 0
    Leading => 0b1
    Trailing => 0b10
    Center => 0b100
    Justify => 0b1000
    Left => 0b10001
    Right => 0b10010
  }
  let v : UInt64 = match self.1 {
    Default => 0
    Top => 0b100000
    Bottom => 0b1000000
    Center => 0b10000000
    Baseline => 0b100000000
  }
  h | v
}

///|
pub(all) struct InputMethodHints {
  hiddenText : Bool
  sensitiveData : Bool
  noAutoUppercase : Bool
  preferNumbers : Bool
  preferUppercase : Bool
  preferLowercase : Bool
  noPredictiveText : Bool
  date : Bool
  time : Bool
  preferLatin : Bool
  multiLine : Bool
  noEditMenu : Bool
  noTextHandles : Bool
  digitsOnly : Bool
  formattedNumbersOnly : Bool
  uppercaseOnly : Bool
  lowercaseOnly : Bool
  dialableCharactersOnly : Bool
  emailCharactersOnly : Bool
  urlCharactersOnly : Bool
  latinOnly : Bool
}

///|
pub fn InputMethodHints::new(
  hiddenText? : Bool = false,
  sensitiveData? : Bool = false,
  noAutoUppercase? : Bool = false,
  preferNumbers? : Bool = false,
  preferUppercase? : Bool = false,
  preferLowercase? : Bool = false,
  noPredictiveText? : Bool = false,
  date? : Bool = false,
  time? : Bool = false,
  preferLatin? : Bool = false,
  multiLine? : Bool = false,
  noEditMenu? : Bool = false,
  noTextHandles? : Bool = false,
  digitsOnly? : Bool = false,
  formattedNumbersOnly? : Bool = false,
  uppercaseOnly? : Bool = false,
  lowercaseOnly? : Bool = false,
  dialableCharactersOnly? : Bool = false,
  emailCharactersOnly? : Bool = false,
  urlCharactersOnly? : Bool = false,
  latinOnly? : Bool = false,
) -> Self {
  {
    hiddenText,
    sensitiveData,
    noAutoUppercase,
    preferNumbers,
    preferUppercase,
    preferLowercase,
    noPredictiveText,
    date,
    time,
    preferLatin,
    multiLine,
    noEditMenu,
    noTextHandles,
    digitsOnly,
    formattedNumbersOnly,
    uppercaseOnly,
    lowercaseOnly,
    dialableCharactersOnly,
    emailCharactersOnly,
    urlCharactersOnly,
    latinOnly,
  }
}

///|
impl Flag for InputMethodHints with to_bits(self) {
  let mut bits : UInt64 = 0
  if self.hiddenText {
    bits = bits | 0x1
  }
  if self.sensitiveData {
    bits = bits | 0x2
  }
  if self.noAutoUppercase {
    bits = bits | 0x4
  }
  if self.preferNumbers {
    bits = bits | 0x8
  }
  if self.preferUppercase {
    bits = bits | 0x10
  }
  if self.preferLowercase {
    bits = bits | 0x20
  }
  if self.noPredictiveText {
    bits = bits | 0x40
  }
  if self.date {
    bits = bits | 0x80
  }
  if self.time {
    bits = bits | 0x100
  }
  if self.preferLatin {
    bits = bits | 0x200
  }
  if self.multiLine {
    bits = bits | 0x400
  }
  if self.noEditMenu {
    bits = bits | 0x800
  }
  if self.noTextHandles {
    bits = bits | 0x1000
  }
  if self.digitsOnly {
    bits = bits | 0x10000
  }
  if self.formattedNumbersOnly {
    bits = bits | 0x20000
  }
  if self.uppercaseOnly {
    bits = bits | 0x40000
  }
  if self.lowercaseOnly {
    bits = bits | 0x80000
  }
  if self.dialableCharactersOnly {
    bits = bits | 0x100000
  }
  if self.emailCharactersOnly {
    bits = bits | 0x200000
  }
  if self.urlCharactersOnly {
    bits = bits | 0x400000
  }
  if self.latinOnly {
    bits = bits | 0x800000
  }
  bits
}

///|
impl Flag for InputMethodHints with from_bits(bits) {
  {
    hiddenText: (bits & 0x1) != 0,
    sensitiveData: (bits & 0x2) != 0,
    noAutoUppercase: (bits & 0x4) != 0,
    preferNumbers: (bits & 0x8) != 0,
    preferUppercase: (bits & 0x10) != 0,
    preferLowercase: (bits & 0x20) != 0,
    noPredictiveText: (bits & 0x40) != 0,
    date: (bits & 0x80) != 0,
    time: (bits & 0x100) != 0,
    preferLatin: (bits & 0x200) != 0,
    multiLine: (bits & 0x400) != 0,
    noEditMenu: (bits & 0x800) != 0,
    noTextHandles: (bits & 0x1000) != 0,
    digitsOnly: (bits & 0x10000) != 0,
    formattedNumbersOnly: (bits & 0x20000) != 0,
    uppercaseOnly: (bits & 0x40000) != 0,
    lowercaseOnly: (bits & 0x80000) != 0,
    dialableCharactersOnly: (bits & 0x100000) != 0,
    emailCharactersOnly: (bits & 0x200000) != 0,
    urlCharactersOnly: (bits & 0x400000) != 0,
    latinOnly: (bits & 0x800000) != 0,
  }
}
