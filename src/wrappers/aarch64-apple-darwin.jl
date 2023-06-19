# Autogenerated wrapper script for libinchi_jll for aarch64-apple-darwin
export libinchi

JLLWrappers.@generate_wrapper_header("libinchi")
JLLWrappers.@declare_library_product(libinchi, "@rpath/libinchi.1.dylib")
function __init__()
    JLLWrappers.@generate_init_header()
    JLLWrappers.@init_library_product(
        libinchi,
        "lib/libinchi.1.06.dylib",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
