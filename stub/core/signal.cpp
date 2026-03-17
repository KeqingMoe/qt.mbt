#include <signal.hpp>

auto Connection_is_valid(Connection connection) -> mbt::Bool
{
    auto flag = static_cast<bool>(*connection);
    return mbt::Bool::make(flag);
}
