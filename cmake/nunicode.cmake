macro(mbgl_nunicode_core)
    target_sources(mbgl-core
        PRIVATE src/nunicode/casemap.h
        PRIVATE src/nunicode/casemap_internal.h
        PRIVATE src/nunicode/config.h
        PRIVATE src/nunicode/defines.h
        PRIVATE src/nunicode/ducet.c
        PRIVATE src/nunicode/ducet.h
        PRIVATE src/nunicode/libnu.h
        PRIVATE src/nunicode/mph.h
        PRIVATE src/nunicode/strcoll.c
        PRIVATE src/nunicode/strcoll.h
        PRIVATE src/nunicode/strcoll_internal.h
        PRIVATE src/nunicode/strings.c
        PRIVATE src/nunicode/strings.h
        PRIVATE src/nunicode/tofold.c
        PRIVATE src/nunicode/tolower.c
        PRIVATE src/nunicode/tounaccent.c
        PRIVATE src/nunicode/toupper.c
        PRIVATE src/nunicode/udb.h
        PRIVATE src/nunicode/unaccent.h
        PRIVATE src/nunicode/utf8.c
        PRIVATE src/nunicode/utf8.h
        PRIVATE src/nunicode/utf8_internal.h
    )

    target_include_directories(mbgl-core
        PRIVATE nunicode
    )

    target_compile_definitions(mbgl-core
        PRIVATE "-DNU_WITH_UTF8"
        PRIVATE "-DNU_WITH_Z_COLLATION"
        PRIVATE "-DNU_WITH_CASEMAP"
        PRIVATE "-DNU_WITH_UNACCENT"
    )
endmacro()
