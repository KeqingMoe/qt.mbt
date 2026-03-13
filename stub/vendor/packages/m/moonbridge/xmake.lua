package("moonbridge")
    set_kind("library", {headeronly = true})
    set_homepage("https://github.com/KeqingMoe/moonbridge")
    set_description("MoonBit C++ Interop")

    add_urls("https://github.com/KeqingMoe/moonbridge.git")

    on_install(function (package)
        os.cp("include/moonbridge.hpp", package:installdir("include"))
    end)

    on_fetch(function (package)
        return {
            includedirs = {
                package:installdir("include"),
                "~/.moon/include",
            }
        }
    end)

    on_test(function (package)
        assert(package:check_cxxsnippets({
            test = [[
                #include <moonbridge.hpp>
            ]]
        }, {configs = {languages = "c++23"}}))
    end)
