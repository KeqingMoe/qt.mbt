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
