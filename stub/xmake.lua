add_rules("mode.debug", "mode.release")
add_rules("plugin.compile_commands.autoupdate", {outputdir = "."})

target("qt_mbt_stub")
    set_languages("c++23")
    add_rules("qt.static")
    add_sysincludedirs("~/.moon/include")
    add_includedirs("include")
    add_files("**/*.cpp")
    add_frameworks("QtGui", "QtWidgets")
    
    after_build(function (target)
        print("XMAKE_TARGETDIR=%s", path.absolute(target:targetdir()))
    end)
    
    on_load(function (target)
        local incdir = path.join(target:autogendir(), "include")
        target:add("includedirs", incdir)
    end)

    before_build(function (target)
        import("net.http")

        local incdir = path.join(target:autogendir(), "include")
        local hdr = path.join(incdir, "moonbridge.hpp")
        local url = "https://raw.githubusercontent.com/KeqingMoe/moonbridge/refs/heads/main/include/moonbridge.hpp"

        os.mkdir(incdir)

        http.download(url, hdr)
    end)
