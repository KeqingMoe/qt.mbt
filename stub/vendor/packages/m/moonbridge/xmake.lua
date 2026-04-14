package("moonbridge")
    set_kind("library", {headeronly = true})
    set_homepage("https://github.com/KeqingMoe/moonbridge")
    set_description("MoonBit C++ Interop")

    add_urls("https://github.com/KeqingMoe/moonbridge/archive/refs/tags/v$(version).tar.gz")
    add_versions("0.1.0", "eb49a88d735f9647500150dfd980a106875c50ca5d4dfe9763d8755afca749aa")

    on_install(function (package)
        os.cp("include/moonbridge.hpp", package:installdir("include"))
    end)

    on_fetch(function (package)
        return {
            version = package:version_str(),
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
