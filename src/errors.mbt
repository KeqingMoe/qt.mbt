///|
pub(all) suberror NullptrError

///|
fn ensure_not_nullptr(this : &AsObject) -> Unit raise NullptrError {
  if this.is_null() {
    raise NullptrError
  }
}
