add_rules("mode.debug", "mode.release")
add_rules("plugin.compile_commands.autoupdate", {outputdir = "."})

add_repositories("local-repo vendor")
add_requires("moonbridge")

target("qt_mbt_stub")
    set_languages("c++23")
    add_rules("qt.static")
    add_packages("moonbridge")
    add_includedirs("include")
    add_files("src/*.cpp")
    add_frameworks("QtGui", "QtWidgets")
