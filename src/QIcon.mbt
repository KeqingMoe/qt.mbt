///|
pub type QIcon

///|
extern "C" fn _QIcon_new() -> QIcon = "QIcon_new"

///|
#borrow(icon)
extern "C" fn _QIcon_fromTheme(icon : ThemeIcon) -> QIcon = "QIcon_fromTheme"

///|
#borrow(icon, fallback)
extern "C" fn _QIcon_fromThemeWithFallback(
  icon : ThemeIcon,
  fallback : QIcon,
) -> QIcon = "QIcon_fromThemeWithFallback"

///|
#borrow(icon)
extern "C" fn _QIcon_hasThemeIcon(icon : ThemeIcon) -> Bool = "QIcon_hasThemeIcon"

///|
#borrow(this)
extern "C" fn _QIcon_isNull(this : QIcon) -> Bool = "QIcon_isNull"

///|
pub fn QIcon::new() -> Self {
  _QIcon_new()
}

///|
pub fn QIcon::fromTheme(icon : ThemeIcon) -> Self {
  _QIcon_fromTheme(icon)
}

///|
pub fn QIcon::fromThemeWithFallback(icon : ThemeIcon, fallback : Self) -> Self {
  _QIcon_fromThemeWithFallback(icon, fallback)
}

///|
pub fn QIcon::hasThemeIcon(icon : ThemeIcon) -> Bool {
  _QIcon_hasThemeIcon(icon)
}

///|
pub fn QIcon::isNull(self : Self) -> Bool {
  _QIcon_isNull(self)
}
